package defpackage;

import android.util.Log;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class w {
    public static final a a = new a(null);
    public static int b = -1;
    public static int c = -1;
    public static int d = -1;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            if (w.b == -1) {
                boolean zE = y45.e("1", maa.d("ro.tr_aiservice.aicorespeech_subtitle.feature.support"));
                w.b = zE ? 1 : 0;
                Log.d("AISubtitleFeatureUtils", "isSupportAiCoreSubtitle: " + zE);
            }
            return w.b == 1;
        }

        public final boolean b() {
            return a() || c() || e();
        }

        public final boolean c() {
            if (ydc.e()) {
                return false;
            }
            if (w.c == -1) {
                boolean zE = y45.e("1", maa.d("ro.sys.tran.ai_subtitles_support"));
                w.c = zE ? 1 : 0;
                Log.d("AISubtitleFeatureUtils", "isSupportMiddlewareAiSubtitle: " + zE);
            }
            return w.c == 1;
        }

        public final boolean d() {
            return a() || c();
        }

        public final boolean e() {
            if (ydc.e()) {
                return false;
            }
            if (w.d == -1) {
                boolean zE = y45.e("1", maa.d("ro.os_ai_visha_subtitle_support"));
                w.d = zE ? 1 : 0;
                Log.d("AISubtitleFeatureUtils", "isSupportSoftBusAiSubtitle: " + zE);
            }
            return w.d == 1;
        }

        public a() {
        }
    }

    public static final boolean g() {
        return a.a();
    }

    public static final boolean h() {
        return a.b();
    }

    public static final boolean i() {
        return a.c();
    }

    public static final boolean j() {
        return a.d();
    }

    public static final boolean k() {
        return a.e();
    }
}
