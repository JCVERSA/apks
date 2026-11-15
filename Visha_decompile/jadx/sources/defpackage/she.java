package defpackage;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class she {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;

    public she(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
        this.g = i7;
        this.h = i8;
        this.i = i9;
        this.j = i10;
        this.k = i11;
    }

    public static she a(String str) {
        String[] strArrSplit = TextUtils.split(str.substring(7), StringUtils.COMMA);
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        while (true) {
            int length = strArrSplit.length;
            if (i >= length) {
                if (i2 != -1) {
                    return new she(i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, length);
                }
                return null;
            }
            switch (d2i.a(strArrSplit[i].trim())) {
                case "name":
                    i2 = i;
                    break;
                case "alignment":
                    i3 = i;
                    break;
                case "primarycolour":
                    i4 = i;
                    break;
                case "outlinecolour":
                    i5 = i;
                    break;
                case "fontsize":
                    i6 = i;
                    break;
                case "bold":
                    i7 = i;
                    break;
                case "italic":
                    i8 = i;
                    break;
                case "underline":
                    i9 = i;
                    break;
                case "strikeout":
                    i10 = i;
                    break;
                case "borderstyle":
                    i11 = i;
                    break;
            }
            i++;
        }
    }
}
