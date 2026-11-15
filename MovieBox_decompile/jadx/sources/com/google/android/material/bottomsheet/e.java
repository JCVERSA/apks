package com.google.android.material.bottomsheet;

import android.view.View;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.Iterator;
import java.util.List;

class e extends WindowInsetsAnimationCompat.Callback {

    private final View f27650a;

    private int f27651b;

    private int f27652c;

    private final int[] f27653d;

    public e(View view) {
        super(0);
        this.f27653d = new int[2];
        this.f27650a = view;
    }

    @Override
    public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.f27650a.setTranslationY(0.0f);
    }

    @Override
    public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.f27650a.getLocationOnScreen(this.f27653d);
        this.f27651b = this.f27653d[1];
    }

    @Override
    public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) it.next();
            if ((windowInsetsAnimationCompat.getTypeMask() & WindowInsetsCompat.Type.ime()) != 0) {
                this.f27650a.setTranslationY(qa.a.c(this.f27652c, 0, windowInsetsAnimationCompat.getInterpolatedFraction()));
                break;
            }
        }
        return windowInsetsCompat;
    }

    @Override
    public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        this.f27650a.getLocationOnScreen(this.f27653d);
        int i10 = this.f27651b - this.f27653d[1];
        this.f27652c = i10;
        this.f27650a.setTranslationY(i10);
        return boundsCompat;
    }
}
