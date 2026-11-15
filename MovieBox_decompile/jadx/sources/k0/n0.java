package k0;

import android.os.Build;
import android.text.StaticLayout;

final class n0 implements a1 {
    @Override
    public StaticLayout a(b1 b1Var) {
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(b1Var.r(), b1Var.q(), b1Var.e(), b1Var.o(), b1Var.u());
        builderObtain.setTextDirection(b1Var.s());
        builderObtain.setAlignment(b1Var.a());
        builderObtain.setMaxLines(b1Var.n());
        builderObtain.setEllipsize(b1Var.c());
        builderObtain.setEllipsizedWidth(b1Var.d());
        builderObtain.setLineSpacing(b1Var.l(), b1Var.m());
        builderObtain.setIncludePad(b1Var.g());
        builderObtain.setBreakStrategy(b1Var.b());
        builderObtain.setHyphenationFrequency(b1Var.f());
        builderObtain.setIndents(b1Var.i(), b1Var.p());
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            p0.a(builderObtain, b1Var.h());
        }
        if (i10 >= 28) {
            r0.a(builderObtain, b1Var.t());
        }
        if (i10 >= 33) {
            y0.b(builderObtain, b1Var.j(), b1Var.k());
        }
        return builderObtain.build();
    }

    @Override
    public boolean b(StaticLayout staticLayout, boolean z10) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33) {
            return y0.a(staticLayout);
        }
        if (i10 >= 28) {
            return z10;
        }
        return false;
    }
}
