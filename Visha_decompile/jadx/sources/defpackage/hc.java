package defpackage;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;

public abstract class hc {
    public static final JsonReader.a a = JsonReader.a.a("k", "x", "y");

    public static gc a(JsonReader jsonReader, ur5 ur5Var) {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.G() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.b();
            while (jsonReader.h()) {
                arrayList.add(ey7.a(jsonReader, ur5Var));
            }
            jsonReader.e();
            gg5.b(arrayList);
        } else {
            arrayList.add(new dg5(lc5.e(jsonReader, plb.e())));
        }
        return new gc(arrayList);
    }

    public static tc b(JsonReader jsonReader, ur5 ur5Var) {
        jsonReader.d();
        gc gcVarA = null;
        dc dcVarE = null;
        boolean z = false;
        dc dcVarE2 = null;
        while (jsonReader.G() != JsonReader.Token.END_OBJECT) {
            int I = jsonReader.I(a);
            if (I == 0) {
                gcVarA = a(jsonReader, ur5Var);
            } else if (I != 1) {
                if (I != 2) {
                    jsonReader.J();
                    jsonReader.K();
                } else if (jsonReader.G() == JsonReader.Token.STRING) {
                    jsonReader.K();
                    z = true;
                } else {
                    dcVarE = uc.e(jsonReader, ur5Var);
                }
            } else if (jsonReader.G() == JsonReader.Token.STRING) {
                jsonReader.K();
                z = true;
            } else {
                dcVarE2 = uc.e(jsonReader, ur5Var);
            }
        }
        jsonReader.g();
        if (z) {
            ur5Var.a("Lottie doesn't support expressions.");
        }
        return gcVarA != null ? gcVarA : new lc(dcVarE2, dcVarE);
    }
}
