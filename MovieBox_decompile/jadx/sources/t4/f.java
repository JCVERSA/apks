package t4;

import com.airbnb.lottie.LottieDrawable;
import s4.o;

public class f implements c {

    private final String f72488a;

    private final o f72489b;

    private final o f72490c;

    private final s4.b f72491d;

    private final boolean f72492e;

    public f(String str, o oVar, o oVar2, s4.b bVar, boolean z10) {
        this.f72488a = str;
        this.f72489b = oVar;
        this.f72490c = oVar2;
        this.f72491d = bVar;
        this.f72492e = z10;
    }

    @Override
    public o4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new o4.o(lottieDrawable, aVar, this);
    }

    public s4.b b() {
        return this.f72491d;
    }

    public String c() {
        return this.f72488a;
    }

    public o d() {
        return this.f72489b;
    }

    public o e() {
        return this.f72490c;
    }

    public boolean f() {
        return this.f72492e;
    }

    public String toString() {
        return "RectangleShape{position=" + this.f72489b + ", size=" + this.f72490c + '}';
    }
}
