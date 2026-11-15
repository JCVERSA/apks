package t4;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;

public class j implements c {

    private final boolean f72503a;

    private final Path.FillType f72504b;

    private final String f72505c;

    private final s4.a f72506d;

    private final s4.d f72507e;

    private final boolean f72508f;

    public j(String str, boolean z10, Path.FillType fillType, s4.a aVar, s4.d dVar, boolean z11) {
        this.f72505c = str;
        this.f72503a = z10;
        this.f72504b = fillType;
        this.f72506d = aVar;
        this.f72507e = dVar;
        this.f72508f = z11;
    }

    @Override
    public o4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new o4.g(lottieDrawable, aVar, this);
    }

    public s4.a b() {
        return this.f72506d;
    }

    public Path.FillType c() {
        return this.f72504b;
    }

    public String d() {
        return this.f72505c;
    }

    public s4.d e() {
        return this.f72507e;
    }

    public boolean f() {
        return this.f72508f;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f72503a + '}';
    }
}
