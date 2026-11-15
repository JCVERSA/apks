package defpackage;

import android.util.Log;
import java.lang.ref.WeakReference;

public abstract class e1e extends a7b {
    public static nu8 a(e1e e1eVar) {
        throw null;
    }

    public static w0e b(e1e e1eVar) {
        throw null;
    }

    public static WeakReference c(e1e e1eVar) {
        throw null;
    }

    public static final void e(lu8 lu8Var) {
        if (lu8Var instanceof ur8) {
            try {
                ((ur8) lu8Var).release();
            } catch (RuntimeException e) {
                Log.w("TransformedResultImpl", "Unable to release ".concat(String.valueOf(lu8Var)), e);
            }
        }
    }
}
