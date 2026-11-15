package jn;

import android.app.NotificationManager;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class c {

    public static final c f63185a;

    private static boolean f63186b;

    private static int f63187c;

    private static int f63188d;

    private static int f63189e;

    private static volatile int f63190f;

    private static final Lazy f63191g;

    private static final Lazy f63192h;

    public static final class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override
        public void onChange(boolean z10, Uri uri) {
            super.onChange(z10, uri);
            c.f63185a.d();
        }
    }

    static {
        c cVar = new c();
        f63185a = cVar;
        f63186b = true;
        f63187c = 200;
        f63188d = 100;
        f63189e = 15;
        f63190f = 100;
        f63191g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return c.i();
            }
        });
        f63192h = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return c.j();
            }
        });
        Utils.a().getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, new a(new Handler()));
        try {
            Result.Companion companion = Result.INSTANCE;
            f63189e = cVar.f().getStreamMaxVolume(3);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        f63185a.h();
    }

    private c() {
    }

    private final AudioManager f() {
        return (AudioManager) f63191g.getValue();
    }

    private final NotificationManager g() {
        return (NotificationManager) f63192h.getValue();
    }

    public static final AudioManager i() {
        Object systemService = Utils.a().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        return (AudioManager) systemService;
    }

    public static final NotificationManager j() {
        Object systemService = Utils.a().getSystemService("notification");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        return (NotificationManager) systemService;
    }

    public final void c(int i10, float f10) {
        float f11 = (i10 + f10) / 100.0f;
        int i11 = f63189e;
        int i12 = (int) (f11 * i11);
        if (i12 <= 0) {
            i11 = 0;
        } else if (i12 < i11) {
            i11 = i12;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("preVolume:");
        sb2.append(i10);
        sb2.append(", volume:");
        sb2.append(i11);
        try {
            if (f().isVolumeFixed() && !f63186b) {
                return;
            }
            f().setStreamVolume(3, i11, 0);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public final void d() {
        try {
            Result.Companion companion = Result.INSTANCE;
            int streamVolume = f().getStreamVolume(3);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("checkCurVolume volume:");
            sb2.append(streamVolume);
            if (streamVolume < f63189e) {
                int i10 = f63190f;
                int i11 = f63189e;
                int i12 = f63188d;
                if ((i10 * i11) / i12 != streamVolume) {
                    f63190f = (streamVolume * i12) / i11;
                }
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final int e() {
        return f63190f;
    }

    public final void h() {
        try {
            Result.Companion companion = Result.INSTANCE;
            f63186b = g().isNotificationPolicyAccessGranted();
            int streamVolume = f().getStreamVolume(3);
            f63190f = (f63188d * streamVolume) / f63189e;
            Result.m453constructorimpl(Integer.valueOf(Log.d("AppVolumeManager", "curVolume:" + f63190f + ", volume:" + streamVolume + " system:" + f63189e)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final int k(int i10) {
        int iE = RangesKt.e(RangesKt.h(f63190f + i10, f63187c), 0);
        if (iE <= f63188d) {
            c(f63190f, i10);
        }
        f63190f = iE;
        return iE;
    }
}
