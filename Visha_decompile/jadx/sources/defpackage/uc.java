package defpackage;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.List;

public abstract class uc {
    public static List a(JsonReader jsonReader, float f, ur5 ur5Var, onb onbVar) {
        return gg5.a(jsonReader, ur5Var, f, onbVar, false);
    }

    public static List b(JsonReader jsonReader, ur5 ur5Var, onb onbVar) {
        return gg5.a(jsonReader, ur5Var, 1.0f, onbVar, false);
    }

    public static cc c(JsonReader jsonReader, ur5 ur5Var) {
        return new cc(b(jsonReader, ur5Var, z81.a));
    }

    public static mc d(JsonReader jsonReader, ur5 ur5Var) {
        return new mc(a(jsonReader, plb.e(), ur5Var, gw2.a));
    }

    public static dc e(JsonReader jsonReader, ur5 ur5Var) {
        return f(jsonReader, ur5Var, true);
    }

    public static dc f(JsonReader jsonReader, ur5 ur5Var, boolean z) {
        return new dc(a(jsonReader, z ? plb.e() : 1.0f, ur5Var, yy3.a));
    }

    public static ec g(JsonReader jsonReader, ur5 ur5Var, int i) {
        return new ec(b(jsonReader, ur5Var, new lj4(i)));
    }

    public static fc h(JsonReader jsonReader, ur5 ur5Var) {
        return new fc(b(jsonReader, ur5Var, k25.a));
    }

    public static ic i(JsonReader jsonReader, ur5 ur5Var) {
        return new ic(gg5.a(jsonReader, ur5Var, plb.e(), ic8.a, true));
    }

    public static jc j(JsonReader jsonReader, ur5 ur5Var) {
        return new jc(b(jsonReader, ur5Var, u19.a));
    }

    public static kc k(JsonReader jsonReader, ur5 ur5Var) {
        return new kc(a(jsonReader, plb.e(), ur5Var, tf9.a));
    }
}
