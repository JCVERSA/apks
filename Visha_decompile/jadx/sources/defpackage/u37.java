package defpackage;

import androidx.media3.common.C;
import java.text.NumberFormat;
import java.util.Locale;

public abstract class u37 {
    public static String a(double d) {
        NumberFormat numberInstance = NumberFormat.getNumberInstance(Locale.US);
        numberInstance.setMinimumFractionDigits(1);
        numberInstance.setMaximumFractionDigits(1);
        return numberInstance.format(d);
    }

    public static String b(long j) {
        if (j < 1000) {
            return a(j);
        }
        if (j < 1000000) {
            return a(j / 1000.0f) + "k";
        }
        if (j < C.NANOS_PER_SECOND) {
            return a(j / 1000000.0f) + "million";
        }
        return a(j / 1.0E9f) + "billion";
    }
}
