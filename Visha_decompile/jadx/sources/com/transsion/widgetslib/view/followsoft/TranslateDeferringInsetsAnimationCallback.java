package com.transsion.widgetslib.view.followsoft;

import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

public class TranslateDeferringInsetsAnimationCallback extends WindowInsetsAnimationCompat.Callback implements OnApplyWindowInsetsListener {
    public int a;
    public int b;
    public View c;
    public Insets d;
    public boolean e;

    private void a(Insets insets) {
        this.c.setTranslationX(insets.left - insets.right);
        this.c.setTranslationY(insets.top - insets.bottom);
    }

    @Override
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        if (!this.e) {
            if (windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime())) {
                Insets insets = windowInsetsCompat.getInsets(this.b);
                Insets insets2 = windowInsetsCompat.getInsets(this.a);
                Insets insetsOf = Insets.of(insets.left - insets2.left, insets.top - insets2.top, insets.right - insets2.right, insets.bottom - insets2.bottom);
                int i = insetsOf.left;
                Insets insets3 = Insets.NONE;
                Insets insetsOf2 = Insets.of(Math.max(i, insets3.left), Math.max(insetsOf.top, insets3.top), Math.max(insetsOf.right, insets3.right), Math.max(insetsOf.bottom, insets3.bottom));
                this.d = insetsOf2;
                a(insetsOf2);
            } else {
                a(Insets.NONE);
            }
        }
        return windowInsetsCompat;
    }

    @Override
    public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        boolean z = false;
        this.e = false;
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.c);
        if (rootWindowInsets != null && rootWindowInsets.isVisible(WindowInsetsCompat.Type.ime())) {
            z = true;
        }
        if (z && rootWindowInsets != null) {
            Insets insets = rootWindowInsets.getInsets(this.b);
            Insets insets2 = rootWindowInsets.getInsets(this.a);
            Insets insetsOf = Insets.of(insets.left - insets2.left, insets.top - insets2.top, insets.right - insets2.right, insets.bottom - insets2.bottom);
            int i = insetsOf.left;
            Insets insets3 = Insets.NONE;
            this.d = Insets.of(Math.max(i, insets3.left), Math.max(insetsOf.top, insets3.top), Math.max(insetsOf.right, insets3.right), Math.max(insetsOf.bottom, insets3.bottom));
        }
        if (z) {
            a(this.d);
        } else {
            a(Insets.NONE);
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
        Insets insets = windowInsetsCompat.getInsets(this.b);
        Insets insets2 = windowInsetsCompat.getInsets(this.a);
        Insets insetsOf = Insets.of(insets.left - insets2.left, insets.top - insets2.top, insets.right - insets2.right, insets.bottom - insets2.bottom);
        int i = insetsOf.left;
        Insets insets3 = Insets.NONE;
        Insets insetsOf2 = Insets.of(Math.max(i, insets3.left), Math.max(insetsOf.top, insets3.top), Math.max(insetsOf.right, insets3.right), Math.max(insetsOf.bottom, insets3.bottom));
        this.d = insetsOf2;
        a(insetsOf2);
        return windowInsetsCompat;
    }
}
