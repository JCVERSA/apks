package androidx.core.os;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;

final class j implements k {

    private static final Locale[] f7858c = new Locale[0];

    private static final Locale f7859d = new Locale("en", "XA");

    private static final Locale f7860e = new Locale("ar", "XB");

    private static final Locale f7861f = i.b("en-Latn");

    private final Locale[] f7862a;

    private final String f7863b;

    j(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f7862a = f7858c;
            this.f7863b = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < localeArr.length; i10++) {
            Locale locale = localeArr[i10];
            if (locale == null) {
                throw new NullPointerException("list[" + i10 + "] is null");
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                c(sb2, locale2);
                if (i10 < localeArr.length - 1) {
                    sb2.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f7862a = (Locale[]) arrayList.toArray(new Locale[0]);
        this.f7863b = sb2.toString();
    }

    static void c(StringBuilder sb2, Locale locale) {
        sb2.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country == null || country.isEmpty()) {
            return;
        }
        sb2.append('-');
        sb2.append(locale.getCountry());
    }

    @Override
    public String a() {
        return this.f7863b;
    }

    @Override
    public Object b() {
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        Locale[] localeArr = ((j) obj).f7862a;
        if (this.f7862a.length != localeArr.length) {
            return false;
        }
        int i10 = 0;
        while (true) {
            Locale[] localeArr2 = this.f7862a;
            if (i10 >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i10].equals(localeArr[i10])) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public Locale get(int i10) {
        if (i10 >= 0) {
            Locale[] localeArr = this.f7862a;
            if (i10 < localeArr.length) {
                return localeArr[i10];
            }
        }
        return null;
    }

    public int hashCode() {
        int iHashCode = 1;
        for (Locale locale : this.f7862a) {
            iHashCode = (iHashCode * 31) + locale.hashCode();
        }
        return iHashCode;
    }

    @Override
    public boolean isEmpty() {
        return this.f7862a.length == 0;
    }

    @Override
    public int size() {
        return this.f7862a.length;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        int i10 = 0;
        while (true) {
            Locale[] localeArr = this.f7862a;
            if (i10 >= localeArr.length) {
                sb2.append("]");
                return sb2.toString();
            }
            sb2.append(localeArr[i10]);
            if (i10 < this.f7862a.length - 1) {
                sb2.append(',');
            }
            i10++;
        }
    }
}
