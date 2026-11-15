package defpackage;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.layer.a;

public class mj4 implements ah1 {
    public final GradientType a;
    public final Path.FillType b;
    public final ec c;
    public final fc d;
    public final ic e;
    public final ic f;
    public final String g;
    public final dc h;
    public final dc i;
    public final boolean j;

    public mj4(String str, GradientType gradientType, Path.FillType fillType, ec ecVar, fc fcVar, ic icVar, ic icVar2, dc dcVar, dc dcVar2, boolean z) {
        this.a = gradientType;
        this.b = fillType;
        this.c = ecVar;
        this.d = fcVar;
        this.e = icVar;
        this.f = icVar2;
        this.g = str;
        this.h = dcVar;
        this.i = dcVar2;
        this.j = z;
    }

    @Override
    public bg1 a(LottieDrawable lottieDrawable, ur5 ur5Var, a aVar) {
        return new nj4(lottieDrawable, ur5Var, aVar, this);
    }

    public ic b() {
        return this.f;
    }

    public Path.FillType c() {
        return this.b;
    }

    public ec d() {
        return this.c;
    }

    public GradientType e() {
        return this.a;
    }

    public String f() {
        return this.g;
    }

    public fc g() {
        return this.d;
    }

    public ic h() {
        return this.e;
    }

    public boolean i() {
        return this.j;
    }
}
