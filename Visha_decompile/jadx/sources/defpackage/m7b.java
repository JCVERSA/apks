package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

public abstract class m7b {
    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean a(View view) {
        y45.j(view, "<this>");
        if (!(view instanceof l7b)) {
            return false;
        }
        if (((l7b) view).isTransient()) {
            return true;
        }
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            return a(viewGroup);
        }
        return false;
    }
}
