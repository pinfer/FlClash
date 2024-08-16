import 'package:fl_clash/widgets/widgets.dart';
import 'package:flutter/material.dart';

class VPNSwitch extends StatelessWidget {
  const VPNSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      onPressed: () {},
      child: Container(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            InfoHeader(
              info: const Info(
                label: "VPN",
                iconData: Icons.stacked_line_chart,
              ),
              actions: [Switch(value: true, onChanged: (_) {})],
            ),
            // if (Platform.isAndroid)
            //   InfoHeader2(
            //     info: const Info(
            //       label: "VPN",
            //       iconData: Icons.stacked_line_chart,
            //     ),
            //     actions: [Switch(value: true, onChanged: (_) {})],
            //   ),
            // if (system.isDesktop) ...[
            //   InfoHeader2(
            //     info: const Info(
            //       label: "TUN",
            //       iconData: Icons.stacked_line_chart,
            //     ),
            //     actions: [Switch(value: true, onChanged: (_) {})],
            //   ),
            //   const SizedBox(
            //     height: 16,
            //   ),
            //   InfoHeader2(
            //     info: const Info(
            //       label: "PROXY",
            //       iconData: Icons.shuffle,
            //     ),
            //     actions: [Switch(value: true, onChanged: (_) {})],
            //   ),
            // ]
          ],
        ),
      ),
    );
  }
}

class TUNSwitch extends StatelessWidget {
  const TUNSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      onPressed: () {},
      child: Container(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            InfoHeader(
              info: const Info(
                label: "TUN",
                iconData: Icons.stacked_line_chart,
              ),
              actions: [
                Switch(
                  value: true,
                  onChanged: (_) {},
                )
              ],
            ),
          ],
        ),
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
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            InfoHeader(
              info: const Info(
                label: "PROXY",
                iconData: Icons.shuffle,
              ),
              actions: [
                Switch(
                  value: true,
                  onChanged: (_) {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
