package com.yandex.mobile.ads.impl;

import defpackage.g1a;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class cx0 {
    private static final Pattern b = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern c = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");
    public static final int d = 0;
    private final String a;

    public static final class a {
        public static cx0 a(String str) {
            y45.j(str, "<this>");
            Matcher matcher = cx0.b.matcher(str);
            if (!matcher.lookingAt()) {
                throw new IllegalArgumentException(("No subtype found for: \"" + str + "\"").toString());
            }
            String strGroup = matcher.group(1);
            y45.i(strGroup, "group(...)");
            Locale locale = Locale.US;
            y45.i(locale, "US");
            y45.i(strGroup.toLowerCase(locale), "toLowerCase(...)");
            String strGroup2 = matcher.group(2);
            y45.i(strGroup2, "group(...)");
            y45.i(locale, "US");
            y45.i(strGroup2.toLowerCase(locale), "toLowerCase(...)");
            ArrayList arrayList = new ArrayList();
            Matcher matcher2 = cx0.c.matcher(str);
            int iEnd = matcher.end();
            while (iEnd < str.length()) {
                matcher2.region(iEnd, str.length());
                if (!matcher2.lookingAt()) {
                    String strSubstring = str.substring(iEnd);
                    y45.i(strSubstring, "substring(...)");
                    throw new IllegalArgumentException(("Parameter is not formatted correctly: \"" + strSubstring + "\" for: \"" + str + "\"").toString());
                }
                String strGroup3 = matcher2.group(1);
                if (strGroup3 == null) {
                    iEnd = matcher2.end();
                } else {
                    String strGroup4 = matcher2.group(2);
                    if (strGroup4 == null) {
                        strGroup4 = matcher2.group(3);
                    } else if (g1a.R(strGroup4, "'", false, 2, null) && g1a.D(strGroup4, "'", false, 2, null) && strGroup4.length() > 2) {
                        strGroup4 = strGroup4.substring(1, strGroup4.length() - 1);
                        y45.i(strGroup4, "substring(...)");
                    }
                    arrayList.add(strGroup3);
                    arrayList.add(strGroup4);
                    iEnd = matcher2.end();
                }
            }
            return new cx0(str, (String[]) arrayList.toArray(new String[0]));
        }
    }

    private cx0(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof cx0) && y45.e(((cx0) obj).a, this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a;
    }

    public cx0(String str, String[] strArr) {
        this(str);
    }
}
