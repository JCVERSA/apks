package com.bytedance.sdk.openadsdk.core;

import android.graphics.Rect;
import android.view.View;
import com.bytedance.sdk.openadsdk.utils.FPG;

public class LD {
    private static int EjP(View view, int i10) {
        if (i10 == 3) {
            return FPG.HiB(view.getContext().getApplicationContext()) / 2;
        }
        return 20;
    }

    private static boolean Sj(View view, int i10) {
        float fSj = Sj(view);
        return fSj > 0.0f && fSj >= ((float) i10) / 100.0f;
    }

    private static int TKC(View view, int i10) {
        if (i10 == 3) {
            return (int) (((double) FPG.TKC(view.getContext().getApplicationContext())) * 0.7d);
        }
        return 20;
    }

    private static boolean sP(View view) {
        return view != null && view.isShown();
    }

    public static float Sj(View view) {
        if (view != null) {
            try {
                if (view.getVisibility() == 0 && view.getParent() != null) {
                    Rect rect = new Rect();
                    if (!view.getGlobalVisibleRect(rect)) {
                        return -1.0f;
                    }
                    long jHeight = ((long) rect.height()) * ((long) rect.width());
                    long height = ((long) view.getHeight()) * ((long) view.getWidth());
                    if (height <= 0) {
                        return -1.0f;
                    }
                    return jHeight / height;
                }
            } catch (Throwable unused) {
            }
        }
        return -1.0f;
    }

    private static boolean sP(View view, int i10) {
        return view.getWidth() >= TKC(view, i10) && view.getHeight() >= EjP(view, i10);
    }

    private static int sP(View view, int i10, int i11) throws Throwable {
        if (view.getWindowVisibility() != 0) {
            return 4;
        }
        if (!sP(view)) {
            return 1;
        }
        if (sP(view, i11)) {
            return !Sj(view, i10) ? 3 : 0;
        }
        return 6;
    }

    public static boolean Sj(View view, int i10, int i11) {
        if (i11 == 1) {
            while (view != null) {
                try {
                    if (view.getVisibility() != 0) {
                        return false;
                    }
                    if ((view instanceof com.bytedance.sdk.openadsdk.core.Dq.RiZ) || (view instanceof com.bytedance.sdk.openadsdk.core.TKC.TKC)) {
                        break;
                    }
                    view = (View) view.getParent();
                } catch (Throwable unused) {
                }
            }
        }
        return sP(view, i10, i11) == 0;
    }
}
