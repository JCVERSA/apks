package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.R$styleable;

public abstract class f0 {

    private static final ThreadLocal f1707a = new ThreadLocal();

    static final int[] f1708b = {-16842910};

    static final int[] f1709c = {R.attr.state_focused};

    static final int[] f1710d = {R.attr.state_activated};

    static final int[] f1711e = {R.attr.state_pressed};

    static final int[] f1712f = {R.attr.state_checked};

    static final int[] f1713g = {R.attr.state_selected};

    static final int[] f1714h = {-16842919, -16842908};

    static final int[] f1715i = new int[0];

    private static final int[] f1716j = new int[1];

    public static void a(View view, Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R$styleable.AppCompatTheme);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowActionBar)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static int b(Context context, int i10) {
        ColorStateList colorStateListE = e(context, i10);
        if (colorStateListE != null && colorStateListE.isStateful()) {
            return colorStateListE.getColorForState(f1708b, colorStateListE.getDefaultColor());
        }
        TypedValue typedValueF = f();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValueF, true);
        return d(context, i10, typedValueF.getFloat());
    }

    public static int c(Context context, int i10) {
        int[] iArr = f1716j;
        iArr[0] = i10;
        j0 j0VarU = j0.u(context, null, iArr);
        try {
            return j0VarU.b(0, 0);
        } finally {
            j0VarU.x();
        }
    }

    static int d(Context context, int i10, float f10) {
        int iC = c(context, i10);
        return z0.b.p(iC, Math.round(Color.alpha(iC) * f10));
    }

    public static ColorStateList e(Context context, int i10) {
        int[] iArr = f1716j;
        iArr[0] = i10;
        j0 j0VarU = j0.u(context, null, iArr);
        try {
            return j0VarU.c(0);
        } finally {
            j0VarU.x();
        }
    }

    private static TypedValue f() {
        ThreadLocal threadLocal = f1707a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }
}
