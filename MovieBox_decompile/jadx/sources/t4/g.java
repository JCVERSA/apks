package t4;

import com.airbnb.lottie.LottieDrawable;
import o4.p;
import s4.n;

public class g implements c {

    private final String f72493a;

    private final s4.b f72494b;

    private final s4.b f72495c;

    private final n f72496d;

    private final boolean f72497e;

    public g(String str, s4.b bVar, s4.b bVar2, n nVar, boolean z10) {
        this.f72493a = str;
        this.f72494b = bVar;
        this.f72495c = bVar2;
        this.f72496d = nVar;
        this.f72497e = z10;
    }

    @Override
    public o4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new p(lottieDrawable, aVar, this);
    }

    public s4.b b() {
        return this.f72494b;
    }

    public String c() {
        return this.f72493a;
    }

    public s4.b d() {
        return this.f72495c;
    }

    public n e() {
        return this.f72496d;
    }

    public boolean f() {
        return this.f72497e;
    }
}
