package defpackage;

import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import com.mgadplus.mgutil.SourceKitLogger;

public abstract class l4d {
    public static void a(View view, float f) {
        if (view == null || f == view.getAlpha()) {
            return;
        }
        try {
            view.setAlpha(f);
        } catch (Exception unused) {
        }
    }

    public static void b(ViewGroup viewGroup, View view) {
        if (viewGroup == null || view == null) {
            return;
        }
        try {
            viewGroup.addView(view);
        } catch (Exception e) {
            SourceKitLogger.a("ViewUtil", "excepton=" + e.getMessage());
        }
    }

    public static void c(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams) {
        if (viewGroup == null || view == null || layoutParams == null) {
            return;
        }
        try {
            viewGroup.addView(view, layoutParams);
        } catch (Exception e) {
            SourceKitLogger.a("ViewUtil", "excepton=" + e.getMessage());
        }
    }

    public static boolean d(View view) {
        if (view == null) {
            return false;
        }
        return view.getParent() != null && view.isAttachedToWindow() && (view.getVisibility() == 0);
    }

    public static boolean e(View view, float f, float f2) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        new RectF();
        return f >= ((float) i) && f <= ((float) (i + view.getWidth())) && f2 >= ((float) i2) && f2 <= ((float) (i2 + view.getHeight()));
    }

    public static boolean f(View view, int i) {
        if (view == null || view.getVisibility() == i) {
            return false;
        }
        view.setVisibility(i);
        return true;
    }

    public static void g(ViewGroup viewGroup, View view) {
        if (viewGroup == null || view == null) {
            return;
        }
        try {
            viewGroup.removeView(view);
        } catch (Throwable th) {
            SourceKitLogger.a("ViewUtil", "removeView=" + th.getMessage());
        }
    }
}
