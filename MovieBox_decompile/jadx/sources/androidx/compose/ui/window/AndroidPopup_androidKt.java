package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import kotlin.jvm.functions.Function0;
import o0.r;

public abstract class AndroidPopup_androidKt {

    private static final s1 f6212a = CompositionLocalKt.d(null, new Function0<String>() {
        @Override
        public final String invoke() {
            return "DEFAULT_TEST_TAG";
        }
    }, 1, null);

    public static final int c(j jVar, boolean z10) {
        throw null;
    }

    public static final boolean d(View view) {
        ViewGroup.LayoutParams layoutParams = view.getRootView().getLayoutParams();
        WindowManager.LayoutParams layoutParams2 = layoutParams instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams : null;
        return (layoutParams2 == null || (layoutParams2.flags & 8192) == 0) ? false : true;
    }

    public static final r e(Rect rect) {
        return new r(rect.left, rect.top, rect.right, rect.bottom);
    }
}
