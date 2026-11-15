package defpackage;

import android.graphics.Path;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import java.util.Collections;

public abstract class oj4 {
    public static final JsonReader.a a = JsonReader.a.a("nm", GslbInterceptor.HEADER_KEY_GSLB, "o", "t", "s", "e", "r", "hd");
    public static final JsonReader.a b = JsonReader.a.a(TtmlNode.TAG_P, "k");

    public static mj4 a(JsonReader jsonReader, ur5 ur5Var) {
        fc fcVarH = null;
        Path.FillType fillType = Path.FillType.WINDING;
        String strE = null;
        GradientType gradientType = null;
        ec ecVarG = null;
        ic icVarI = null;
        ic icVarI2 = null;
        boolean zK = false;
        while (jsonReader.h()) {
            switch (jsonReader.I(a)) {
                case 0:
                    strE = jsonReader.E();
                    break;
                case 1:
                    jsonReader.d();
                    int iO = -1;
                    while (jsonReader.h()) {
                        int I = jsonReader.I(b);
                        if (I == 0) {
                            iO = jsonReader.o();
                        } else if (I != 1) {
                            jsonReader.J();
                            jsonReader.K();
                        } else {
                            ecVarG = uc.g(jsonReader, ur5Var, iO);
                        }
                    }
                    jsonReader.g();
                    break;
                case 2:
                    fcVarH = uc.h(jsonReader, ur5Var);
                    break;
                case 3:
                    gradientType = jsonReader.o() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                    break;
                case 4:
                    icVarI = uc.i(jsonReader, ur5Var);
                    break;
                case 5:
                    icVarI2 = uc.i(jsonReader, ur5Var);
                    break;
                case 6:
                    fillType = jsonReader.o() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                    break;
                case 7:
                    zK = jsonReader.k();
                    break;
                default:
                    jsonReader.J();
                    jsonReader.K();
                    break;
            }
        }
        return new mj4(strE, gradientType, fillType, ecVarG, fcVarH == null ? new fc(Collections.singletonList(new dg5(100))) : fcVarH, icVarI, icVarI2, null, null, zK);
    }
}
