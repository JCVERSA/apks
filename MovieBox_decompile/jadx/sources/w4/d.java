package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.List;

public abstract class d {
    private static List a(JsonReader jsonReader, float f10, com.airbnb.lottie.h hVar, n0 n0Var) {
        return u.a(jsonReader, hVar, f10, n0Var, false);
    }

    private static List b(JsonReader jsonReader, com.airbnb.lottie.h hVar, n0 n0Var) {
        return u.a(jsonReader, hVar, 1.0f, n0Var, false);
    }

    static s4.a c(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return new s4.a(b(jsonReader, hVar, g.f74165a));
    }

    static s4.j d(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return new s4.j(a(jsonReader, x4.l.e(), hVar, i.f74170a));
    }

    public static s4.b e(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return f(jsonReader, hVar, true);
    }

    public static s4.b f(JsonReader jsonReader, com.airbnb.lottie.h hVar, boolean z10) {
        return new s4.b(a(jsonReader, z10 ? x4.l.e() : 1.0f, hVar, l.f74187a));
    }

    static s4.c g(JsonReader jsonReader, com.airbnb.lottie.h hVar, int i10) {
        return new s4.c(b(jsonReader, hVar, new o(i10)));
    }

    static s4.d h(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return new s4.d(b(jsonReader, hVar, r.f74200a));
    }

    static s4.f i(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return new s4.f(u.a(jsonReader, hVar, x4.l.e(), b0.f74155a, true));
    }

    static s4.g j(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return new s4.g(b(jsonReader, hVar, g0.f74166a));
    }

    static s4.h k(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return new s4.h(a(jsonReader, x4.l.e(), hVar, h0.f74168a));
    }
}
