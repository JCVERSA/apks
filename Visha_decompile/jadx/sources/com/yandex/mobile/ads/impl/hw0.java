package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.media3.common.MimeTypes;
import defpackage.y45;

public final class hw0 {
    private final fw0 a;
    private final xl b;

    /* JADX WARN: Illegal instructions before constructor call */
    public hw0(Context context) {
        fw0 fw0VarA = new io1(context).a();
        this(context, fw0VarA, new xl(fw0VarA));
    }

    public final ew0 a(uu uuVar) {
        y45.j(uuVar, "creative");
        double d = -1.0d;
        ew0 ew0Var = null;
        for (ew0 ew0Var2 : uuVar.h()) {
            double d2 = y45.e(MimeTypes.VIDEO_MP4, ew0Var2.e()) ? 1.5d : 1.0d;
            int iA = this.b.a(ew0Var2);
            int iA2 = this.a.a();
            int iMax = (int) Math.max(0.0d, iA);
            double dAbs = d2 / ((iMax < 100 ? 10.0d : ((double) ((int) Math.abs(iA2 - iMax))) / ((double) iA2)) + 1.0d);
            if (dAbs > d) {
                ew0Var = ew0Var2;
                d = dAbs;
            }
        }
        return ew0Var;
    }

    public hw0(Context context, fw0 fw0Var, xl xlVar) {
        y45.j(context, "context");
        y45.j(fw0Var, "referenceMediaFileInfo");
        y45.j(xlVar, "bitrateProvider");
        this.a = fw0Var;
        this.b = xlVar;
    }
}
