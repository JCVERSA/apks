package ab;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;

public abstract class b {

    public static final boolean f266a = true;

    private static final int[] f267b = {R.attr.state_pressed};

    private static final int[] f268c = {R.attr.state_hovered, R.attr.state_focused};

    private static final int[] f269d = {R.attr.state_focused};

    private static final int[] f270e = {R.attr.state_hovered};

    private static final int[] f271f = {R.attr.state_selected, R.attr.state_pressed};

    private static final int[] f272g = {R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};

    private static final int[] f273h = {R.attr.state_selected, R.attr.state_focused};

    private static final int[] f274i = {R.attr.state_selected, R.attr.state_hovered};

    private static final int[] f275j = {R.attr.state_selected};

    private static final int[] f276k = {R.attr.state_enabled, R.attr.state_pressed};

    static final String f277l = b.class.getSimpleName();

    public static ColorStateList a(ColorStateList colorStateList) {
        if (f266a) {
            int[] iArr = f269d;
            return new ColorStateList(new int[][]{f275j, iArr, StateSet.NOTHING}, new int[]{c(colorStateList, f271f), c(colorStateList, iArr), c(colorStateList, f267b)});
        }
        int[] iArr2 = f271f;
        int[] iArr3 = f272g;
        int[] iArr4 = f273h;
        int[] iArr5 = f274i;
        int[] iArr6 = f267b;
        int[] iArr7 = f268c;
        int[] iArr8 = f269d;
        int[] iArr9 = f270e;
        return new ColorStateList(new int[][]{iArr2, iArr3, iArr4, iArr5, f275j, iArr6, iArr7, iArr8, iArr9, StateSet.NOTHING}, new int[]{c(colorStateList, iArr2), c(colorStateList, iArr3), c(colorStateList, iArr4), c(colorStateList, iArr5), 0, c(colorStateList, iArr6), c(colorStateList, iArr7), c(colorStateList, iArr8), c(colorStateList, iArr9), 0});
    }

    private static int b(int i10) {
        return z0.b.p(i10, Math.min(Color.alpha(i10) * 2, 255));
    }

    private static int c(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return f266a ? b(colorForState) : colorForState;
    }

    public static ColorStateList d(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        if (Build.VERSION.SDK_INT <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(f276k, 0)) != 0) {
            Log.w(f277l, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
        }
        return colorStateList;
    }

    public static boolean e(int[] iArr) {
        boolean z10 = false;
        boolean z11 = false;
        for (int i10 : iArr) {
            if (i10 == 16842910) {
                z10 = true;
            } else if (i10 == 16842908 || i10 == 16842919 || i10 == 16843623) {
                z11 = true;
            }
        }
        return z10 && z11;
    }
}
