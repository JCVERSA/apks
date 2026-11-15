package defpackage;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;

public class ic8 implements onb {
    public static final ic8 a = new ic8();

    @Override
    public PointF a(JsonReader jsonReader, float f) {
        JsonReader.Token tokenG = jsonReader.G();
        if (tokenG != JsonReader.Token.BEGIN_ARRAY && tokenG != JsonReader.Token.BEGIN_OBJECT) {
            if (tokenG == JsonReader.Token.NUMBER) {
                PointF pointF = new PointF(((float) jsonReader.n()) * f, ((float) jsonReader.n()) * f);
                while (jsonReader.h()) {
                    jsonReader.K();
                }
                return pointF;
            }
            throw new IllegalArgumentException("Cannot convert json to point. Next token is " + tokenG);
        }
        return lc5.e(jsonReader, f);
    }
}
