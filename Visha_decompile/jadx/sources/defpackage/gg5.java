package defpackage;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;
import java.util.List;

public abstract class gg5 {
    public static JsonReader.a a = JsonReader.a.a("k");

    public static List a(JsonReader jsonReader, ur5 ur5Var, float f, onb onbVar, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.G() == JsonReader.Token.STRING) {
            ur5Var.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.d();
        while (jsonReader.h()) {
            if (jsonReader.I(a) != 0) {
                jsonReader.K();
            } else if (jsonReader.G() == JsonReader.Token.BEGIN_ARRAY) {
                jsonReader.b();
                if (jsonReader.G() == JsonReader.Token.NUMBER) {
                    arrayList.add(fg5.c(jsonReader, ur5Var, f, onbVar, false, z));
                } else {
                    while (jsonReader.h()) {
                        arrayList.add(fg5.c(jsonReader, ur5Var, f, onbVar, true, z));
                    }
                }
                jsonReader.e();
            } else {
                arrayList.add(fg5.c(jsonReader, ur5Var, f, onbVar, false, z));
            }
        }
        jsonReader.g();
        b(arrayList);
        return arrayList;
    }

    public static void b(List list) {
        int i;
        Object obj;
        int size = list.size();
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            dg5 dg5Var = (dg5) list.get(i2);
            i2++;
            dg5 dg5Var2 = (dg5) list.get(i2);
            dg5Var.h = Float.valueOf(dg5Var2.g);
            if (dg5Var.c == null && (obj = dg5Var2.b) != null) {
                dg5Var.c = obj;
                if (dg5Var instanceof cy7) {
                    ((cy7) dg5Var).j();
                }
            }
        }
        dg5 dg5Var3 = (dg5) list.get(i);
        if ((dg5Var3.b == null || dg5Var3.c == null) && list.size() > 1) {
            list.remove(dg5Var3);
        }
    }
}
