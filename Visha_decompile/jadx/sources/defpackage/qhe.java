package defpackage;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class qhe {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    public qhe(int i, int i2, int i3, int i4, int i5) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
    }

    public static qhe a(String str) {
        byte b;
        n7g.d(str.startsWith("Format:"));
        String[] strArrSplit = TextUtils.split(str.substring(7), StringUtils.COMMA);
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        while (true) {
            int length = strArrSplit.length;
            if (i >= length) {
                if (i2 == -1 || i3 == -1 || i5 == -1) {
                    return null;
                }
                return new qhe(i2, i3, i4, i5, length);
            }
            switch (d2i.a(strArrSplit[i].trim())) {
                case "end":
                    b = 1;
                    break;
                case "text":
                    b = 3;
                    break;
                case "start":
                    b = 0;
                    break;
                case "style":
                    b = 2;
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b == 0) {
                i2 = i;
            } else if (b == 1) {
                i3 = i;
            } else if (b == 2) {
                i4 = i;
            } else if (b == 3) {
                i5 = i;
            }
            i++;
        }
    }
}
