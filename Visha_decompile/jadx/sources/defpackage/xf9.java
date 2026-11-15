package defpackage;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;

public abstract class xf9 {
    public static final JsonReader.a a = JsonReader.a.a("nm", "hd", "it");

    public static wf9 a(JsonReader jsonReader, ur5 ur5Var) {
        ArrayList arrayList = new ArrayList();
        String strE = null;
        boolean zK = false;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                strE = jsonReader.E();
            } else if (I == 1) {
                zK = jsonReader.k();
            } else if (I != 2) {
                jsonReader.K();
            } else {
                jsonReader.b();
                while (jsonReader.h()) {
                    ah1 ah1VarA = bh1.a(jsonReader, ur5Var);
                    if (ah1VarA != null) {
                        arrayList.add(ah1VarA);
                    }
                }
                jsonReader.e();
            }
        }
        return new wf9(strE, arrayList, zK);
    }
}
