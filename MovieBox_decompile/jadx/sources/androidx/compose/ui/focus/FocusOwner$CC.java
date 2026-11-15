package androidx.compose.ui.focus;

import android.view.KeyEvent;
import kotlin.jvm.functions.Function0;

public abstract class FocusOwner$CC {
    public static boolean a(i iVar, KeyEvent keyEvent, Function0 function0, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: dispatchKeyEvent-YhN2O0w");
        }
        if ((i10 & 2) != 0) {
            function0 = new Function0<Boolean>() {
                @Override
                public final Boolean invoke() {
                    return Boolean.FALSE;
                }
            };
        }
        return iVar.i(keyEvent, function0);
    }
}
