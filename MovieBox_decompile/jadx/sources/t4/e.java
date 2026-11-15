package t4;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;

public class e implements c {

    private final GradientType f72478a;

    private final Path.FillType f72479b;

    private final s4.c f72480c;

    private final s4.d f72481d;

    private final s4.f f72482e;

    private final s4.f f72483f;

    private final String f72484g;

    private final s4.b f72485h;

    private final s4.b f72486i;

    private final boolean f72487j;

    public e(String str, GradientType gradientType, Path.FillType fillType, s4.c cVar, s4.d dVar, s4.f fVar, s4.f fVar2, s4.b bVar, s4.b bVar2, boolean z10) {
        this.f72478a = gradientType;
        this.f72479b = fillType;
        this.f72480c = cVar;
        this.f72481d = dVar;
        this.f72482e = fVar;
        this.f72483f = fVar2;
        this.f72484g = str;
        this.f72485h = bVar;
        this.f72486i = bVar2;
        this.f72487j = z10;
    }

    @Override
    public o4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new o4.h(lottieDrawable, hVar, aVar, this);
    }

    public s4.f b() {
        return this.f72483f;
    }

    public Path.FillType c() {
        return this.f72479b;
    }

    public s4.c d() {
        return this.f72480c;
    }

    public GradientType e() {
        return this.f72478a;
    }

    public String f() {
        return this.f72484g;
    }

    public s4.d g() {
        return this.f72481d;
    }

    public s4.f h() {
        return this.f72482e;
    }

    public boolean i() {
        return this.f72487j;
    }
}
