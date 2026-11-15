package defpackage;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;

public class uf9 implements ah1 {
    public final boolean a;
    public final Path.FillType b;
    public final String c;
    public final cc d;
    public final fc e;
    public final boolean f;

    public uf9(String str, boolean z, Path.FillType fillType, cc ccVar, fc fcVar, boolean z2) {
        this.c = str;
        this.a = z;
        this.b = fillType;
        this.d = ccVar;
        this.e = fcVar;
        this.f = z2;
    }

    @Override
    public bg1 a(LottieDrawable lottieDrawable, ur5 ur5Var, a aVar) {
        return new gv3(lottieDrawable, aVar, this);
    }

    public cc b() {
        return this.d;
    }

    public Path.FillType c() {
        return this.b;
    }

    public String d() {
        return this.c;
    }

    public fc e() {
        return this.e;
    }

    public boolean f() {
        return this.f;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.a + '}';
    }
}
