package defpackage;

import android.graphics.PointF;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.parser.moshi.JsonReader;

public class gw2 implements onb {
    public static final gw2 a = new gw2();
    public static final JsonReader.a b = JsonReader.a.a("t", "f", "s", "j", "tr", "lh", "ls", "fc", "sc", "sw", "of", "ps", "sz");

    @Override
    public DocumentData a(JsonReader jsonReader, float f) {
        DocumentData.Justification justification = DocumentData.Justification.CENTER;
        jsonReader.d();
        DocumentData.Justification justification2 = justification;
        String strE = null;
        String strE2 = null;
        PointF pointF = null;
        PointF pointF2 = null;
        float fN = 0.0f;
        float fN2 = 0.0f;
        float fN3 = 0.0f;
        float fN4 = 0.0f;
        int iO = 0;
        int iD = 0;
        int iD2 = 0;
        boolean zK = true;
        while (jsonReader.h()) {
            switch (jsonReader.I(b)) {
                case 0:
                    strE = jsonReader.E();
                    break;
                case 1:
                    strE2 = jsonReader.E();
                    break;
                case 2:
                    fN = (float) jsonReader.n();
                    break;
                case 3:
                    int iO2 = jsonReader.o();
                    justification2 = DocumentData.Justification.CENTER;
                    if (iO2 <= justification2.ordinal() && iO2 >= 0) {
                        justification2 = DocumentData.Justification.values()[iO2];
                    }
                    break;
                case 4:
                    iO = jsonReader.o();
                    break;
                case 5:
                    fN2 = (float) jsonReader.n();
                    break;
                case 6:
                    fN3 = (float) jsonReader.n();
                    break;
                case 7:
                    iD = lc5.d(jsonReader);
                    break;
                case 8:
                    iD2 = lc5.d(jsonReader);
                    break;
                case 9:
                    fN4 = (float) jsonReader.n();
                    break;
                case 10:
                    zK = jsonReader.k();
                    break;
                case 11:
                    jsonReader.b();
                    PointF pointF3 = new PointF(((float) jsonReader.n()) * f, ((float) jsonReader.n()) * f);
                    jsonReader.e();
                    pointF = pointF3;
                    break;
                case 12:
                    jsonReader.b();
                    PointF pointF4 = new PointF(((float) jsonReader.n()) * f, ((float) jsonReader.n()) * f);
                    jsonReader.e();
                    pointF2 = pointF4;
                    break;
                default:
                    jsonReader.J();
                    jsonReader.K();
                    break;
            }
        }
        jsonReader.g();
        return new DocumentData(strE, strE2, fN, justification2, iO, fN2, fN3, iD, iD2, fN4, zK, pointF, pointF2);
    }
}
