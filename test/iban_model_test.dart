import 'package:test/test.dart';

import 'package:iban_form_field/iban_form_field.dart';

void main() {
  test('electronicFormat', () {
		var iban = Iban('NL')
  		..checkDigits = '80'
  		..basicBankAccountNumber = 'INGB 7569 0064 53';

		expect(iban.electronicFormat, 'NL80INGB7569006453');
  });

  test('toPrintFormat', () {
		var iban = Iban('NL')
  		..checkDigits = '80'
  		..basicBankAccountNumber = 'INGB7569006453';

		expect(iban.toPrintFormat, 'NL80 INGB 7569 0064 53');
  });

  test('hintText without a countryCode', () {
    var iban = Iban('');

    expect(iban.hintText, '0076 2011 6238 5295 7');
  });
}
