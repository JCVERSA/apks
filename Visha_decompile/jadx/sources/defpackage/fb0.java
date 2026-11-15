package defpackage;

import android.util.Log;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;

public abstract class fb0 {
    public static void a(int i, String str, String str2) {
        int length = str2.length();
        int i2 = length / FlacTagCreator.DEFAULT_PADDING;
        if (i2 <= 0) {
            b(i, str, str2);
            return;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i4 + FlacTagCreator.DEFAULT_PADDING;
            b(i, str, str2.substring(i4, i5));
            i3++;
            i4 = i5;
        }
        b(i, str, str2.substring(i4, length));
    }

    public static void b(int i, String str, String str2) {
        switch (i) {
            case 1:
                Log.v(str, str2);
                break;
            case 2:
                Log.d(str, str2);
                break;
            case 3:
                Log.i(str, str2);
                break;
            case 4:
                Log.w(str, str2);
                break;
            case 5:
                Log.e(str, str2);
                break;
            case 6:
                Log.wtf(str, str2);
                break;
        }
    }
}
