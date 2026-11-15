package defpackage;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;

public abstract class hm8 {
    public static boolean a(boolean z, boolean z2, pd7 pd7Var, boolean z3, om9 om9Var, rc2 rc2Var, hd7 hd7Var) {
        if (hd7Var.cancelled()) {
            om9Var.clear();
            rc2Var.dispose();
            return true;
        }
        if (!z) {
            return false;
        }
        if (z3) {
            if (!z2) {
                return false;
            }
            if (rc2Var != null) {
                rc2Var.dispose();
            }
            Throwable thError = hd7Var.error();
            if (thError != null) {
                pd7Var.onError(thError);
            } else {
                pd7Var.onComplete();
            }
            return true;
        }
        Throwable thError2 = hd7Var.error();
        if (thError2 != null) {
            om9Var.clear();
            if (rc2Var != null) {
                rc2Var.dispose();
            }
            pd7Var.onError(thError2);
            return true;
        }
        if (!z2) {
            return false;
        }
        if (rc2Var != null) {
            rc2Var.dispose();
        }
        pd7Var.onComplete();
        return true;
    }

    public static boolean b(boolean z, boolean z2, d2a d2aVar, boolean z3, om9 om9Var, gm8 gm8Var) {
        if (gm8Var.cancelled()) {
            om9Var.clear();
            return true;
        }
        if (!z) {
            return false;
        }
        if (z3) {
            if (!z2) {
                return false;
            }
            Throwable thError = gm8Var.error();
            if (thError != null) {
                d2aVar.onError(thError);
            } else {
                d2aVar.onComplete();
            }
            return true;
        }
        Throwable thError2 = gm8Var.error();
        if (thError2 != null) {
            om9Var.clear();
            d2aVar.onError(thError2);
            return true;
        }
        if (!z2) {
            return false;
        }
        d2aVar.onComplete();
        return true;
    }

    public static om9 c(int i) {
        return i < 0 ? new mv9(-i) : new SpscArrayQueue(i);
    }

    public static void d(nm9 nm9Var, pd7 pd7Var, boolean z, rc2 rc2Var, hd7 hd7Var) {
        int iLeave = 1;
        while (!a(hd7Var.done(), nm9Var.isEmpty(), pd7Var, z, nm9Var, rc2Var, hd7Var)) {
            while (true) {
                boolean zDone = hd7Var.done();
                Object objPoll = nm9Var.poll();
                boolean z2 = objPoll == null;
                if (a(zDone, z2, pd7Var, z, nm9Var, rc2Var, hd7Var)) {
                    return;
                }
                if (z2) {
                    break;
                } else {
                    hd7Var.accept(pd7Var, objPoll);
                }
            }
            iLeave = hd7Var.leave(-iLeave);
            if (iLeave == 0) {
                return;
            }
        }
    }

    public static void e(nm9 nm9Var, d2a d2aVar, boolean z, rc2 rc2Var, gm8 gm8Var) {
        int iLeave = 1;
        while (true) {
            boolean zDone = gm8Var.done();
            Object objPoll = nm9Var.poll();
            boolean z2 = objPoll == null;
            if (b(zDone, z2, d2aVar, z, nm9Var, gm8Var)) {
                if (rc2Var != null) {
                    rc2Var.dispose();
                    return;
                }
                return;
            } else if (z2) {
                iLeave = gm8Var.leave(-iLeave);
                if (iLeave == 0) {
                    return;
                }
            } else {
                long jRequested = gm8Var.requested();
                if (jRequested == 0) {
                    nm9Var.clear();
                    if (rc2Var != null) {
                        rc2Var.dispose();
                    }
                    d2aVar.onError(new MissingBackpressureException("Could not emit value due to lack of requests."));
                    return;
                }
                if (gm8Var.accept(d2aVar, objPoll) && jRequested != Long.MAX_VALUE) {
                    gm8Var.produced(1L);
                }
            }
        }
    }

    public static void f(f2a f2aVar, int i) {
        f2aVar.request(i < 0 ? Long.MAX_VALUE : i);
    }
}
