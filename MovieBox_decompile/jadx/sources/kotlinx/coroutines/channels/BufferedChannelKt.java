package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.internal.c0;
import kotlinx.coroutines.internal.z;

public abstract class BufferedChannelKt {

    private static final j f64696a = new j(-1, null, null, 0);

    public static final int f64697b = c0.e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);

    private static final int f64698c = c0.e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);

    public static final z f64699d = new z("BUFFERED");

    private static final z f64700e = new z("SHOULD_BUFFER");

    private static final z f64701f = new z("S_RESUMING_BY_RCV");

    private static final z f64702g = new z("RESUMING_BY_EB");

    private static final z f64703h = new z("POISONED");

    private static final z f64704i = new z("DONE_RCV");

    private static final z f64705j = new z("INTERRUPTED_SEND");

    private static final z f64706k = new z("INTERRUPTED_RCV");

    private static final z f64707l = new z("CHANNEL_CLOSED");

    private static final z f64708m = new z("SUSPEND");

    private static final z f64709n = new z("SUSPEND_NO_WAITER");

    private static final z f64710o = new z("FAILED");

    private static final z f64711p = new z("NO_RECEIVE_RESULT");

    private static final z f64712q = new z("CLOSE_HANDLER_CLOSED");

    private static final z f64713r = new z("CLOSE_HANDLER_INVOKED");

    private static final z f64714s = new z("NO_CLOSE_CAUSE");

    public static final long A(int i10) {
        if (i10 == 0) {
            return 0L;
        }
        if (i10 != Integer.MAX_VALUE) {
            return i10;
        }
        return Long.MAX_VALUE;
    }

    public static final boolean B(kotlinx.coroutines.n nVar, Object obj, Function3 function3) {
        Object objTryResume = nVar.tryResume(obj, null, function3);
        if (objTryResume == null) {
            return false;
        }
        nVar.completeResume(objTryResume);
        return true;
    }

    static boolean C(kotlinx.coroutines.n nVar, Object obj, Function3 function3, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            function3 = null;
        }
        return B(nVar, obj, function3);
    }

    public static final long v(long j10, boolean z10) {
        return (z10 ? 4611686018427387904L : 0L) + j10;
    }

    public static final long w(long j10, int i10) {
        return (((long) i10) << 60) + j10;
    }

    public static final j x(long j10, j jVar) {
        return new j(j10, jVar, jVar.y(), 0);
    }

    public static final KFunction y() {
        return BufferedChannelKt$createSegmentFunction$1.INSTANCE;
    }

    public static final z z() {
        return f64707l;
    }
}
