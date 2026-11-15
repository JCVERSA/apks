package t4;

import com.airbnb.lottie.LottieDrawable;
import o4.r;

public class l implements c {

    private final String f72512a;

    private final int f72513b;

    private final s4.h f72514c;

    private final boolean f72515d;

    public l(String str, int i10, s4.h hVar, boolean z10) {
        this.f72512a = str;
        this.f72513b = i10;
        this.f72514c = hVar;
        this.f72515d = z10;
    }

    @Override
    public o4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new r(lottieDrawable, aVar, this);
    }

    public String b() {
        return this.f72512a;
    }

    public s4.h c() {
        return this.f72514c;
    }

    public boolean d() {
        return this.f72515d;
    }

    public String toString() {
        return "ShapePath{name=" + this.f72512a + ", index=" + this.f72513b + '}';
    }
}
