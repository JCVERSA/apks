package defpackage;

import android.graphics.Color;
import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;
import java.util.List;

public abstract class lc5 {
    public static final JsonReader.a a = JsonReader.a.a("x", "y");

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            a = iArr;
            try {
                iArr[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static PointF a(JsonReader jsonReader, float f) {
        jsonReader.b();
        float fN = (float) jsonReader.n();
        float fN2 = (float) jsonReader.n();
        while (jsonReader.G() != JsonReader.Token.END_ARRAY) {
            jsonReader.K();
        }
        jsonReader.e();
        return new PointF(fN * f, fN2 * f);
    }

    public static PointF b(JsonReader jsonReader, float f) {
        float fN = (float) jsonReader.n();
        float fN2 = (float) jsonReader.n();
        while (jsonReader.h()) {
            jsonReader.K();
        }
        return new PointF(fN * f, fN2 * f);
    }

    public static PointF c(JsonReader jsonReader, float f) {
        jsonReader.d();
        float fG = 0.0f;
        float fG2 = 0.0f;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                fG = g(jsonReader);
            } else if (I != 1) {
                jsonReader.J();
                jsonReader.K();
            } else {
                fG2 = g(jsonReader);
            }
        }
        jsonReader.g();
        return new PointF(fG * f, fG2 * f);
    }

    public static int d(JsonReader jsonReader) {
        jsonReader.b();
        int iN = (int) (jsonReader.n() * 255.0d);
        int iN2 = (int) (jsonReader.n() * 255.0d);
        int iN3 = (int) (jsonReader.n() * 255.0d);
        while (jsonReader.h()) {
            jsonReader.K();
        }
        jsonReader.e();
        return Color.argb(255, iN, iN2, iN3);
    }

    public static PointF e(JsonReader jsonReader, float f) {
        int i = a.a[jsonReader.G().ordinal()];
        if (i == 1) {
            return b(jsonReader, f);
        }
        if (i == 2) {
            return a(jsonReader, f);
        }
        if (i == 3) {
            return c(jsonReader, f);
        }
        throw new IllegalArgumentException("Unknown point starts with " + jsonReader.G());
    }

    public static List f(JsonReader jsonReader, float f) {
        ArrayList arrayList = new ArrayList();
        jsonReader.b();
        while (jsonReader.G() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.b();
            arrayList.add(e(jsonReader, f));
            jsonReader.e();
        }
        jsonReader.e();
        return arrayList;
    }

    public static float g(JsonReader jsonReader) {
        JsonReader.Token tokenG = jsonReader.G();
        int i = a.a[tokenG.ordinal()];
        if (i == 1) {
            return (float) jsonReader.n();
        }
        if (i != 2) {
            throw new IllegalArgumentException("Unknown value for token of type " + tokenG);
        }
        jsonReader.b();
        float fN = (float) jsonReader.n();
        while (jsonReader.h()) {
            jsonReader.K();
        }
        jsonReader.e();
        return fN;
    }
}
