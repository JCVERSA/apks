package defpackage;

import android.view.KeyEvent;
import android.view.ViewGroup;

public interface ig2 {
    /* JADX WARN: Multi-variable type inference failed */
    default void startDivAnimation() {
        ViewGroup viewGroup;
        int childCount;
        if (!(this instanceof ViewGroup) || (childCount = (viewGroup = (ViewGroup) this).getChildCount()) < 0) {
            return;
        }
        int i = 0;
        while (true) {
            KeyEvent.Callback childAt = viewGroup.getChildAt(i);
            ig2 ig2Var = childAt instanceof ig2 ? (ig2) childAt : null;
            if (ig2Var != null) {
                ig2Var.startDivAnimation();
            }
            if (i == childCount) {
                return;
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    default void stopDivAnimation() {
        ViewGroup viewGroup;
        int childCount;
        if (!(this instanceof ViewGroup) || (childCount = (viewGroup = (ViewGroup) this).getChildCount()) < 0) {
            return;
        }
        int i = 0;
        while (true) {
            KeyEvent.Callback childAt = viewGroup.getChildAt(i);
            ig2 ig2Var = childAt instanceof ig2 ? (ig2) childAt : null;
            if (ig2Var != null) {
                ig2Var.stopDivAnimation();
            }
            if (i == childCount) {
                return;
            } else {
                i++;
            }
        }
    }
}
