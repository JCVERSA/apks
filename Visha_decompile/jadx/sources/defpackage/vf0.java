package defpackage;

public abstract class vf0 {
    public static void a() {
        if (yw8.j()) {
            if ((Thread.currentThread() instanceof j17) || yw8.q()) {
                throw new IllegalStateException("Attempt to block on a Scheduler " + Thread.currentThread().getName() + " that doesn't support blocking operators as they may lead to deadlock");
            }
        }
    }
}
