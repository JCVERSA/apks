package defpackage;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.dbdata.beans.media.PlayAudioData;
import java.util.ArrayList;

public abstract class u24 {
    public static final JsonReader.a a = JsonReader.a.a(DownloadFacadeEnum.USER_CH, PlayAudioData.TAG_SIZE, "w", "style", "fFamily", "data");
    public static final JsonReader.a b = JsonReader.a.a("shapes");

    public static t24 a(JsonReader jsonReader, ur5 ur5Var) {
        ArrayList arrayList = new ArrayList();
        jsonReader.d();
        double dN = 0.0d;
        String strE = null;
        String strE2 = null;
        char cCharAt = 0;
        double dN2 = 0.0d;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                cCharAt = jsonReader.E().charAt(0);
            } else if (I == 1) {
                dN2 = jsonReader.n();
            } else if (I == 2) {
                dN = jsonReader.n();
            } else if (I == 3) {
                strE = jsonReader.E();
            } else if (I == 4) {
                strE2 = jsonReader.E();
            } else if (I != 5) {
                jsonReader.J();
                jsonReader.K();
            } else {
                jsonReader.d();
                while (jsonReader.h()) {
                    if (jsonReader.I(b) != 0) {
                        jsonReader.J();
                        jsonReader.K();
                    } else {
                        jsonReader.b();
                        while (jsonReader.h()) {
                            arrayList.add((wf9) bh1.a(jsonReader, ur5Var));
                        }
                        jsonReader.e();
                    }
                }
                jsonReader.g();
            }
        }
        jsonReader.g();
        return new t24(arrayList, cCharAt, dN2, dN, strE, strE2);
    }
}
