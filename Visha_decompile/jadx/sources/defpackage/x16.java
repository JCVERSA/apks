package defpackage;

import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.parser.moshi.JsonReader;

public abstract class x16 {
    public static Mask a(JsonReader jsonReader, ur5 ur5Var) {
        jsonReader.d();
        Mask.MaskMode maskMode = null;
        kc kcVarK = null;
        fc fcVarH = null;
        boolean zK = false;
        while (jsonReader.h()) {
            String strD = jsonReader.D();
            strD.hashCode();
            switch (strD) {
                case "o":
                    fcVarH = uc.h(jsonReader, ur5Var);
                    break;
                case "pt":
                    kcVarK = uc.k(jsonReader, ur5Var);
                    break;
                case "inv":
                    zK = jsonReader.k();
                    break;
                case "mode":
                    String strE = jsonReader.E();
                    strE.hashCode();
                    switch (strE) {
                        case "a":
                            maskMode = Mask.MaskMode.MASK_MODE_ADD;
                            break;
                        case "i":
                            ur5Var.a("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                            maskMode = Mask.MaskMode.MASK_MODE_INTERSECT;
                            break;
                        case "n":
                            maskMode = Mask.MaskMode.MASK_MODE_NONE;
                            break;
                        case "s":
                            maskMode = Mask.MaskMode.MASK_MODE_SUBTRACT;
                            break;
                        default:
                            mq5.c("Unknown mask mode " + strD + ". Defaulting to Add.");
                            maskMode = Mask.MaskMode.MASK_MODE_ADD;
                            break;
                    }
                    break;
                default:
                    jsonReader.K();
                    break;
            }
        }
        jsonReader.g();
        return new Mask(maskMode, kcVarK, fcVarH, zK);
    }
}
