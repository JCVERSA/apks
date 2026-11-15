package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import android.util.JsonToken;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

class dx {
    static <T> List<com.bytedance.adsdk.sP.Jcg.Sj<T>> Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg, float f10, Ei<T> ei2, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.STRING) {
            jcg.Sj("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (!strNextName.equals(CampaignEx.JSON_KEY_AD_K)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                if (jsonReader.peek() == JsonToken.NUMBER) {
                    arrayList.add(sU.Sj(jsonReader, jcg, f10, ei2, false, z10));
                } else {
                    while (jsonReader.hasNext()) {
                        arrayList.add(sU.Sj(jsonReader, jcg, f10, ei2, true, z10));
                    }
                }
                jsonReader.endArray();
            } else {
                arrayList.add(sU.Sj(jsonReader, jcg, f10, ei2, false, z10));
            }
        }
        jsonReader.endObject();
        Sj(arrayList);
        return arrayList;
    }

    public static <T> void Sj(List<? extends com.bytedance.adsdk.sP.Jcg.Sj<T>> list) {
        int i10;
        T t10;
        int size = list.size();
        int i11 = 0;
        while (true) {
            i10 = size - 1;
            if (i11 >= i10) {
                break;
            }
            com.bytedance.adsdk.sP.Jcg.Sj<T> sj2 = list.get(i11);
            i11++;
            com.bytedance.adsdk.sP.Jcg.Sj<T> sj3 = list.get(i11);
            sj2.Jcg = Float.valueOf(sj3.vS);
            if (sj2.sP == null && (t10 = sj3.Sj) != null) {
                sj2.sP = t10;
                if (sj2 instanceof com.bytedance.adsdk.sP.Sj.sP.uA) {
                    ((com.bytedance.adsdk.sP.Sj.sP.uA) sj2).Sj();
                }
            }
        }
        com.bytedance.adsdk.sP.Jcg.Sj<T> sj4 = list.get(i10);
        if ((sj4.Sj == null || sj4.sP == null) && list.size() > 1) {
            list.remove(sj4);
        }
    }
}
