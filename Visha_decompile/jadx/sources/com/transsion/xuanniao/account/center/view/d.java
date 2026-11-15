package com.transsion.xuanniao.account.center.view;

public class d {
    public com.transsion.widgetslib.dialog.a a;
    public String b;
    public a c;

    public interface a {
    }

    public final void a(int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append("-");
        if (i2 < 10) {
            sb.append("0");
        }
        sb.append(i2);
        sb.append("-");
        if (i3 < 10) {
            sb.append("0");
        }
        sb.append(i3);
        this.b = sb.toString();
    }
}
