package com.vungle.ads.internal.util;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

public final class w {
    public static final w INSTANCE = new w();

    private w() {
    }

    public final int dpToPixels(Context context, int i10) {
        Intrinsics.h(context, "context");
        return (int) ((i10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final Pair<Integer, Integer> getDeviceWidthAndHeightWithOrientation(Context context, int i10) {
        Intrinsics.h(context, "context");
        Resources resources = context.getApplicationContext().getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        int i11 = resources.getConfiguration().orientation;
        if (i10 == 0) {
            i10 = i11;
        }
        return i10 == i11 ? new Pair<>(Integer.valueOf(Math.round(displayMetrics.widthPixels / displayMetrics.density)), Integer.valueOf(Math.round(displayMetrics.heightPixels / displayMetrics.density))) : new Pair<>(Integer.valueOf(Math.round(displayMetrics.heightPixels / displayMetrics.density)), Integer.valueOf(Math.round(displayMetrics.widthPixels / displayMetrics.density)));
    }

    public final WebView getWebView(Context context) throws InstantiationException {
        Intrinsics.h(context, "context");
        try {
            return new WebView(context);
        } catch (Resources.NotFoundException e10) {
            throw new InstantiationException("Cannot instantiate WebView due to Resources.NotFoundException: " + e10 + ".message");
        } catch (Exception e11) {
            throw new InstantiationException(e11.getMessage());
        }
    }
}
