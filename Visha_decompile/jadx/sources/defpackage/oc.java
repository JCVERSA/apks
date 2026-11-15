package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.Collections;

public abstract class oc {
    public static final JsonReader.a a = JsonReader.a.a("s", CmcdData.OBJECT_TYPE_AUDIO_ONLY);
    public static final JsonReader.a b = JsonReader.a.a("s", "e", "o", "r");
    public static final JsonReader.a c = JsonReader.a.a("fc", "sc", "sw", "t", "o");

    public static nc a(JsonReader jsonReader, ur5 ur5Var) {
        jsonReader.d();
        qc qcVarC = null;
        pc pcVarB = null;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                pcVarB = b(jsonReader, ur5Var);
            } else if (I != 1) {
                jsonReader.J();
                jsonReader.K();
            } else {
                qcVarC = c(jsonReader, ur5Var);
            }
        }
        jsonReader.g();
        return new nc(qcVarC, pcVarB);
    }

    public static pc b(JsonReader jsonReader, ur5 ur5Var) {
        jsonReader.d();
        fc fcVar = null;
        fc fcVarH = null;
        fc fcVarH2 = null;
        TextRangeUnits textRangeUnits = null;
        while (jsonReader.h()) {
            int I = jsonReader.I(b);
            if (I == 0) {
                fcVar = uc.h(jsonReader, ur5Var);
            } else if (I == 1) {
                fcVarH = uc.h(jsonReader, ur5Var);
            } else if (I == 2) {
                fcVarH2 = uc.h(jsonReader, ur5Var);
            } else if (I != 3) {
                jsonReader.J();
                jsonReader.K();
            } else {
                int iO = jsonReader.o();
                if (iO == 1 || iO == 2) {
                    textRangeUnits = iO == 1 ? TextRangeUnits.PERCENT : TextRangeUnits.INDEX;
                } else {
                    ur5Var.a("Unsupported text range units: " + iO);
                    textRangeUnits = TextRangeUnits.INDEX;
                }
            }
        }
        jsonReader.g();
        if (fcVar == null && fcVarH != null) {
            fcVar = new fc(Collections.singletonList(new dg5(0)));
        }
        return new pc(fcVar, fcVarH, fcVarH2, textRangeUnits);
    }

    public static qc c(JsonReader jsonReader, ur5 ur5Var) {
        jsonReader.d();
        cc ccVarC = null;
        cc ccVarC2 = null;
        dc dcVarE = null;
        dc dcVarE2 = null;
        fc fcVarH = null;
        while (jsonReader.h()) {
            int I = jsonReader.I(c);
            if (I == 0) {
                ccVarC = uc.c(jsonReader, ur5Var);
            } else if (I == 1) {
                ccVarC2 = uc.c(jsonReader, ur5Var);
            } else if (I == 2) {
                dcVarE = uc.e(jsonReader, ur5Var);
            } else if (I == 3) {
                dcVarE2 = uc.e(jsonReader, ur5Var);
            } else if (I != 4) {
                jsonReader.J();
                jsonReader.K();
            } else {
                fcVarH = uc.h(jsonReader, ur5Var);
            }
        }
        jsonReader.g();
        return new qc(ccVarC, ccVarC2, dcVarE, dcVarE2, fcVarH);
    }
}
