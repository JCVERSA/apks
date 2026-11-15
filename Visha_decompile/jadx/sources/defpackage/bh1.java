package defpackage;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.airbnb.lottie.parser.moshi.JsonReader;
import org.mozilla.classfile.ByteCode;

public abstract class bh1 {
    public static final JsonReader.a a = JsonReader.a.a("ty", "d");

    public static ah1 a(JsonReader jsonReader, ur5 ur5Var) {
        ah1 ah1VarA;
        String strE;
        byte b = 1;
        jsonReader.d();
        int iO = 2;
        while (true) {
            ah1VarA = null;
            if (!jsonReader.h()) {
                strE = null;
                break;
            }
            int I = jsonReader.I(a);
            if (I == 0) {
                strE = jsonReader.E();
                break;
            }
            if (I != 1) {
                jsonReader.J();
                jsonReader.K();
            } else {
                iO = jsonReader.o();
            }
        }
        if (strE == null) {
            return null;
        }
        switch (strE.hashCode()) {
            case 3239:
                b = !strE.equals("el") ? (byte) -1 : (byte) 0;
                break;
            case 3270:
                if (!strE.equals("fl")) {
                    b = -1;
                }
                break;
            case 3295:
                b = !strE.equals("gf") ? (byte) -1 : (byte) 2;
                break;
            case 3307:
                b = !strE.equals("gr") ? (byte) -1 : (byte) 3;
                break;
            case 3308:
                b = !strE.equals("gs") ? (byte) -1 : (byte) 4;
                break;
            case 3488:
                b = !strE.equals("mm") ? (byte) -1 : (byte) 5;
                break;
            case 3633:
                b = !strE.equals("rc") ? (byte) -1 : (byte) 6;
                break;
            case 3634:
                b = !strE.equals("rd") ? (byte) -1 : (byte) 7;
                break;
            case 3646:
                b = !strE.equals("rp") ? (byte) -1 : (byte) 8;
                break;
            case 3669:
                b = !strE.equals("sh") ? (byte) -1 : (byte) 9;
                break;
            case 3679:
                b = !strE.equals("sr") ? (byte) -1 : (byte) 10;
                break;
            case 3681:
                b = !strE.equals(CmcdConfiguration.KEY_STREAM_TYPE) ? (byte) -1 : ByteCode.T_LONG;
                break;
            case 3705:
                b = !strE.equals("tm") ? (byte) -1 : (byte) 12;
                break;
            case 3710:
                b = !strE.equals("tr") ? (byte) -1 : (byte) 13;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                ah1VarA = iw0.a(jsonReader, ur5Var, iO);
                break;
            case 1:
                ah1VarA = vf9.a(jsonReader, ur5Var);
                break;
            case 2:
                ah1VarA = oj4.a(jsonReader, ur5Var);
                break;
            case 3:
                ah1VarA = xf9.a(jsonReader, ur5Var);
                break;
            case 4:
                ah1VarA = qj4.a(jsonReader, ur5Var);
                break;
            case 5:
                ah1VarA = mn6.a(jsonReader);
                ur5Var.a("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                break;
            case 6:
                ah1VarA = dp8.a(jsonReader, ur5Var);
                break;
            case 7:
                ah1VarA = ew8.a(jsonReader, ur5Var);
                break;
            case 8:
                ah1VarA = ss8.a(jsonReader, ur5Var);
                break;
            case 9:
                ah1VarA = cg9.a(jsonReader, ur5Var);
                break;
            case 10:
                ah1VarA = xc8.a(jsonReader, ur5Var, iO);
                break;
            case 11:
                ah1VarA = dg9.a(jsonReader, ur5Var);
                break;
            case 12:
                ah1VarA = eg9.a(jsonReader, ur5Var);
                break;
            case 13:
                ah1VarA = sc.g(jsonReader, ur5Var);
                break;
            default:
                mq5.c("Unknown shape type " + strE);
                break;
        }
        while (jsonReader.h()) {
            jsonReader.K();
        }
        jsonReader.g();
        return ah1VarA;
    }
}
