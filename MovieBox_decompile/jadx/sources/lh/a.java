package lh;

import android.util.Log;
import com.tn.tranpay.logger.LogLevel;
import com.tn.tranpay.logger.LoggerPlugin;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private static boolean f65701c;

    public static final a f65699a = new a();

    private static LogLevel f65700b = LogLevel.INFO;

    private static final CopyOnWriteArrayList f65702d = new CopyOnWriteArrayList();

    public class C0807a {

        public static final int[] f65703a;

        static {
            int[] iArr = new int[LogLevel.values().length];
            try {
                iArr[LogLevel.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LogLevel.INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LogLevel.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LogLevel.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f65703a = iArr;
        }
    }

    private a() {
    }

    public static void c(a aVar, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = "TranPay";
        }
        aVar.b(str, str2);
    }

    public static void e(a aVar, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = "TranPay";
        }
        aVar.d(str, str2);
    }

    public static void g(a aVar, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = "TranPay";
        }
        aVar.f(str, str2);
    }

    private final void i(LogLevel logLevel, String str, String str2) {
        if (logLevel.ordinal() < f65700b.ordinal()) {
            return;
        }
        if (f65701c) {
            int i10 = C0807a.f65703a[logLevel.ordinal()];
            if (i10 == 3) {
                Log.w(str, str2);
            } else if (i10 == 4) {
                Log.e(str, str2);
            }
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            for (LoggerPlugin loggerPlugin : f65702d) {
                if (loggerPlugin != null) {
                    loggerPlugin.log(logLevel, str, str2);
                }
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static void k(a aVar, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = "TranPay";
        }
        aVar.j(str, str2);
    }

    public final void a(LoggerPlugin loggerPlugin) {
        if (loggerPlugin != null) {
            f65702d.add(loggerPlugin);
        } else {
            Log.e("TranPay", "Attempt to add null plugin ignored");
        }
    }

    public final void b(String message, String tag) {
        Intrinsics.h(message, "message");
        Intrinsics.h(tag, "tag");
        i(LogLevel.DEBUG, tag, message);
    }

    public final void d(String message, String tag) {
        Intrinsics.h(message, "message");
        Intrinsics.h(tag, "tag");
        i(LogLevel.ERROR, tag, message);
    }

    public final void f(String message, String tag) {
        Intrinsics.h(message, "message");
        Intrinsics.h(tag, "tag");
        i(LogLevel.INFO, tag, message);
    }

    public final void h(LogLevel level, boolean z10) {
        Intrinsics.h(level, "level");
        f65700b = level;
        f65701c = z10;
    }

    public final void j(String message, String tag) {
        Intrinsics.h(message, "message");
        Intrinsics.h(tag, "tag");
        i(LogLevel.WARNING, tag, message);
    }
}
