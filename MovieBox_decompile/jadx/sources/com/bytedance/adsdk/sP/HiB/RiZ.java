package com.bytedance.adsdk.sP.HiB;

import android.graphics.Color;
import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

class RiZ {

    static class AnonymousClass1 {
        static final int[] Sj;

        static {
            int[] iArr = new int[JsonToken.values().length];
            Sj = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[JsonToken.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[JsonToken.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static PointF EjP(JsonReader jsonReader, float f10) throws IOException {
        jsonReader.beginArray();
        float fNextDouble = (float) jsonReader.nextDouble();
        float fNextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.peek() != JsonToken.END_ARRAY) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
        return new PointF(fNextDouble * f10, fNextDouble2 * f10);
    }

    private static PointF HiB(JsonReader jsonReader, float f10) throws IOException {
        jsonReader.beginObject();
        float fSP = 0.0f;
        float fSP2 = 0.0f;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("x")) {
                fSP = sP(jsonReader);
            } else if (strNextName.equals("y")) {
                fSP2 = sP(jsonReader);
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return new PointF(fSP * f10, fSP2 * f10);
    }

    static int Sj(JsonReader jsonReader) throws IOException {
        jsonReader.beginArray();
        int iNextDouble = (int) (jsonReader.nextDouble() * 255.0d);
        int iNextDouble2 = (int) (jsonReader.nextDouble() * 255.0d);
        int iNextDouble3 = (int) (jsonReader.nextDouble() * 255.0d);
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
        return Color.argb(255, iNextDouble, iNextDouble2, iNextDouble3);
    }

    private static PointF TKC(JsonReader jsonReader, float f10) throws IOException {
        float fNextDouble = (float) jsonReader.nextDouble();
        float fNextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        return new PointF(fNextDouble * f10, fNextDouble2 * f10);
    }

    static PointF sP(JsonReader jsonReader, float f10) throws IOException {
        int i10 = AnonymousClass1.Sj[jsonReader.peek().ordinal()];
        if (i10 == 1) {
            return TKC(jsonReader, f10);
        }
        if (i10 == 2) {
            return EjP(jsonReader, f10);
        }
        if (i10 == 3) {
            return HiB(jsonReader, f10);
        }
        throw new IllegalArgumentException("Unknown point starts with " + jsonReader.peek());
    }

    static float sP(JsonReader jsonReader) throws IOException {
        JsonToken jsonTokenPeek = jsonReader.peek();
        int i10 = AnonymousClass1.Sj[jsonTokenPeek.ordinal()];
        if (i10 == 1) {
            return (float) jsonReader.nextDouble();
        }
        if (i10 == 2) {
            jsonReader.beginArray();
            float fNextDouble = (float) jsonReader.nextDouble();
            while (jsonReader.hasNext()) {
                jsonReader.skipValue();
            }
            jsonReader.endArray();
            return fNextDouble;
        }
        throw new IllegalArgumentException("Unknown value for token of type ".concat(String.valueOf(jsonTokenPeek)));
    }

    static List<PointF> Sj(JsonReader jsonReader, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
            arrayList.add(sP(jsonReader, f10));
            jsonReader.endArray();
        }
        jsonReader.endArray();
        return arrayList;
    }
}
