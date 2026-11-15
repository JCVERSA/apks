package defpackage;

import com.alibaba.android.arouter.utils.Consts;

public final class t8e {
    public final String a;

    public t8e(int i, int i2, String str) {
        this.a = str;
    }

    public static t8e a(u4h u4hVar) {
        String str;
        u4hVar.m(2);
        int iG = u4hVar.G();
        int i = iG >> 1;
        int i2 = iG & 1;
        int iG2 = u4hVar.G() >> 3;
        if (i == 4 || i == 5 || i == 7 || i == 8) {
            str = "dvhe";
        } else if (i == 9) {
            str = "dvav";
        } else {
            if (i != 10) {
                return null;
            }
            str = "dav1";
        }
        int i3 = iG2 | (i2 << 5);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String str2 = Consts.DOT;
        sb.append(i < 10 ? ".0" : Consts.DOT);
        sb.append(i);
        if (i3 < 10) {
            str2 = ".0";
        }
        sb.append(str2);
        sb.append(i3);
        return new t8e(i, i3, sb.toString());
    }
}
