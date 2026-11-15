package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.abb;
import defpackage.g1a;
import defpackage.hz9;
import defpackage.j1a;
import defpackage.qe5;
import defpackage.xh8;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Pair;
import org.mozilla.javascript.ES6Iterator;

public final class qf0 implements Iterable<Pair<? extends String, ? extends String>>, qe5 {
    private final String[] b;

    public static final class b {
        private b() {
        }

        public static void b(String str) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if ('!' > cCharAt || cCharAt >= 127) {
                    throw new IllegalArgumentException(g92.a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str).toString());
                }
            }
        }

        public b(int i) {
            this();
        }

        public static qf0 a(Map map) {
            y45.j(map, "<this>");
            String[] strArr = new String[map.size() * 2];
            int i = 0;
            int i2 = 0;
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                String string = j1a.i1(str).toString();
                String string2 = j1a.i1(str2).toString();
                b(string);
                b(string2, string);
                strArr[i2] = string;
                strArr[i2 + 1] = string2;
                i2 += 2;
            }
            return new qf0(strArr, i);
        }

        public static void b(String str, String str2) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt != '\t' && (' ' > cCharAt || cCharAt >= 127)) {
                    throw new IllegalArgumentException((g92.a("Unexpected char %#04x at %d in %s value", Integer.valueOf(cCharAt), Integer.valueOf(i), str2) + (g92.c(str2) ? "" : ": " + str)).toString());
                }
            }
        }

        public static qf0 a(String... strArr) {
            y45.j(strArr, "namesAndValues");
            if (strArr.length % 2 == 0) {
                String[] strArr2 = (String[]) strArr.clone();
                int length = strArr2.length;
                int i = 0;
                for (int i2 = 0; i2 < length; i2++) {
                    String str = strArr2[i2];
                    if (str != null) {
                        strArr2[i2] = j1a.i1(str).toString();
                    } else {
                        throw new IllegalArgumentException("Headers cannot be null");
                    }
                }
                int iC = xh8.c(0, strArr2.length - 1, 2);
                if (iC >= 0) {
                    int i3 = 0;
                    while (true) {
                        String str2 = strArr2[i3];
                        String str3 = strArr2[i3 + 1];
                        b(str2);
                        b(str3, str2);
                        if (i3 == iC) {
                            break;
                        }
                        i3 += 2;
                    }
                }
                return new qf0(strArr2, i);
            }
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
    }

    private qf0(String[] strArr) {
        this.b = strArr;
    }

    public final String a(String str) {
        y45.j(str, "name");
        String[] strArr = this.b;
        int length = strArr.length - 2;
        int iC = xh8.c(length, 0, -2);
        if (iC <= length) {
            while (!g1a.E(str, strArr[length], true)) {
                if (length != iC) {
                    length -= 2;
                }
            }
            return strArr[length + 1];
        }
        return null;
    }

    public final String b(int i) {
        return this.b[(i * 2) + 1];
    }

    public final TreeMap c() {
        TreeMap treeMap = new TreeMap(g1a.G(hz9.a));
        int length = this.b.length / 2;
        for (int i = 0; i < length; i++) {
            String str = this.b[i * 2];
            Locale locale = Locale.US;
            y45.i(locale, "US");
            String lowerCase = str.toLowerCase(locale);
            y45.i(lowerCase, "toLowerCase(...)");
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(b(i));
        }
        return treeMap;
    }

    public final List d() {
        y45.j(HttpHeaders.HEAD_KEY_SET_COOKIE, "name");
        int length = this.b.length / 2;
        ArrayList arrayList = null;
        for (int i = 0; i < length; i++) {
            if (g1a.E(HttpHeaders.HEAD_KEY_SET_COOKIE, this.b[i * 2], true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(b(i));
            }
        }
        if (arrayList == null) {
            return defpackage.y71.k();
        }
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        y45.g(listUnmodifiableList);
        return listUnmodifiableList;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof qf0) && Arrays.equals(this.b, ((qf0) obj).b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b);
    }

    @Override
    public final Iterator<Pair<? extends String, ? extends String>> iterator() {
        int length = this.b.length / 2;
        Pair[] pairArr = new Pair[length];
        for (int i = 0; i < length; i++) {
            pairArr[i] = abb.a(this.b[i * 2], b(i));
        }
        return defpackage.xg.a(pairArr);
    }

    public final int size() {
        return this.b.length / 2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int length = this.b.length / 2;
        for (int i = 0; i < length; i++) {
            String str = this.b[i * 2];
            String strB = b(i);
            sb.append(str);
            sb.append(": ");
            if (g92.c(str)) {
                strB = "██";
            }
            sb.append(strB);
            sb.append("\n");
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    public final a b() {
        a aVar = new a();
        defpackage.d81.D(aVar.b(), this.b);
        return aVar;
    }

    public static final class a {
        private final ArrayList a = new ArrayList(20);

        public final void a(String str, String str2) {
            y45.j(str, "name");
            y45.j(str2, ES6Iterator.VALUE_PROPERTY);
            this.a.add(str);
            this.a.add(j1a.i1(str2).toString());
        }

        public final ArrayList b() {
            return this.a;
        }

        public final a a(String str) {
            y45.j(str, "name");
            int i = 0;
            while (i < this.a.size()) {
                if (g1a.E(str, (String) this.a.get(i), true)) {
                    this.a.remove(i);
                    this.a.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }

        public final qf0 a() {
            return new qf0((String[]) this.a.toArray(new String[0]), 0);
        }
    }

    public qf0(String[] strArr, int i) {
        this(strArr);
    }

    public final String a(int i) {
        return this.b[i * 2];
    }
}
