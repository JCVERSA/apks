package androidx.compose.ui.text.input;

import android.view.View;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.SoftwareKeyboardControllerCompat;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class InputMethodManagerImpl implements r {

    private final View f5889a;

    private final Lazy f5890b = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<InputMethodManager>() {
        {
            super(0);
        }

        @Override
        public final InputMethodManager invoke() {
            Object systemService = this.this$0.f5889a.getContext().getSystemService("input_method");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            return (InputMethodManager) systemService;
        }
    });

    private final SoftwareKeyboardControllerCompat f5891c;

    public InputMethodManagerImpl(View view) {
        this.f5889a = view;
        this.f5891c = new SoftwareKeyboardControllerCompat(view);
    }

    private final InputMethodManager c() {
        return (InputMethodManager) this.f5890b.getValue();
    }

    @Override
    public void a(CursorAnchorInfo cursorAnchorInfo) {
        c().updateCursorAnchorInfo(this.f5889a, cursorAnchorInfo);
    }

    @Override
    public boolean isActive() {
        return c().isActive(this.f5889a);
    }
}
