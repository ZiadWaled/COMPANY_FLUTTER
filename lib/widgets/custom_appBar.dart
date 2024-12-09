import 'package:company_flutter/resources/color_manager.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.image,
    this.icon,
    this.title,
    this.colorTitle,
    this.colorIcon,
  });

  final String? image;
  final IconData? icon;
  final String? title;
  final Color? colorTitle;
  final Color? colorIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.white,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: image != null
            ? Image(
                image: AssetImage(image!),
                fit: BoxFit.cover,
              )
            : const SizedBox.shrink(),
      ),
      title: Text(
        title ?? '',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: colorTitle ?? ColorManager.black,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            icon ?? Icons.more_vert,
            color: colorIcon ?? ColorManager.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
