package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.c0;
import kotlinx.coroutines.internal.z;

public abstract class k {

    private static final int f65020a = c0.e("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);

    private static final z f65021b = new z("PERMIT");

    private static final z f65022c = new z("TAKEN");

    private static final z f65023d = new z("BROKEN");

    private static final z f65024e = new z("CANCELLED");

    private static final int f65025f = c0.e("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);

    public static final h a(int i10, int i11) {
        return new j(i10, i11);
    }

    public static h b(int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return a(i10, i11);
    }

    public static final l j(long j10, l lVar) {
        return new l(j10, lVar, 0);
    }
}
