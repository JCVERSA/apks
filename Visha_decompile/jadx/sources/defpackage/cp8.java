package defpackage;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;

public class cp8 implements ah1 {
    public final String a;
    public final tc b;
    public final tc c;
    public final dc d;
    public final boolean e;

    public cp8(String str, tc tcVar, tc tcVar2, dc dcVar, boolean z) {
        this.a = str;
        this.b = tcVar;
        this.c = tcVar2;
        this.d = dcVar;
        this.e = z;
    }

    @Override
    public bg1 a(LottieDrawable lottieDrawable, ur5 ur5Var, a aVar) {
        return new bp8(lottieDrawable, aVar, this);
    }

    public dc b() {
        return this.d;
    }

    public String c() {
        return this.a;
    }

    public tc d() {
        return this.b;
    }

    public tc e() {
        return this.c;
    }

    public boolean f() {
        return this.e;
    }

    public String toString() {
        return "RectangleShape{position=" + this.b + ", size=" + this.c + '}';
    }
}
