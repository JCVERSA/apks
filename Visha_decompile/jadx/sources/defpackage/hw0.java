package defpackage;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;

public class hw0 implements ah1 {
    public final String a;
    public final tc b;
    public final ic c;
    public final boolean d;
    public final boolean e;

    public hw0(String str, tc tcVar, ic icVar, boolean z, boolean z2) {
        this.a = str;
        this.b = tcVar;
        this.c = icVar;
        this.d = z;
        this.e = z2;
    }

    @Override
    public bg1 a(LottieDrawable lottieDrawable, ur5 ur5Var, a aVar) {
        return new u83(lottieDrawable, aVar, this);
    }

    public String b() {
        return this.a;
    }

    public tc c() {
        return this.b;
    }

    public ic d() {
        return this.c;
    }

    public boolean e() {
        return this.e;
    }

    public boolean f() {
        return this.d;
    }
}
