import 'package:country_pickers/country.dart';
import 'package:flutter/cupertino.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:webinerd/constants.dart';

Widget custCountrycodePicker({String extension}) {
  return ClayContainer(
    color: primarycolour,
    emboss: true,
    depth: 10,
    borderRadius: 20,
    child: Padding(
      padding: const EdgeInsets.only(left: 8),
      child: CountryPickerDropdown(
        itemBuilder: _buildDropdownItem,
        dropdownColor: primarycolour,
        initialValue: 'IN',
        onValuePicked: (Country value) {
          extension = value.phoneCode;
        },
      ),
    ),
  );
}

Widget _buildDropdownItem(Country country) => SizedBox(
      width: 50,
      child: Text(
        '+${country.phoneCode}',
        style: TextStyle(color: Colors.white),
      ),
    );
