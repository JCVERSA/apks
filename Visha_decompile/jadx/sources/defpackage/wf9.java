package defpackage;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import java.util.Arrays;
import java.util.List;

public class wf9 implements ah1 {
    public final String a;
    public final List b;
    public final boolean c;

    public wf9(String str, List list, boolean z) {
        this.a = str;
        this.b = list;
        this.c = z;
    }

    @Override
    public bg1 a(LottieDrawable lottieDrawable, ur5 ur5Var, a aVar) {
        return new cg1(lottieDrawable, aVar, this, ur5Var);
    }

    public List b() {
        return this.b;
    }

    public String c() {
        return this.a;
    }

    public boolean d() {
        return this.c;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.a + "' Shapes: " + Arrays.toString(this.b.toArray()) + '}';
    }
}
