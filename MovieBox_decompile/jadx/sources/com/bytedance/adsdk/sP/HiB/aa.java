package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;

public class aa implements Ei<Float> {
    public static final aa Sj = new aa();

    private aa() {
    }

    @Override
    public Float sP(JsonReader jsonReader, float f10) throws IOException {
        return Float.valueOf(RiZ.sP(jsonReader) * f10);
    }
}
