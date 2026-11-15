package defpackage;

import android.graphics.PointF;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class tf9 implements onb {
    public static final tf9 a = new tf9();
    public static final JsonReader.a b = JsonReader.a.a("c", "v", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "o");

    @Override
    public sf9 a(JsonReader jsonReader, float f) {
        if (jsonReader.G() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.b();
        }
        jsonReader.d();
        List listF = null;
        List listF2 = null;
        List listF3 = null;
        boolean zK = false;
        while (jsonReader.h()) {
            int I = jsonReader.I(b);
            if (I == 0) {
                zK = jsonReader.k();
            } else if (I == 1) {
                listF = lc5.f(jsonReader, f);
            } else if (I == 2) {
                listF2 = lc5.f(jsonReader, f);
            } else if (I != 3) {
                jsonReader.J();
                jsonReader.K();
            } else {
                listF3 = lc5.f(jsonReader, f);
            }
        }
        jsonReader.g();
        if (jsonReader.G() == JsonReader.Token.END_ARRAY) {
            jsonReader.e();
        }
        if (listF == null || listF2 == null || listF3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        }
        if (listF.isEmpty()) {
            return new sf9(new PointF(), false, Collections.emptyList());
        }
        int size = listF.size();
        PointF pointF = (PointF) listF.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int i = 1; i < size; i++) {
            PointF pointF2 = (PointF) listF.get(i);
            int i2 = i - 1;
            arrayList.add(new gm1(xp6.a((PointF) listF.get(i2), (PointF) listF3.get(i2)), xp6.a(pointF2, (PointF) listF2.get(i)), pointF2));
        }
        if (zK) {
            PointF pointF3 = (PointF) listF.get(0);
            int i3 = size - 1;
            arrayList.add(new gm1(xp6.a((PointF) listF.get(i3), (PointF) listF3.get(i3)), xp6.a(pointF3, (PointF) listF2.get(0)), pointF3));
        }
        return new sf9(pointF, zK, arrayList);
    }
}
