package androidx.compose.ui.platform;

import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.compose.ui.SessionMutex;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.CoroutineContext;

public final class i0 implements kotlinx.coroutines.n0 {

    private final View f5495a;

    private final androidx.compose.ui.text.input.e0 f5496b;

    private final kotlinx.coroutines.n0 f5497c;

    private final AtomicReference f5498d = SessionMutex.a();

    public i0(View view, androidx.compose.ui.text.input.e0 e0Var, kotlinx.coroutines.n0 n0Var) {
        this.f5495a = view;
        this.f5496b = e0Var;
        this.f5497c = n0Var;
    }

    public final InputConnection a(EditorInfo editorInfo) {
        android.support.v4.media.session.c.a(SessionMutex.c(this.f5498d));
        return null;
    }

    public final boolean b() {
        android.support.v4.media.session.c.a(SessionMutex.c(this.f5498d));
        return false;
    }

    @Override
    public CoroutineContext getCoroutineContext() {
        return this.f5497c.getCoroutineContext();
    }
}
