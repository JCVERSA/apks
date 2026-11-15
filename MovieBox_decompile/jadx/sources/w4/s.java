package w4;

import android.graphics.Color;
import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;
import java.util.List;

abstract class s {

    private static final JsonReader.a f74201a = JsonReader.a.a("x", "y");

    static class a {

        static final int[] f74202a;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            f74202a = iArr;
            try {
                iArr[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74202a[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f74202a[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static PointF a(JsonReader jsonReader, float f10) {
        jsonReader.d();
        float fO = (float) jsonReader.o();
        float fO2 = (float) jsonReader.o();
        while (jsonReader.t() != JsonReader.Token.END_ARRAY) {
            jsonReader.x();
        }
        jsonReader.k();
        return new PointF(fO * f10, fO2 * f10);
    }

    private static PointF b(JsonReader jsonReader, float f10) {
        float fO = (float) jsonReader.o();
        float fO2 = (float) jsonReader.o();
        while (jsonReader.m()) {
            jsonReader.x();
        }
        return new PointF(fO * f10, fO2 * f10);
    }

    private static PointF c(JsonReader jsonReader, float f10) {
        jsonReader.h();
        float fG = 0.0f;
        float fG2 = 0.0f;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74201a);
            if (iV == 0) {
                fG = g(jsonReader);
            } else if (iV != 1) {
                jsonReader.w();
                jsonReader.x();
            } else {
                fG2 = g(jsonReader);
            }
        }
        jsonReader.l();
        return new PointF(fG * f10, fG2 * f10);
    }

    static int d(JsonReader jsonReader) {
        jsonReader.d();
        int iO = (int) (jsonReader.o() * 255.0d);
        int iO2 = (int) (jsonReader.o() * 255.0d);
        int iO3 = (int) (jsonReader.o() * 255.0d);
        while (jsonReader.m()) {
            jsonReader.x();
        }
        jsonReader.k();
        return Color.argb(255, iO, iO2, iO3);
    }

    static PointF e(JsonReader jsonReader, float f10) {
        int i10 = a.f74202a[jsonReader.t().ordinal()];
        if (i10 == 1) {
            return b(jsonReader, f10);
        }
        if (i10 == 2) {
            return a(jsonReader, f10);
        }
        if (i10 == 3) {
            return c(jsonReader, f10);
        }
        throw new IllegalArgumentException("Unknown point starts with " + jsonReader.t());
    }

    static List f(JsonReader jsonReader, float f10) {
        ArrayList arrayList = new ArrayList();
        jsonReader.d();
        while (jsonReader.t() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.d();
            arrayList.add(e(jsonReader, f10));
            jsonReader.k();
        }
        jsonReader.k();
        return arrayList;
    }

    static float g(JsonReader jsonReader) {
        JsonReader.Token tokenT = jsonReader.t();
        int i10 = a.f74202a[tokenT.ordinal()];
        if (i10 == 1) {
            return (float) jsonReader.o();
        }
        if (i10 != 2) {
            throw new IllegalArgumentException("Unknown value for token of type " + tokenT);
        }
        jsonReader.d();
        float fO = (float) jsonReader.o();
        while (jsonReader.m()) {
            jsonReader.x();
        }
        jsonReader.k();
        return fO;
    }
}
