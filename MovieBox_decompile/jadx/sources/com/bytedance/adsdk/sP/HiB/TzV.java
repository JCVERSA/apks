package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;

public class TzV implements Ei<Integer> {
    public static final TzV Sj = new TzV();

    private TzV() {
    }

    @Override
    public Integer sP(JsonReader jsonReader, float f10) throws IOException {
        return Integer.valueOf(Math.round(RiZ.sP(jsonReader) * f10));
    }
}
