package defpackage;

import com.airbnb.lottie.parser.moshi.JsonReader;

public class u19 implements onb {
    public static final u19 a = new u19();

    @Override
    public t19 a(JsonReader jsonReader, float f) {
        boolean z = jsonReader.G() == JsonReader.Token.BEGIN_ARRAY;
        if (z) {
            jsonReader.b();
        }
        float fN = (float) jsonReader.n();
        float fN2 = (float) jsonReader.n();
        while (jsonReader.h()) {
            jsonReader.K();
        }
        if (z) {
            jsonReader.e();
        }
        return new t19((fN / 100.0f) * f, (fN2 / 100.0f) * f);
    }
}
