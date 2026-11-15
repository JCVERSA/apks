package com.bytedance.adsdk.sP.HiB;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;

public class LqL implements Ei<PointF> {
    public static final LqL Sj = new LqL();

    private LqL() {
    }

    @Override
    public PointF sP(JsonReader jsonReader, float f10) throws IOException {
        JsonToken jsonTokenPeek = jsonReader.peek();
        if (jsonTokenPeek == JsonToken.BEGIN_ARRAY) {
            return RiZ.sP(jsonReader, f10);
        }
        if (jsonTokenPeek == JsonToken.BEGIN_OBJECT) {
            return RiZ.sP(jsonReader, f10);
        }
        if (jsonTokenPeek != JsonToken.NUMBER) {
            throw new IllegalArgumentException("Cannot convert json to point. Next token is ".concat(String.valueOf(jsonTokenPeek)));
        }
        PointF pointF = new PointF(((float) jsonReader.nextDouble()) * f10, ((float) jsonReader.nextDouble()) * f10);
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        return pointF;
    }
}
