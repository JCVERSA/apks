package w4;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class h0 implements n0 {

    public static final h0 f74168a = new h0();

    private static final JsonReader.a f74169b = JsonReader.a.a("c", "v", "i", "o");

    private h0() {
    }

    @Override
    public t4.i a(JsonReader jsonReader, float f10) {
        if (jsonReader.t() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.d();
        }
        jsonReader.h();
        List listF = null;
        List listF2 = null;
        List listF3 = null;
        boolean zN = false;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74169b);
            if (iV == 0) {
                zN = jsonReader.n();
            } else if (iV == 1) {
                listF = s.f(jsonReader, f10);
            } else if (iV == 2) {
                listF2 = s.f(jsonReader, f10);
            } else if (iV != 3) {
                jsonReader.w();
                jsonReader.x();
            } else {
                listF3 = s.f(jsonReader, f10);
            }
        }
        jsonReader.l();
        if (jsonReader.t() == JsonReader.Token.END_ARRAY) {
            jsonReader.k();
        }
        if (listF == null || listF2 == null || listF3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        }
        if (listF.isEmpty()) {
            return new t4.i(new PointF(), false, Collections.emptyList());
        }
        int size = listF.size();
        PointF pointF = (PointF) listF.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 1; i10 < size; i10++) {
            PointF pointF2 = (PointF) listF.get(i10);
            int i11 = i10 - 1;
            arrayList.add(new r4.a(x4.k.a((PointF) listF.get(i11), (PointF) listF3.get(i11)), x4.k.a(pointF2, (PointF) listF2.get(i10)), pointF2));
        }
        if (zN) {
            PointF pointF3 = (PointF) listF.get(0);
            int i12 = size - 1;
            arrayList.add(new r4.a(x4.k.a((PointF) listF.get(i12), (PointF) listF3.get(i12)), x4.k.a(pointF3, (PointF) listF2.get(0)), pointF3));
        }
        return new t4.i(pointF, zN, arrayList);
    }
}
