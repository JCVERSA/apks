package defpackage;

import com.airbnb.lottie.parser.moshi.JsonReader;

public class m33 {
    public static final JsonReader.a f = JsonReader.a.a("ef");
    public static final JsonReader.a g = JsonReader.a.a("nm", "v");
    public cc a;
    public dc b;
    public dc c;
    public dc d;
    public dc e;

    public final void a(JsonReader jsonReader, ur5 ur5Var) {
        jsonReader.d();
        String strE = "";
        while (jsonReader.h()) {
            int I = jsonReader.I(g);
            if (I == 0) {
                strE = jsonReader.E();
            } else if (I == 1) {
                strE.hashCode();
                switch (strE) {
                    case "Distance":
                        this.d = uc.e(jsonReader, ur5Var);
                        break;
                    case "Opacity":
                        this.b = uc.f(jsonReader, ur5Var, false);
                        break;
                    case "Direction":
                        this.c = uc.f(jsonReader, ur5Var, false);
                        break;
                    case "Shadow Color":
                        this.a = uc.c(jsonReader, ur5Var);
                        break;
                    case "Softness":
                        this.e = uc.e(jsonReader, ur5Var);
                        break;
                    default:
                        jsonReader.K();
                        break;
                }
            } else {
                jsonReader.J();
                jsonReader.K();
            }
        }
        jsonReader.g();
    }

    public l33 b(JsonReader jsonReader, ur5 ur5Var) {
        dc dcVar;
        dc dcVar2;
        dc dcVar3;
        dc dcVar4;
        while (jsonReader.h()) {
            if (jsonReader.I(f) != 0) {
                jsonReader.J();
                jsonReader.K();
            } else {
                jsonReader.b();
                while (jsonReader.h()) {
                    a(jsonReader, ur5Var);
                }
                jsonReader.e();
            }
        }
        cc ccVar = this.a;
        if (ccVar == null || (dcVar = this.b) == null || (dcVar2 = this.c) == null || (dcVar3 = this.d) == null || (dcVar4 = this.e) == null) {
            return null;
        }
        return new l33(ccVar, dcVar, dcVar2, dcVar3, dcVar4);
    }
}
