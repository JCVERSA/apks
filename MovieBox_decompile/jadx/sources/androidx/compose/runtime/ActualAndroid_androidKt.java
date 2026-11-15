package androidx.compose.runtime;

import android.os.Looper;
import android.util.Log;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public abstract class ActualAndroid_androidKt {

    private static final Lazy f3240a = LazyKt.b(new Function0<u0>() {
        @Override
        public final u0 invoke() {
            return Looper.getMainLooper() != null ? DefaultChoreographerFrameClock.f3289a : SdkStubsFallbackFrameClock.f3354a;
        }
    });

    private static final long f3241b;

    static {
        long id2;
        try {
            id2 = Looper.getMainLooper().getThread().getId();
        } catch (Exception unused) {
            id2 = -1;
        }
        f3241b = id2;
    }

    public static final c1 a(float f10) {
        return new ParcelableSnapshotMutableFloatState(f10);
    }

    public static final e1 b(int i10) {
        return new ParcelableSnapshotMutableIntState(i10);
    }

    public static final androidx.compose.runtime.snapshots.r c(Object obj, q2 q2Var) {
        return new ParcelableSnapshotMutableState(obj, q2Var);
    }

    public static final long d() {
        return f3241b;
    }

    public static final void e(String str, Throwable th2) {
        Log.e("ComposeInternal", str, th2);
    }
}
