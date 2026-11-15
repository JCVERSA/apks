package defpackage;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class sie {
    public final String a;
    public final int b;
    public final String c;
    public final Set d;

    public sie(String str, int i, String str2, Set set) {
        this.b = i;
        this.a = str;
        this.c = str2;
        this.d = set;
    }

    public static sie a(String str, int i) {
        String str2;
        String strTrim = str.trim();
        n7g.d(!strTrim.isEmpty());
        int iIndexOf = strTrim.indexOf(" ");
        if (iIndexOf == -1) {
            str2 = "";
        } else {
            String strTrim2 = strTrim.substring(iIndexOf).trim();
            strTrim = strTrim.substring(0, iIndexOf);
            str2 = strTrim2;
        }
        int i2 = kfh.a;
        String[] strArrSplit = strTrim.split("\\.", -1);
        String str3 = strArrSplit[0];
        HashSet hashSet = new HashSet();
        for (int i3 = 1; i3 < strArrSplit.length; i3++) {
            hashSet.add(strArrSplit[i3]);
        }
        return new sie(str3, i, str2, hashSet);
    }

    public static sie b() {
        return new sie("", 0, "", Collections.emptySet());
    }
}
