Tinytest.add 'Disabled tap-i18n Tests - TAPi18n is not defined in global namespace', (test) ->
  test.isTrue typeof TAPi18n == "undefined"

t = Package["tap:i18n"].TAPi18n
Tinytest.add 'Disabled tap-i18n Tests - TAPi18n._enabled() returns false', (test) ->
  test.isFalse t._enabled()

Tinytest.add 'Disabled tap-i18n Tests - TAPi18n.conf is null', (test) ->
  test.isNull t.conf

Tinytest.add 'Disabled tap-i18n Tests - TAPi18n._loaded_languages contains only the fallback_language', (test) ->
  test.equal t._loaded_languages, [t._fallback_language]

Tinytest.add 'Disabled tap-i18n Tests - TAPi18n.languages_available_for_project is empty', (test) ->
  test.isTrue _.isEmpty t.languages_available_for_project

Tinytest.add 'Disabled tap-i18n Tests - TAPi18n._getProjectLanguages returns only the fallback_language', (test) ->
  test.equal t._getProjectLanguages(), [t._fallback_language]

Tinytest.add 'Disabled tap-i18n Tests - TAPi18n.getLanguages() returns null', (test) ->
  test.isNull t.getLanguages()