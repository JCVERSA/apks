package defpackage;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader;

public class z81 implements onb {
    public static final z81 a = new z81();

    @Override
    public Integer a(JsonReader jsonReader, float f) {
        boolean z = jsonReader.G() == JsonReader.Token.BEGIN_ARRAY;
        if (z) {
            jsonReader.b();
        }
        double dN = jsonReader.n();
        double dN2 = jsonReader.n();
        double dN3 = jsonReader.n();
        double dN4 = jsonReader.G() == JsonReader.Token.NUMBER ? jsonReader.n() : 1.0d;
        if (z) {
            jsonReader.e();
        }
        if (dN <= 1.0d && dN2 <= 1.0d && dN3 <= 1.0d) {
            dN *= 255.0d;
            dN2 *= 255.0d;
            dN3 *= 255.0d;
            if (dN4 <= 1.0d) {
                dN4 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) dN4, (int) dN, (int) dN2, (int) dN3));
    }
}
