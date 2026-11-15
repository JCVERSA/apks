package io.appmetrica.analytics.impl;

import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;

public final class Pi implements FunctionWithThrowable {
    @Override
    public final Object apply(Object obj) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Display) obj).getRealMetrics(displayMetrics);
        return new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }
}
