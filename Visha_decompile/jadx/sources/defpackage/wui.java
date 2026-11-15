package defpackage;

import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.android.gms.internal.ads.zzgyk;
import okio.Utf8;

public abstract class wui {
    public static void a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzgyk {
        if (g(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || g(b3) || g(b4)) {
            throw new zzgyk("Protocol message had invalid UTF-8.");
        }
        int i2 = ((b & 7) << 18) | ((b2 & Utf8.REPLACEMENT_BYTE) << 12) | ((b3 & Utf8.REPLACEMENT_BYTE) << 6) | (b4 & Utf8.REPLACEMENT_BYTE);
        cArr[i] = (char) ((i2 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
        cArr[i + 1] = (char) ((i2 & AnalyticsListener.EVENT_DRM_KEYS_LOADED) + Utf8.LOG_SURROGATE_HEADER);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0013 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:11:0x0015  */
    /* JADX WARN: Code duplicated, block: B:12:0x0016 A[PHI: r2
      0x0016: PHI (r2v3 byte) = (r2v2 byte), (r2v9 byte) binds: [B:9:0x0011, B:11:0x0015] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x001c  */
    public static void b(byte b, byte b2, byte b3, char[] cArr, int i) throws zzgyk {
        if (!g(b2)) {
            if (b != -32) {
                if (b != -19) {
                    if (!g(b3)) {
                        cArr[i] = (char) (((b & 15) << 12) | ((b2 & Utf8.REPLACEMENT_BYTE) << 6) | (b3 & Utf8.REPLACEMENT_BYTE));
                        return;
                    }
                } else if (b2 < -96) {
                    b = -19;
                    if (!g(b3)) {
                        cArr[i] = (char) (((b & 15) << 12) | ((b2 & Utf8.REPLACEMENT_BYTE) << 6) | (b3 & Utf8.REPLACEMENT_BYTE));
                        return;
                    }
                }
            } else if (b2 >= -96) {
                b = -32;
                if (b != -19) {
                    if (!g(b3)) {
                        cArr[i] = (char) (((b & 15) << 12) | ((b2 & Utf8.REPLACEMENT_BYTE) << 6) | (b3 & Utf8.REPLACEMENT_BYTE));
                        return;
                    }
                } else if (b2 < -96) {
                    b = -19;
                    if (!g(b3)) {
                        cArr[i] = (char) (((b & 15) << 12) | ((b2 & Utf8.REPLACEMENT_BYTE) << 6) | (b3 & Utf8.REPLACEMENT_BYTE));
                        return;
                    }
                }
            }
        }
        throw new zzgyk("Protocol message had invalid UTF-8.");
    }

    public static void c(byte b, byte b2, char[] cArr, int i) throws zzgyk {
        if (b < -62 || g(b2)) {
            throw new zzgyk("Protocol message had invalid UTF-8.");
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & Utf8.REPLACEMENT_BYTE));
    }

    public static boolean d(byte b) {
        return b >= 0;
    }

    public static boolean e(byte b) {
        return b < -16;
    }

    public static boolean f(byte b) {
        return b < -32;
    }

    public static boolean g(byte b) {
        return b > -65;
    }
}
