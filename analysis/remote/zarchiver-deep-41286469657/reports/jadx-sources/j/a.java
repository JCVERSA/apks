package j;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import java.lang.reflect.Method;

public final class a {

    public final boolean f1139a;

    public final boolean f1140b;

    public View f1141c;

    public View f1142d;

    public static class C0019a {

        public final int f1143a;

        public final boolean f1144b;

        public final int f1145c;

        public final int f1146d;

        public final boolean f1147e;

        public final float f1148f;

        public final String f1149g;

        public C0019a(Activity activity) {
            int iA;
            String str = null;
            if (Build.VERSION.SDK_INT >= 19) {
                try {
                    Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
                    declaredMethod.setAccessible(true);
                    str = (String) declaredMethod.invoke(null, "qemu.hw.mainkeys");
                } catch (Throwable unused) {
                }
            }
            this.f1149g = str;
            Resources resources = activity.getResources();
            boolean z2 = resources.getConfiguration().orientation == 1;
            this.f1147e = z2;
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (Build.VERSION.SDK_INT >= 16) {
                activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
            } else {
                activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            }
            float f2 = displayMetrics.widthPixels;
            float f3 = displayMetrics.density;
            this.f1148f = Math.min(f2 / f3, displayMetrics.heightPixels / f3);
            this.f1143a = a(resources, "status_bar_height");
            Resources resources2 = activity.getResources();
            if (b(activity)) {
                iA = a(resources2, z2 ? "navigation_bar_height" : "navigation_bar_height_landscape");
            } else {
                iA = 0;
            }
            this.f1145c = iA;
            this.f1146d = b(activity) ? a(activity.getResources(), "navigation_bar_width") : 0;
            this.f1144b = iA > 0;
        }

        public static int a(Resources resources, String str) {
            int identifier = resources.getIdentifier(str, "dimen", "android");
            if (identifier > 0) {
                return resources.getDimensionPixelSize(identifier);
            }
            return 0;
        }

        public final boolean b(Context context) {
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
            if (identifier == 0) {
                return !ViewConfiguration.get(context).hasPermanentMenuKey();
            }
            boolean z2 = resources.getBoolean(identifier);
            String str = this.f1149g;
            if ("1".equals(str)) {
                return false;
            }
            if ("0".equals(str)) {
                return true;
            }
            return z2;
        }
    }

    public a(Activity activity) {
        FrameLayout.LayoutParams layoutParams;
        Window window = activity.getWindow();
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        boolean z2 = true;
        if (Build.VERSION.SDK_INT >= 19) {
            TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(new int[]{R.attr.windowTranslucentStatus, R.attr.windowTranslucentNavigation});
            try {
                this.f1139a = typedArrayObtainStyledAttributes.getBoolean(0, false);
                this.f1140b = typedArrayObtainStyledAttributes.getBoolean(1, false);
                typedArrayObtainStyledAttributes.recycle();
                int i2 = window.getAttributes().flags;
                if ((67108864 & i2) != 0) {
                    this.f1139a = true;
                }
                if ((i2 & 134217728) != 0) {
                    this.f1140b = true;
                }
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        C0019a c0019a = new C0019a(activity);
        if (!c0019a.f1144b) {
            this.f1140b = false;
        }
        boolean z3 = this.f1139a;
        boolean z4 = c0019a.f1147e;
        float f2 = c0019a.f1148f;
        int i3 = c0019a.f1146d;
        if (z3) {
            this.f1141c = new View(activity);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, c0019a.f1143a);
            layoutParams2.gravity = 48;
            if (this.f1140b) {
                if (!(f2 >= 600.0f || z4)) {
                    layoutParams2.rightMargin = i3;
                }
            }
            this.f1141c.setLayoutParams(layoutParams2);
            this.f1141c.setBackgroundColor(-1728053248);
            this.f1141c.setVisibility(8);
            viewGroup.addView(this.f1141c);
        }
        if (this.f1140b) {
            this.f1142d = new View(activity);
            if (f2 < 600.0f && !z4) {
                z2 = false;
            }
            if (z2) {
                layoutParams = new FrameLayout.LayoutParams(-1, c0019a.f1145c);
                layoutParams.gravity = 80;
            } else {
                layoutParams = new FrameLayout.LayoutParams(i3, -1);
                layoutParams.gravity = 5;
            }
            this.f1142d.setLayoutParams(layoutParams);
            this.f1142d.setBackgroundColor(-1728053248);
            this.f1142d.setVisibility(8);
            viewGroup.addView(this.f1142d);
        }
    }
}
