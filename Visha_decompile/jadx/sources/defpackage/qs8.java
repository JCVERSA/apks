package defpackage;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;

public class qs8 implements ah1 {
    public final String a;
    public final dc b;
    public final dc c;
    public final rc d;
    public final boolean e;

    public qs8(String str, dc dcVar, dc dcVar2, rc rcVar, boolean z) {
        this.a = str;
        this.b = dcVar;
        this.c = dcVar2;
        this.d = rcVar;
        this.e = z;
    }

    @Override
    public bg1 a(LottieDrawable lottieDrawable, ur5 ur5Var, a aVar) {
        return new rs8(lottieDrawable, aVar, this);
    }

    public dc b() {
        return this.b;
    }

    public String c() {
        return this.a;
    }

    public dc d() {
        return this.c;
    }

    public rc e() {
        return this.d;
    }

    public boolean f() {
        return this.e;
    }
}
