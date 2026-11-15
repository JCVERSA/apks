package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

public final class go {
    private final String a;
    private final Map<String, String> b;

    public go(String str, Map<String, String> map) {
        String lowerCase;
        y45.j(str, "scheme");
        y45.j(map, "authParams");
        this.a = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key != null) {
                Locale locale = Locale.US;
                y45.i(locale, "US");
                lowerCase = key.toLowerCase(locale);
                y45.i(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            linkedHashMap.put(lowerCase, value);
        }
        Map<String, String> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        y45.i(mapUnmodifiableMap, "unmodifiableMap(...)");
        this.b = mapUnmodifiableMap;
    }

    public final Charset a() {
        String str = this.b.get("charset");
        if (str != null) {
            try {
                Charset charsetForName = Charset.forName(str);
                y45.i(charsetForName, "forName(...)");
                return charsetForName;
            } catch (Exception unused) {
            }
        }
        Charset charset = StandardCharsets.ISO_8859_1;
        y45.i(charset, "ISO_8859_1");
        return charset;
    }

    public final String b() {
        return this.b.get("realm");
    }

    public final String c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof go) {
            go goVar = (go) obj;
            if (y45.e(goVar.a, this.a) && y45.e(goVar.b, this.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + v3.a(this.a, 899, 31);
    }

    public final String toString() {
        return this.a + " authParams=" + this.b;
    }
}
