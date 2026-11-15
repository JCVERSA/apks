package defpackage;

import com.airbnb.lottie.parser.moshi.JsonReader;

public abstract class bg0 {
    public static final JsonReader.a a = JsonReader.a.a("ef");
    public static final JsonReader.a b = JsonReader.a.a("ty", "v");

    public static ag0 a(JsonReader jsonReader, ur5 ur5Var) {
        jsonReader.d();
        ag0 ag0Var = null;
        while (true) {
            boolean z = false;
            while (true) {
                if (!jsonReader.h()) {
                    jsonReader.g();
                    return ag0Var;
                }
                int I = jsonReader.I(b);
                if (I != 0) {
                    if (I != 1) {
                        jsonReader.J();
                        jsonReader.K();
                    } else if (z) {
                        ag0Var = new ag0(uc.e(jsonReader, ur5Var));
                    } else {
                        jsonReader.K();
                    }
                } else if (jsonReader.o() == 0) {
                    z = true;
                }
            }
        }
    }

    public static ag0 b(JsonReader jsonReader, ur5 ur5Var) {
        ag0 ag0Var = null;
        while (jsonReader.h()) {
            if (jsonReader.I(a) != 0) {
                jsonReader.J();
                jsonReader.K();
            } else {
                jsonReader.b();
                while (jsonReader.h()) {
                    ag0 ag0VarA = a(jsonReader, ur5Var);
                    if (ag0VarA != null) {
                        ag0Var = ag0VarA;
                    }
                }
                jsonReader.e();
            }
        }
        return ag0Var;
    }
}
