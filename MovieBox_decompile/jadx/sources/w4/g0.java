package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;

public class g0 implements n0 {

    public static final g0 f74166a = new g0();

    private g0() {
    }

    @Override
    public y4.d a(JsonReader jsonReader, float f10) {
        boolean z10 = jsonReader.t() == JsonReader.Token.BEGIN_ARRAY;
        if (z10) {
            jsonReader.d();
        }
        float fO = (float) jsonReader.o();
        float fO2 = (float) jsonReader.o();
        while (jsonReader.m()) {
            jsonReader.x();
        }
        if (z10) {
            jsonReader.k();
        }
        return new y4.d((fO / 100.0f) * f10, (fO2 / 100.0f) * f10);
    }
}
