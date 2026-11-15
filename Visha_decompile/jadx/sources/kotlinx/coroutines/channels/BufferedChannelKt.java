package kotlinx.coroutines.channels;

import defpackage.cr0;
import defpackage.eu0;
import defpackage.le5;
import defpackage.paa;
import defpackage.u74;
import defpackage.y7a;

public abstract class BufferedChannelKt {
    public static final eu0 a = new eu0(-1, null, null, 0);
    public static final int b = paa.e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);
    public static final int c = paa.e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);
    public static final y7a d = new y7a("BUFFERED");
    public static final y7a e = new y7a("SHOULD_BUFFER");
    public static final y7a f = new y7a("S_RESUMING_BY_RCV");
    public static final y7a g = new y7a("RESUMING_BY_EB");
    public static final y7a h = new y7a("POISONED");
    public static final y7a i = new y7a("DONE_RCV");
    public static final y7a j = new y7a("INTERRUPTED_SEND");
    public static final y7a k = new y7a("INTERRUPTED_RCV");
    public static final y7a l = new y7a("CHANNEL_CLOSED");
    public static final y7a m = new y7a("SUSPEND");
    public static final y7a n = new y7a("SUSPEND_NO_WAITER");
    public static final y7a o = new y7a("FAILED");
    public static final y7a p = new y7a("NO_RECEIVE_RESULT");
    public static final y7a q = new y7a("CLOSE_HANDLER_CLOSED");
    public static final y7a r = new y7a("CLOSE_HANDLER_INVOKED");
    public static final y7a s = new y7a("NO_CLOSE_CAUSE");

    public static final long A(int i2) {
        if (i2 == 0) {
            return 0L;
        }
        if (i2 != Integer.MAX_VALUE) {
            return i2;
        }
        return Long.MAX_VALUE;
    }

    public static final boolean B(cr0 cr0Var, Object obj, u74 u74Var) {
        Object objTryResume = cr0Var.tryResume(obj, null, u74Var);
        if (objTryResume == null) {
            return false;
        }
        cr0Var.completeResume(objTryResume);
        return true;
    }

    public static boolean C(cr0 cr0Var, Object obj, u74 u74Var, int i2, Object obj2) {
        if ((i2 & 2) != 0) {
            u74Var = null;
        }
        return B(cr0Var, obj, u74Var);
    }

    public static final long v(long j2, boolean z) {
        return (z ? 4611686018427387904L : 0L) + j2;
    }

    public static final long w(long j2, int i2) {
        return (((long) i2) << 60) + j2;
    }

    public static final eu0 x(long j2, eu0 eu0Var) {
        return new eu0(j2, eu0Var, eu0Var.y(), 0);
    }

    public static final le5 y() {
        return BufferedChannelKt$createSegmentFunction$1.INSTANCE;
    }

    public static final y7a z() {
        return l;
    }
}
