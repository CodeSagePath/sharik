import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sharik/components/buttons.dart';
import 'package:sharik/logic/services/ip_service.dart';
import 'package:sharik/utils/helper.dart';

class PickNetworkDialog extends StatelessWidget {
  final LocalIpService ipService;

  const PickNetworkDialog(this.ipService);

  @override
  Widget build(BuildContext context) {
// todo show selected one
    return AlertDialog(
      elevation: 0,
      insetPadding: const EdgeInsets.all(24),
      scrollable: true,
      title: Text(
        'Preferred network interface',
        style: GoogleFonts.getFont(context.l.fontComfortaa,
            fontWeight: FontWeight.w700),
      ),
      // todo probably redundant
      content: SizedBox(
        // height: double.maxFinite,
        width: double.maxFinite,
        // todo use listview instead
        child: Column(
          // shrinkWrap: true,
          children: [
            Theme(
              data: ThemeData(
                  brightness: Brightness.dark,
                  accentColor: context.t.textTheme.bodyText1!.color),
              child: SizedBox(
                height: ipService.interfaces!.length * 72,
                child: ListView.builder(
                    itemCount: ipService.interfaces!.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, e) => ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: ListTile(
                            selected: ipService.getIp() ==
                                ipService
                                    .interfaces![e].addresses.first.address,
                            selectedTileColor:
                                context.t.dividerColor.withOpacity(0.08),

                            // todo text styling
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            // todo style colors
                            title: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(ipService.interfaces![e].name)),
                            subtitle: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                ipService
                                    .interfaces![e].addresses.first.address,
                              ),
                            ),
                            onTap: () {
                              ipService.selectedInterface =
                                  ipService.interfaces![e].name;
                              // ipService.load();
                              Navigator.of(context).pop();
                            },
                          ),
                        )),
              ),
            ),
          ],
        ),
      ),
      actions: [
        DialogTextButton(context.l.generalClose, () {
          Navigator.of(context).pop();
        }),
      ],
    );
  }
}