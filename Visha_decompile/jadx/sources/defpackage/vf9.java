package defpackage;

import android.graphics.Path;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.Collections;

public abstract class vf9 {
    public static final JsonReader.a a = JsonReader.a.a("nm", "c", "o", "fillEnabled", "r", "hd");

    public static uf9 a(JsonReader jsonReader, ur5 ur5Var) {
        fc fcVar = null;
        String strE = null;
        cc ccVarC = null;
        boolean zK = false;
        boolean zK2 = false;
        int iO = 1;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                strE = jsonReader.E();
            } else if (I == 1) {
                ccVarC = uc.c(jsonReader, ur5Var);
            } else if (I == 2) {
                fcVar = uc.h(jsonReader, ur5Var);
            } else if (I == 3) {
                zK = jsonReader.k();
            } else if (I == 4) {
                iO = jsonReader.o();
            } else if (I != 5) {
                jsonReader.J();
                jsonReader.K();
            } else {
                zK2 = jsonReader.k();
            }
        }
        if (fcVar == null) {
            fcVar = new fc(Collections.singletonList(new dg5(100)));
        }
        return new uf9(strE, zK, iO == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, ccVarC, fcVar, zK2);
    }
}
