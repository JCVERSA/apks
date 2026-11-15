package defpackage;

import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.parser.moshi.JsonReader;

public abstract class mn6 {
    public static final JsonReader.a a = JsonReader.a.a("nm", "mm", "hd");

    public static MergePaths a(JsonReader jsonReader) {
        String strE = null;
        boolean zK = false;
        MergePaths.MergePathsMode mergePathsModeForId = null;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                strE = jsonReader.E();
            } else if (I == 1) {
                mergePathsModeForId = MergePaths.MergePathsMode.forId(jsonReader.o());
            } else if (I != 2) {
                jsonReader.J();
                jsonReader.K();
            } else {
                zK = jsonReader.k();
            }
        }
        return new MergePaths(strE, mergePathsModeForId, zK);
    }
}
