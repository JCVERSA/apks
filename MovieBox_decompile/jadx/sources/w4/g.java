package w4;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader;

public class g implements n0 {

    public static final g f74165a = new g();

    private g() {
    }

    @Override
    public Integer a(JsonReader jsonReader, float f10) {
        boolean z10 = jsonReader.t() == JsonReader.Token.BEGIN_ARRAY;
        if (z10) {
            jsonReader.d();
        }
        double dO = jsonReader.o();
        double dO2 = jsonReader.o();
        double dO3 = jsonReader.o();
        double dO4 = jsonReader.t() == JsonReader.Token.NUMBER ? jsonReader.o() : 1.0d;
        if (z10) {
            jsonReader.k();
        }
        if (dO <= 1.0d && dO2 <= 1.0d && dO3 <= 1.0d) {
            dO *= 255.0d;
            dO2 *= 255.0d;
            dO3 *= 255.0d;
            if (dO4 <= 1.0d) {
                dO4 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) dO4, (int) dO, (int) dO2, (int) dO3));
    }
}
