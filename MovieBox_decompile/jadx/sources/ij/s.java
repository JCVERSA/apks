package ij;

import android.location.Location;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

public final class s {

    public static final s f62120a = new s();

    private s() {
    }

    public final String a(double d10, double d11, double d12, double d13) {
        float f10;
        try {
            float[] fArr = new float[1];
            Location.distanceBetween(d10, d11, d12, d13, fArr);
            f10 = fArr[0];
        } catch (Throwable unused) {
            f10 = -1.0f;
        }
        if (f10 < 0.1f) {
            return "<0.1m";
        }
        if (f10 < 1000.0f) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str = String.format("%.1fm", Arrays.copyOf(new Object[]{Float.valueOf(f10)}, 1));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.f64324a;
        String str2 = String.format("%.1fkm", Arrays.copyOf(new Object[]{Float.valueOf(f10 / 1000)}, 1));
        Intrinsics.g(str2, "format(...)");
        return str2;
    }

    public final float b(double d10, double d11, double d12, double d13) {
        try {
            float[] fArr = new float[1];
            Location.distanceBetween(d10, d11, d12, d13, fArr);
            return fArr[0];
        } catch (Throwable unused) {
            return -1.0f;
        }
    }
}
