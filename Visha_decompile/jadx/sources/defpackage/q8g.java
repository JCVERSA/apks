package defpackage;

import java.util.concurrent.Executor;

public abstract class q8g {
    public static Executor a;

    public static synchronized Executor a() {
        try {
            if (a == null) {
                a = kfh.f("ExoPlayer:BackgroundExecutor");
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }
}
