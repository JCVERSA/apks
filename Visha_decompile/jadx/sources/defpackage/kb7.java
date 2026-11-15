package defpackage;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.View;

public abstract class kb7 {
    public static final int a(StateListDrawable stateListDrawable) {
        y45.j(stateListDrawable, "<this>");
        int stateCount = stateListDrawable.getStateCount();
        for (int i = 0; i < stateCount; i++) {
            int[] stateSet = stateListDrawable.getStateSet(i);
            y45.i(stateSet, "getStateSet(i)");
            if (d(stateSet)) {
                return i;
            }
        }
        return -1;
    }

    public static final StateListDrawable b(StateListDrawable stateListDrawable, Drawable drawable) {
        y45.j(stateListDrawable, "original");
        Drawable drawableMutate = stateListDrawable.mutate();
        y45.h(drawableMutate, "null cannot be cast to non-null type android.graphics.drawable.StateListDrawable");
        StateListDrawable stateListDrawable2 = (StateListDrawable) drawableMutate;
        int iA = a(stateListDrawable2);
        if (iA < 0) {
            return null;
        }
        StateListDrawable stateListDrawable3 = new StateListDrawable();
        int stateCount = stateListDrawable2.getStateCount();
        for (int i = 0; i < stateCount; i++) {
            int[] stateSet = stateListDrawable2.getStateSet(i);
            y45.i(stateSet, "src.getStateSet(i)");
            Drawable stateDrawable = stateListDrawable2.getStateDrawable(i);
            if (stateDrawable != null) {
                stateListDrawable3.addState(stateSet, i == iA ? drawable != null ? drawable.mutate() : null : stateDrawable.mutate());
            }
        }
        return stateListDrawable3;
    }

    public static final boolean c(View view, Drawable drawable) {
        Drawable drawableMutate;
        StateListDrawable stateListDrawableE;
        StateListDrawable stateListDrawableB;
        y45.j(view, "view");
        Drawable background = view.getBackground();
        if (background == null || (drawableMutate = background.mutate()) == null) {
            return false;
        }
        if (!(drawableMutate instanceof RippleDrawable)) {
            if (drawableMutate instanceof StateListDrawable) {
                stateListDrawableE = (StateListDrawable) drawableMutate;
            } else {
                stateListDrawableE = e(drawableMutate);
                if (stateListDrawableE == null) {
                    return false;
                }
            }
            StateListDrawable stateListDrawableB2 = b(stateListDrawableE, drawable);
            if (stateListDrawableB2 == null) {
                return false;
            }
            view.setBackground(stateListDrawableB2);
            return true;
        }
        RippleDrawable rippleDrawable = (RippleDrawable) drawableMutate;
        int numberOfLayers = rippleDrawable.getNumberOfLayers();
        for (int i = 0; i < numberOfLayers; i++) {
            Drawable drawable2 = rippleDrawable.getDrawable(i);
            StateListDrawable stateListDrawable = drawable2 instanceof StateListDrawable ? (StateListDrawable) drawable2 : null;
            if (stateListDrawable != null && (stateListDrawableB = b(stateListDrawable, drawable)) != null) {
                rippleDrawable.setDrawable(i, stateListDrawableB);
                view.setBackground(drawableMutate);
                return true;
            }
        }
        return false;
    }

    public static final boolean d(int[] iArr) {
        y45.j(iArr, "<this>");
        for (int i : iArr) {
            if (i == 16842919) {
                return true;
            }
        }
        return false;
    }

    public static final StateListDrawable e(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        int i = 0;
        while (drawable != null) {
            int i2 = i + 1;
            if (i < 16) {
                if (!(drawable instanceof StateListDrawable)) {
                    if (!(drawable instanceof DrawableWrapper)) {
                        break;
                    }
                    drawable = ((DrawableWrapper) drawable).getDrawable();
                    i = i2;
                } else {
                    return (StateListDrawable) drawable;
                }
            } else {
                break;
            }
        }
        return null;
    }
}
