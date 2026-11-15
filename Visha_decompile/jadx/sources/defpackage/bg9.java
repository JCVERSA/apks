package defpackage;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;

public class bg9 implements ah1 {
    public final String a;
    public final int b;
    public final kc c;
    public final boolean d;

    public bg9(String str, int i, kc kcVar, boolean z) {
        this.a = str;
        this.b = i;
        this.c = kcVar;
        this.d = z;
    }

    @Override
    public bg1 a(LottieDrawable lottieDrawable, ur5 ur5Var, a aVar) {
        return new rf9(lottieDrawable, aVar, this);
    }

    public String b() {
        return this.a;
    }

    public kc c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }

    public String toString() {
        return "ShapePath{name=" + this.a + ", index=" + this.b + '}';
    }
}
