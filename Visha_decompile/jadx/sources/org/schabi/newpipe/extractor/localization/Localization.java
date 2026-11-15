package org.schabi.newpipe.extractor.localization;

import defpackage.un5;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.Localization;

public class Localization implements Serializable {
    public static final Localization DEFAULT = new Localization("en", "GB");
    private final String countryCode;
    private final String languageCode;

    public Localization(String str, String str2) {
        this.languageCode = str;
        this.countryCode = str2;
    }

    public static Localization fromLocale(Locale locale) {
        return new Localization(locale.getLanguage(), locale.getCountry());
    }

    public static Optional<Localization> fromLocalizationCode(String str) {
        return un5.a(str).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Localization.fromLocale((Locale) obj);
            }
        });
    }

    public static Locale getLocaleFromThreeLetterCode(String str) throws ParsingException {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap map = new HashMap(iSOLanguages.length);
        for (String str2 : iSOLanguages) {
            Locale locale = new Locale(str2);
            map.put(locale.getISO3Language(), locale);
        }
        if (map.containsKey(str)) {
            return (Locale) map.get(str);
        }
        throw new ParsingException("Could not get Locale from this three letter language code" + str);
    }

    public static IllegalArgumentException lambda$listFrom$0(String str) {
        return new IllegalArgumentException("Not a localization code: " + str);
    }

    public static List<Localization> listFrom(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (final String str : strArr) {
            arrayList.add(fromLocalizationCode(str).orElseThrow(new Supplier() {
                @Override
                public final Object get() {
                    return Localization.lambda$listFrom$0(str);
                }
            }));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Localization)) {
            return false;
        }
        Localization localization = (Localization) obj;
        return this.languageCode.equals(localization.languageCode) && Objects.equals(this.countryCode, localization.countryCode);
    }

    public String getCountryCode() {
        String str = this.countryCode;
        return str == null ? "" : str;
    }

    public String getLanguageCode() {
        return this.languageCode;
    }

    public String getLocalizationCode() {
        String str;
        String str2 = this.languageCode;
        String str3 = this.countryCode;
        if (str3 == null) {
            str = "";
        } else {
            str = "-" + str3;
        }
        return str2 + str;
    }

    public int hashCode() {
        return (this.languageCode.hashCode() * 31) + Objects.hashCode(this.countryCode);
    }

    public String toString() {
        return "Localization[" + getLocalizationCode() + "]";
    }

    public Localization(String str) {
        this(str, null);
    }
}
