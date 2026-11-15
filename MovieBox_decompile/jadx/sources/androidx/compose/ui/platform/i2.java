package androidx.compose.ui.platform;

import android.view.ActionMode;
import android.view.View;

public final class i2 {

    public static final i2 f5514a = new i2();

    private i2() {
    }

    public final void a(ActionMode actionMode) {
        actionMode.invalidateContentRect();
    }

    public final ActionMode b(View view, ActionMode.Callback callback, int i10) {
        return view.startActionMode(callback, i10);
    }
}
