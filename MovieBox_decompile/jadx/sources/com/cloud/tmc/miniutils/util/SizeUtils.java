package com.cloud.tmc.miniutils.util;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;

public final class SizeUtils {

    public interface OnGetSizeListener {
        void onGetSize(View view);
    }

    private SizeUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static float applyDimension(float f10, int i10) {
        float f11;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        if (i10 == 0) {
            return f10;
        }
        if (i10 == 1) {
            f11 = displayMetrics.density;
        } else if (i10 == 2) {
            f11 = displayMetrics.scaledDensity;
        } else if (i10 == 3) {
            f10 *= displayMetrics.xdpi;
            f11 = 0.013888889f;
        } else if (i10 == 4) {
            f11 = displayMetrics.xdpi;
        } else {
            if (i10 != 5) {
                return 0.0f;
            }
            f10 *= displayMetrics.xdpi;
            f11 = 0.03937008f;
        }
        return f10 * f11;
    }

    public static int dp2px(float f10) {
        return (int) ((f10 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static void forceGetViewSize(final View view, final OnGetSizeListener onGetSizeListener) {
        view.post(new Runnable() {
            @Override
            public void run() {
                OnGetSizeListener onGetSizeListener2 = onGetSizeListener;
                if (onGetSizeListener2 != null) {
                    onGetSizeListener2.onGetSize(view);
                }
            }
        });
    }

    public static int getMeasuredHeight(View view) {
        return measureView(view)[1];
    }

    public static int getMeasuredWidth(View view) {
        return measureView(view)[0];
    }

    public static int[] measureView(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
        int i10 = layoutParams.height;
        view.measure(childMeasureSpec, i10 > 0 ? View.MeasureSpec.makeMeasureSpec(i10, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
        return new int[]{view.getMeasuredWidth(), view.getMeasuredHeight()};
    }

    public static int px2dp(float f10) {
        return (int) ((f10 / Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static int px2sp(float f10) {
        return (int) ((f10 / Resources.getSystem().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int sp2px(float f10) {
        return (int) ((f10 * Resources.getSystem().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
