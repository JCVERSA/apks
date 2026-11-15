package w4;

import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.parser.moshi.JsonReader;

abstract class y {

    private static final JsonReader.a f74216a = JsonReader.a.a("nm", "mm", "hd");

    static MergePaths a(JsonReader jsonReader) {
        String strR = null;
        boolean zN = false;
        MergePaths.MergePathsMode mergePathsModeForId = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74216a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                mergePathsModeForId = MergePaths.MergePathsMode.forId(jsonReader.p());
            } else if (iV != 2) {
                jsonReader.w();
                jsonReader.x();
            } else {
                zN = jsonReader.n();
            }
        }
        return new MergePaths(strR, mergePathsModeForId, zN);
    }
}
