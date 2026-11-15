package androidx.media3.common.util;

import java.util.concurrent.Executor;

public abstract class c {

    private static Executor f10059a;

    public static synchronized Executor a() {
        try {
            if (f10059a == null) {
                f10059a = a1.S0("ExoPlayer:BackgroundExecutor");
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f10059a;
    }
}
