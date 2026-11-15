package defpackage;

import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;
import java.util.Collections;

public abstract class dg9 {
    public static final JsonReader.a a = JsonReader.a.a("nm", "c", "w", "o", "lc", "lj", "ml", "hd", "d");
    public static final JsonReader.a b = JsonReader.a.a("n", "v");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    public static ShapeStroke a(JsonReader jsonReader, ur5 ur5Var) {
        ArrayList arrayList = new ArrayList();
        float fN = 0.0f;
        boolean zK = false;
        String strE = null;
        dc dcVar = null;
        cc ccVarC = null;
        dc dcVarE = null;
        fc fcVarH = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        while (jsonReader.h()) {
            switch (jsonReader.I(a)) {
                case 0:
                    strE = jsonReader.E();
                    break;
                case 1:
                    ccVarC = uc.c(jsonReader, ur5Var);
                    break;
                case 2:
                    dcVarE = uc.e(jsonReader, ur5Var);
                    break;
                case 3:
                    fcVarH = uc.h(jsonReader, ur5Var);
                    break;
                case 4:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.o() - 1];
                    break;
                case 5:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.o() - 1];
                    break;
                case 6:
                    fN = (float) jsonReader.n();
                    break;
                case 7:
                    zK = jsonReader.k();
                    break;
                case 8:
                    jsonReader.b();
                    while (jsonReader.h()) {
                        jsonReader.d();
                        String strE2 = null;
                        dc dcVarE2 = null;
                        while (jsonReader.h()) {
                            int I = jsonReader.I(b);
                            if (I == 0) {
                                strE2 = jsonReader.E();
                            } else if (I != 1) {
                                jsonReader.J();
                                jsonReader.K();
                            } else {
                                dcVarE2 = uc.e(jsonReader, ur5Var);
                            }
                        }
                        jsonReader.g();
                        strE2.hashCode();
                        switch (strE2) {
                            case "d":
                            case "g":
                                ur5Var.u(true);
                                arrayList.add(dcVarE2);
                                break;
                            case "o":
                                dcVar = dcVarE2;
                                break;
                        }
                    }
                    jsonReader.e();
                    if (arrayList.size() == 1) {
                        arrayList.add((dc) arrayList.get(0));
                    }
                    break;
                default:
                    jsonReader.K();
                    break;
            }
        }
        return new ShapeStroke(strE, dcVar, arrayList, ccVarC, fcVarH == null ? new fc(Collections.singletonList(new dg5(100))) : fcVarH, dcVarE, lineCapType == null ? ShapeStroke.LineCapType.BUTT : lineCapType, lineJoinType == null ? ShapeStroke.LineJoinType.MITER : lineJoinType, fN, zK);
    }
}
