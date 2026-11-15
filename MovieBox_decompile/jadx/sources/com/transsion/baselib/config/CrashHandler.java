package com.transsion.baselib.config;

import android.app.Application;
import android.content.ActivityNotFoundException;
import android.database.sqlite.SQLiteReadOnlyDatabaseException;
import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class CrashHandler implements Thread.UncaughtExceptionHandler {

    public static final a f41888c = new a(null);

    private static final Lazy f41889d = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return CrashHandler.c();
        }
    });

    private Thread.UncaughtExceptionHandler f41890a;

    private Application f41891b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CrashHandler a() {
            return (CrashHandler) CrashHandler.f41889d.getValue();
        }

        private a() {
        }
    }

    private CrashHandler() {
    }

    public static final CrashHandler c() {
        return new CrashHandler();
    }

    private final void f(Throwable th2) {
        k.d(o0.a(y0.b()), null, null, new CrashHandler$dumpExceptionsToSDCard$1(this, th2, null), 3, null);
    }

    private final boolean h(Throwable th2) {
        String message;
        return Intrinsics.c(th2.getClass().getName(), "android.app.RemoteServiceException") && (message = th2.getMessage()) != null && StringsKt.c0(message, "Bad notification", false, 2, null) && StringsKt.c0(message, "ConcurrentModificationException", false, 2, null);
    }

    private final boolean i(Throwable th2) {
        while (th2 != null) {
            if (Intrinsics.c(th2.getClass().getName(), "android.database.CursorWindowAllocationException")) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    private final boolean j(Throwable th2) {
        while (th2 != null) {
            String name = th2.getClass().getName();
            if (Intrinsics.c(name, "android.os.DeadSystemException") || Intrinsics.c(name, "android.os.DeadSystemRuntimeException")) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    private final boolean k(Throwable th2) {
        String message;
        if (!(th2 instanceof IllegalStateException) || (message = th2.getMessage()) == null || !StringsKt.c0(message, "Cannot recycle a resource while it is still acquired", false, 2, null)) {
            return false;
        }
        StackTraceElement[] stackTrace = ((IllegalStateException) th2).getStackTrace();
        Intrinsics.g(stackTrace, "getStackTrace(...)");
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            Intrinsics.g(className, "getClassName(...)");
            if (StringsKt.c0(className, "com.bumptech.glide", false, 2, null)) {
                return true;
            }
        }
        return false;
    }

    private final boolean l(Throwable th2) {
        String message;
        String message2;
        String message3;
        if ((th2 instanceof SecurityException) && (message3 = th2.getMessage()) != null && StringsKt.c0(message3, "com.google.android.gsf.gservices", false, 2, null)) {
            return true;
        }
        if (th2 instanceof NoClassDefFoundError) {
            StackTraceElement[] stackTrace = ((NoClassDefFoundError) th2).getStackTrace();
            Intrinsics.g(stackTrace, "getStackTrace(...)");
            if (StringsKt.c0(ArraysKt.m0(stackTrace, null, null, null, 0, null, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return CrashHandler.m((StackTraceElement) obj);
                }
            }, 31, null), "com.google.android.gms", false, 2, null)) {
                return true;
            }
        }
        if ((th2 instanceof RuntimeException) && (message = th2.getMessage()) != null && StringsKt.c0(message, "Unable to instantiate activity", false, 2, null)) {
            Throwable cause = th2.getCause();
            if ((cause instanceof ClassNotFoundException) && (message2 = ((ClassNotFoundException) cause).getMessage()) != null && StringsKt.c0(message2, "com.google.android.gms", false, 2, null)) {
                return true;
            }
        }
        return false;
    }

    public static final CharSequence m(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        Intrinsics.g(className, "getClassName(...)");
        return className;
    }

    private final boolean n(Throwable th2) {
        String message;
        return (th2 instanceof ActivityNotFoundException) && (message = th2.getMessage()) != null && StringsKt.c0(message, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION", false, 2, null);
    }

    private final boolean o(Throwable th2) {
        String message;
        while (th2 != null) {
            if ((th2 instanceof SQLiteReadOnlyDatabaseException) && (message = ((SQLiteReadOnlyDatabaseException) th2).getMessage()) != null && StringsKt.c0(message, "SQLITE_READONLY_DBMOVED", false, 2, null)) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    public final void g(Application application) {
        this.f41891b = application;
        this.f41890a = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override
    public void uncaughtException(Thread thread, Throwable ex2) {
        String message;
        String message2;
        Intrinsics.h(thread, "thread");
        Intrinsics.h(ex2, "ex");
        f(ex2);
        if (((ex2 instanceof IOException) || (ex2 instanceof ExecutionException)) && (message = ex2.getMessage()) != null && StringsKt.c0(message, "Exception in CronetUrlRequest", false, 2, null)) {
            Log.e("CrashHandler", "error uncaughtException --- " + ex2.getMessage());
            return;
        }
        if (j(ex2)) {
            Log.e("CrashHandler", "Ignored system dead: DeadSystemException / DeadSystemRuntimeException in chain");
            return;
        }
        if (StringsKt.c0(ex2.toString(), "CannotDeliverBroadcastException", false, 2, null)) {
            Log.e("CrashHandler", "error uncaughtException --- " + ex2);
            return;
        }
        if (Build.VERSION.SDK_INT <= 27 && (ex2 instanceof IllegalArgumentException) && (message2 = ex2.getMessage()) != null && StringsKt.W(message2, "reportSizeConfigurations", false, 2, null)) {
            Log.w("CrashHandler", "Ignored system bug: reportSizeConfigurations on Android 7/8");
            return;
        }
        if (l(ex2)) {
            Log.w("CrashHandler", "Ignored GMS unavailable exception: " + ex2.getClass().getSimpleName() + " - " + ex2.getMessage());
            return;
        }
        if (i(ex2)) {
            f(ex2);
            Log.e("CrashHandler", "CursorWindowAllocationException swallowed, thread=" + thread.getName(), ex2);
            return;
        }
        if (o(ex2)) {
            Log.e("CrashHandler", "SQLiteReadOnlyDatabaseException (DBMOVED) swallowed, thread=" + thread.getName(), ex2);
            return;
        }
        if (k(ex2)) {
            Log.w("CrashHandler", "Ignored Glide ResourceRecycler race condition on Android 15+: " + ex2.getMessage());
            return;
        }
        if (h(ex2)) {
            Log.w("CrashHandler", "Ignored OEM SystemUI bad notification crash: " + ex2.getMessage());
            return;
        }
        if (n(ex2)) {
            Log.w("CrashHandler", "Ignored ActivityNotFoundException: MANAGE_ALL_FILES_ACCESS_PERMISSION not available on this device (TV?)");
            return;
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f41890a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, ex2);
        }
    }
}
