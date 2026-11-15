package defpackage;

import com.alibaba.android.arouter.utils.Consts;

public final class qw2 {
    public final int a;
    public final int b;
    public final String c;

    public qw2(int i, int i2, String str) {
        this.a = i;
        this.b = i2;
        this.c = str;
    }

    public static qw2 a(qw7 qw7Var) {
        String str;
        qw7Var.P(2);
        int iC = qw7Var.C();
        int i = iC >> 1;
        int iC2 = ((qw7Var.C() >> 3) & 31) | ((iC & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else {
            if (i != 9) {
                return null;
            }
            str = "avc3";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(".0");
        sb.append(i);
        sb.append(iC2 >= 10 ? Consts.DOT : ".0");
        sb.append(iC2);
        return new qw2(i, iC2, sb.toString());
    }
}
