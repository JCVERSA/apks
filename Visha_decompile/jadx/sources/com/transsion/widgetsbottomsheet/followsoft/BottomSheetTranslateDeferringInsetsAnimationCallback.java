package com.transsion.widgetsbottomsheet.followsoft;

import android.content.res.Resources;
import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBottomSheetPanel;
import com.transsion.widgetslib.R;
import defpackage.olb;
import java.util.List;

public class BottomSheetTranslateDeferringInsetsAnimationCallback extends WindowInsetsAnimationCompat.Callback implements OnApplyWindowInsetsListener {
    public int a;
    public int b;
    public View c;
    public OSBottomSheetPanel d;
    public boolean e;
    public int f;

    public BottomSheetTranslateDeferringInsetsAnimationCallback(View view, OSBottomSheetPanel oSBottomSheetPanel, int i, int i2, int i3) {
        super(i3);
        this.e = false;
        this.b = i2;
        this.a = i;
        this.c = view;
        if ((i & i2) != 0) {
            throw new IllegalArgumentException("persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values");
        }
        this.d = oSBottomSheetPanel;
    }

    public final void a(Insets insets) {
        this.c.setTranslationX(insets.left - insets.right);
        int i = insets.top - insets.bottom;
        float fAbs = Math.abs(i) > 300 ? 1.0f : Math.abs(i) / 300.0f;
        if (!olb.b0(this.c.getContext())) {
            this.c.setTranslationY(i);
            d(i);
            return;
        }
        Resources resources = this.c.getContext().getResources();
        int dimensionPixelSize = i != 0 ? (int) (i - ((resources.getDimensionPixelSize(R.dimen.os_bottom_sheet_large_screen_bottom_padding) + resources.getDimensionPixelSize(R.dimen.os_bottom_sheet_large_screen_soft_input)) * fAbs)) : 0;
        if (!olb.g0(this.c.getContext()) || dimensionPixelSize == 0) {
            this.c.setTranslationY(dimensionPixelSize);
        } else {
            b(dimensionPixelSize);
        }
        d(dimensionPixelSize);
    }

    public final void b(int i) {
        OSBottomSheetPanel oSBottomSheetPanel = this.d;
        if (oSBottomSheetPanel == null) {
            this.c.setTranslationY(i);
            return;
        }
        if (oSBottomSheetPanel.isInEnterAnimator()) {
            return;
        }
        int[] iArr = new int[2];
        this.d.getLocationOnScreen(iArr);
        int iL = iArr[1] - olb.L(this.c.getContext());
        if (this.c.getTranslationY() == 0.0f) {
            this.f = iL;
        }
        int iG = ((olb.G(this.c.getContext()) - iArr[1]) - this.d.getHeight()) - Math.abs(i);
        if (iG <= 0 || this.c.getTranslationY() != 0.0f) {
            if (iG < 0) {
                float f = iG;
                if (Math.abs(this.c.getTranslationY() + f) < this.f) {
                    View view = this.c;
                    view.setTranslationY(view.getTranslationY() + f);
                    return;
                }
            }
            if (Math.abs(i) < this.f && Math.abs(i) < Math.abs(this.c.getTranslationY())) {
                this.c.setTranslationY(i);
            } else {
                if (iL == 0 || iG >= 0) {
                    return;
                }
                this.c.setTranslationY(-this.f);
            }
        }
    }

    public final Insets c(WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(this.b);
        Insets insets2 = windowInsetsCompat.getInsets(this.a);
        Insets insetsOf = Insets.of(insets.left - insets2.left, insets.top - insets2.top, insets.right - insets2.right, insets.bottom - insets2.bottom);
        int i = insetsOf.left;
        Insets insets3 = Insets.NONE;
        return Insets.of(Math.max(i, insets3.left), Math.max(insetsOf.top, insets3.top), Math.max(insetsOf.right, insets3.right), Math.max(insetsOf.bottom, insets3.bottom));
    }

    public void d(int i) {
        OSBottomSheetPanel oSBottomSheetPanel = this.d;
        if (oSBottomSheetPanel == null || oSBottomSheetPanel.getSoftKeyboardHeight() == Math.abs(i)) {
            return;
        }
        this.d.setSoftKeyboardHeight(Math.abs(i));
        this.d.requestLayout();
    }

    @Override
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        if (!this.e) {
            if (windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime())) {
                a(c(windowInsetsCompat));
            } else {
                a(Insets.NONE);
            }
        }
        return windowInsetsCompat;
    }

    @Override
    public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.e = false;
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.c);
        if (rootWindowInsets == null || !rootWindowInsets.isVisible(WindowInsetsCompat.Type.ime())) {
            a(Insets.NONE);
        } else {
            a(c(rootWindowInsets));
        }
    }

    @Override
    public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        if ((windowInsetsAnimationCompat.getTypeMask() & this.b) != 0) {
            this.e = true;
        }
    }

    @Override
    public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
        this.e = true;
        a(c(windowInsetsCompat));
        return windowInsetsCompat;
    }
}
