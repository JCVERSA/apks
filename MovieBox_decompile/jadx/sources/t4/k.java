package t4;

import com.airbnb.lottie.LottieDrawable;
import java.util.Arrays;
import java.util.List;

public class k implements c {

    private final String f72509a;

    private final List f72510b;

    private final boolean f72511c;

    public k(String str, List list, boolean z10) {
        this.f72509a = str;
        this.f72510b = list;
        this.f72511c = z10;
    }

    @Override
    public o4.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new o4.d(lottieDrawable, aVar, this, hVar);
    }

    public List b() {
        return this.f72510b;
    }

    public String c() {
        return this.f72509a;
    }

    public boolean d() {
        return this.f72511c;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f72509a + "' Shapes: " + Arrays.toString(this.f72510b.toArray()) + '}';
    }
}
