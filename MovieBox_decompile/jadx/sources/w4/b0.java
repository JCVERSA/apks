package w4;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;

public class b0 implements n0 {

    public static final b0 f74155a = new b0();

    private b0() {
    }

    @Override
    public PointF a(JsonReader jsonReader, float f10) {
        JsonReader.Token tokenT = jsonReader.t();
        if (tokenT == JsonReader.Token.BEGIN_ARRAY) {
            return s.e(jsonReader, f10);
        }
        if (tokenT == JsonReader.Token.BEGIN_OBJECT) {
            return s.e(jsonReader, f10);
        }
        if (tokenT == JsonReader.Token.NUMBER) {
            PointF pointF = new PointF(((float) jsonReader.o()) * f10, ((float) jsonReader.o()) * f10);
            while (jsonReader.m()) {
                jsonReader.x();
            }
            return pointF;
        }
        throw new IllegalArgumentException("Cannot convert json to point. Next token is " + tokenT);
    }
}
