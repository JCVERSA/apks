package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.util.d0;

public final class d {

    public final int f26962a;

    public final int f26963b;

    public final String f26964c;

    private d(int i10, int i11, String str) {
        this.f26962a = i10;
        this.f26963b = i11;
        this.f26964c = str;
    }

    public static d a(d0 d0Var) {
        String str;
        d0Var.Q(2);
        int iD = d0Var.D();
        int i10 = iD >> 1;
        int iD2 = ((d0Var.D() >> 3) & 31) | ((iD & 1) << 5);
        if (i10 == 4 || i10 == 5 || i10 == 7) {
            str = "dvhe";
        } else if (i10 == 8) {
            str = "hev1";
        } else {
            if (i10 != 9) {
                return null;
            }
            str = "avc3";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(".0");
        sb2.append(i10);
        sb2.append(iD2 >= 10 ? "." : ".0");
        sb2.append(iD2);
        return new d(i10, iD2, sb2.toString());
    }
}
