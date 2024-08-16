import 'dart:io';

import 'package:fl_clash/common/common.dart';
import 'package:fl_clash/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InfoHeader2 extends StatelessWidget {
  final Info info;
  final List<Widget> actions;

  const InfoHeader2({
    super.key,
    required this.info,
    List<Widget>? actions,
  }) : actions = actions ?? const [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (info.iconData != null) ...[
                  Icon(
                    info.iconData,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
                Flexible(
                  child: TooltipText(
                    text: Text(
                      info.label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ...actions,
            ],
          ),
        ],
      ),
    );
  }
}

class ProxySwitch extends StatelessWidget {
  const ProxySwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            if (Platform.isAndroid)
              InfoHeader2(
                info: const Info(
                  label: "VPN",
                  iconData: Icons.stacked_line_chart,
                ),
                actions: [Switch(value: true, onChanged: (_) {})],
              ),
            if (system.isDesktop) ...[
              InfoHeader2(
                info: const Info(
                  label: "TUN",
                  iconData: Icons.stacked_line_chart,
                ),
                actions: [Switch(value: true, onChanged: (_) {})],
              ),
              const SizedBox(
                height: 16,
              ),
              InfoHeader2(
                info: const Info(
                  label: "PROXY",
                  iconData: Icons.shuffle,
                ),
                actions: [Switch(value: true, onChanged: (_) {})],
              ),
            ]
          ],
        ),
      ),
    );
  }
}
