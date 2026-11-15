package w4;

import android.graphics.PointF;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.cloud.tmc.integration.params.TmcStartParams;

public class i implements n0 {

    public static final i f74170a = new i();

    private static final JsonReader.a f74171b = JsonReader.a.a("t", "f", "s", "j", "tr", "lh", TmcStartParams.KEY_LANDSCAPE_SHORT, "fc", "sc", "sw", "of", "ps", "sz");

    private i() {
    }

    @Override
    public DocumentData a(JsonReader jsonReader, float f10) {
        DocumentData.Justification justification = DocumentData.Justification.CENTER;
        jsonReader.h();
        DocumentData.Justification justification2 = justification;
        String strR = null;
        String strR2 = null;
        PointF pointF = null;
        PointF pointF2 = null;
        float fO = 0.0f;
        float fO2 = 0.0f;
        float fO3 = 0.0f;
        float fO4 = 0.0f;
        int iP = 0;
        int iD = 0;
        int iD2 = 0;
        boolean zN = true;
        while (jsonReader.m()) {
            switch (jsonReader.v(f74171b)) {
                case 0:
                    strR = jsonReader.r();
                    break;
                case 1:
                    strR2 = jsonReader.r();
                    break;
                case 2:
                    fO = (float) jsonReader.o();
                    break;
                case 3:
                    int iP2 = jsonReader.p();
                    justification2 = DocumentData.Justification.CENTER;
                    if (iP2 <= justification2.ordinal() && iP2 >= 0) {
                        justification2 = DocumentData.Justification.values()[iP2];
                    }
                    break;
                case 4:
                    iP = jsonReader.p();
                    break;
                case 5:
                    fO2 = (float) jsonReader.o();
                    break;
                case 6:
                    fO3 = (float) jsonReader.o();
                    break;
                case 7:
                    iD = s.d(jsonReader);
                    break;
                case 8:
                    iD2 = s.d(jsonReader);
                    break;
                case 9:
                    fO4 = (float) jsonReader.o();
                    break;
                case 10:
                    zN = jsonReader.n();
                    break;
                case 11:
                    jsonReader.d();
                    PointF pointF3 = new PointF(((float) jsonReader.o()) * f10, ((float) jsonReader.o()) * f10);
                    jsonReader.k();
                    pointF = pointF3;
                    break;
                case 12:
                    jsonReader.d();
                    PointF pointF4 = new PointF(((float) jsonReader.o()) * f10, ((float) jsonReader.o()) * f10);
                    jsonReader.k();
                    pointF2 = pointF4;
                    break;
                default:
                    jsonReader.w();
                    jsonReader.x();
                    break;
            }
        }
        jsonReader.l();
        return new DocumentData(strR, strR2, fO, justification2, iP, fO2, fO3, iD, iD2, fO4, zN, pointF, pointF2);
    }
}
