package defpackage;

import android.view.View;

public abstract class ccc {
    public static final boolean a(View view) {
        y45.j(view, "<this>");
        if (view.getLayoutDirection() != 1) {
            return view.getContext() != null && (view.getContext().getResources().getConfiguration().screenLayout & 192) == 128;
        }
        return true;
    }
}
