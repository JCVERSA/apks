package androidx.compose.foundation.gestures;

import kotlin.jvm.functions.Function3;
import o0.a0;
import o0.z;

public abstract class DraggableKt {

    private static final Function3 f2362a = new DraggableKt$NoOpOnDragStarted$1(null);

    private static final Function3 f2363b = new DraggableKt$NoOpOnDragStopped$1(null);

    public static final long b(long j10) {
        return a0.a(Float.isNaN(z.h(j10)) ? 0.0f : z.h(j10), Float.isNaN(z.i(j10)) ? 0.0f : z.i(j10));
    }
}
