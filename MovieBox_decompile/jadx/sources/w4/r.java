package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;

public class r implements n0 {

    public static final r f74200a = new r();

    private r() {
    }

    @Override
    public Integer a(JsonReader jsonReader, float f10) {
        return Integer.valueOf(Math.round(s.g(jsonReader) * f10));
    }
}
