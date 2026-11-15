package androidx.core.os;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

public final class i {

    private static final i f7855b = a(new Locale[0]);

    private final k f7856a;

    static class a {

        private static final Locale[] f7857a = {new Locale("en", "XA"), new Locale("ar", "XB")};

        static Locale a(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    static class b {
        static LocaleList a(Locale... localeArr) {
            return new LocaleList(localeArr);
        }
    }

    private i(k kVar) {
        this.f7856a = kVar;
    }

    public static i a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? j(b.a(localeArr)) : new i(new j(localeArr));
    }

    static Locale b(String str) {
        if (str.contains("-")) {
            String[] strArrSplit = str.split("-", -1);
            if (strArrSplit.length > 2) {
                return new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
            }
            if (strArrSplit.length > 1) {
                return new Locale(strArrSplit[0], strArrSplit[1]);
            }
            if (strArrSplit.length == 1) {
                return new Locale(strArrSplit[0]);
            }
        } else {
            if (!str.contains("_")) {
                return new Locale(str);
            }
            String[] strArrSplit2 = str.split("_", -1);
            if (strArrSplit2.length > 2) {
                return new Locale(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2]);
            }
            if (strArrSplit2.length > 1) {
                return new Locale(strArrSplit2[0], strArrSplit2[1]);
            }
            if (strArrSplit2.length == 1) {
                return new Locale(strArrSplit2[0]);
            }
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    public static i c(String str) {
        if (str == null || str.isEmpty()) {
            return e();
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i10 = 0; i10 < length; i10++) {
            localeArr[i10] = a.a(strArrSplit[i10]);
        }
        return a(localeArr);
    }

    public static i e() {
        return f7855b;
    }

    public static i j(LocaleList localeList) {
        return new i(new p(localeList));
    }

    public Locale d(int i10) {
        return this.f7856a.get(i10);
    }

    public boolean equals(Object obj) {
        return (obj instanceof i) && this.f7856a.equals(((i) obj).f7856a);
    }

    public boolean f() {
        return this.f7856a.isEmpty();
    }

    public int g() {
        return this.f7856a.size();
    }

    public String h() {
        return this.f7856a.a();
    }

    public int hashCode() {
        return this.f7856a.hashCode();
    }

    public Object i() {
        return this.f7856a.b();
    }

    public String toString() {
        return this.f7856a.toString();
    }
}
