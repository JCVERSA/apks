package defpackage;

import android.os.Vibrator;
import com.blankj.utilcode.util.Utils;

public abstract class wob {
    public static Vibrator a;

    public static Vibrator a() {
        if (a == null) {
            a = (Vibrator) Utils.a().getSystemService("vibrator");
        }
        return a;
    }

    public static void b(long j) {
        Vibrator vibratorA = a();
        if (vibratorA == null) {
            return;
        }
        vibratorA.vibrate(j);
    }
}
