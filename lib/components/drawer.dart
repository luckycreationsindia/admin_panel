import 'package:admin_panel/providers/colors.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).drawerTheme.backgroundColor,
      ),
      child: ListView(
        padding: const EdgeInsets.all(5),
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 5, right: 30, bottom: 20, top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      color: CustomColors.drawerTextColor,
                      blurRadius: 30,
                    )
                  ],
                ),
                child: CircleAvatar(
                  child: Image.asset('assets/images/avatar.png'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Doe",
                      style: TextStyle(
                        color: CustomColors.textColor,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Anonymous",
                      style: TextStyle(
                        color: CustomColors.textColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomTile(
            leading: Icons.dashboard_outlined,
            isSelected: _selectedMenu == 0,
            title: 'Dashboard',
            onTap: () {
              setState(() => _selectedMenu = 0);
            },
          ),
          CustomTile(
            leading: Icons.message_outlined,
            isSelected: _selectedMenu == 1,
            title: 'Messages',
            trailingText: "20",
            onTap: () {
              setState(() => _selectedMenu = 1);
            },
          ),
          CustomTile(
            leading: Icons.list_outlined,
            isSelected: _selectedMenu == 3,
            title: 'Tasks',
            onTap: () {
              setState(() => _selectedMenu = 3);
            },
          ),
          CustomTile(
            leading: Icons.settings_outlined,
            isSelected: _selectedMenu == 4,
            title: 'Settings',
            onTap: () {
              setState(() => _selectedMenu = 4);
            },
          ),
        ],
      ),
    );
  }
}

class CustomTile extends StatefulWidget {
  const CustomTile(
      {Key? key,
      required this.isSelected,
      required this.leading,
      this.trailingText,
      this.trailingWidget,
      required this.title,
      required this.onTap})
      : super(key: key);
  final IconData leading;
  final String? trailingText;
  final Widget? trailingWidget;
  final String title;
  final bool isSelected;
  final Function() onTap;

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Row(
        children: [
          widget.isSelected
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CustomColors.drawerTextColor,
                    ),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: CustomColors.drawerTextColor,
                  ),
                  height: 40,
                  width: 5,
                )
              : Container(
                  height: 40,
                  width: 5,
                  color: Colors.transparent,
                ),
          Expanded(
            child: ListTile(
              leading: Icon(
                widget.leading,
                color: CustomColors.drawerTextColor,
                size: 20,
              ),
              title: Text(
                widget.title,
                style: TextStyle(
                  color: CustomColors.drawerTextColor,
                  fontSize: 15,
                ),
              ),
              trailing: widget.trailingWidget ??
                  (widget.trailingText != null
                      ? Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CustomColors.drawerTextColor,
                            ),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: CustomColors.drawerTextColor,
                          ),
                          child: Text(
                            widget.trailingText ?? "",
                            style: TextStyle(
                              color: CustomColors.drawerTrailingTextColor,
                              fontSize: 12,
                            ),
                          ),
                        )
                      : null),
              onTap: widget.onTap,
            ),
          ),
        ],
      ),
    );
  }
}
