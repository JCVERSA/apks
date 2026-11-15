package defpackage;

import android.app.Activity;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.h;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public abstract class e80 {
    public static void a(View view) {
        view.setTag("TAG_OFFSET");
        Object tag = view.getTag(-123);
        if (tag == null || !((Boolean) tag).booleanValue()) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin + e(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            view.setTag(-123, Boolean.TRUE);
        }
    }

    public static void b(Window window) {
        View viewFindViewWithTag = window.getDecorView().findViewWithTag("TAG_OFFSET");
        if (viewFindViewWithTag == null) {
            return;
        }
        a(viewFindViewWithTag);
    }

    public static int c() {
        Resources system = Resources.getSystem();
        int identifier = system.getIdentifier("navigation_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM);
        if (identifier != 0) {
            return system.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static String d(int i) {
        try {
            return Utils.a().getResources().getResourceEntryName(i);
        } catch (Exception unused) {
            return "";
        }
    }

    public static int e() {
        Resources system = Resources.getSystem();
        return system.getDimensionPixelSize(system.getIdentifier("status_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM));
    }

    public static void f(Window window) {
        View viewFindViewWithTag = ((ViewGroup) window.getDecorView()).findViewWithTag("TAG_STATUS_BAR");
        if (viewFindViewWithTag == null) {
            return;
        }
        viewFindViewWithTag.setVisibility(8);
    }

    public static boolean g(Activity activity) {
        return h(activity.getWindow());
    }

    public static boolean h(Window window) {
        boolean z;
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        int childCount = viewGroup.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            }
            View childAt = viewGroup.getChildAt(i);
            int id = childAt.getId();
            if (id != -1 && "navigationBarBackground".equals(d(id)) && childAt.getVisibility() == 0) {
                z = true;
                break;
            }
            i++;
        }
        if (!z) {
            return z;
        }
        h.C();
        return (viewGroup.getSystemUiVisibility() & 2) == 0;
    }

    public static void i(Window window, int i) {
        window.addFlags(Integer.MIN_VALUE);
        window.setNavigationBarColor(i);
    }

    public static void j(Window window, boolean z) {
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility(z ? systemUiVisibility | 16 : systemUiVisibility & (-17));
    }

    public static void k(Activity activity, boolean z) {
        l(activity.getWindow(), z);
    }

    public static void l(Window window, boolean z) {
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            int id = childAt.getId();
            if (id != -1 && "navigationBarBackground".equals(d(id))) {
                childAt.setVisibility(z ? 0 : 4);
            }
        }
        if (z) {
            viewGroup.setSystemUiVisibility(viewGroup.getSystemUiVisibility() & (-4611));
        } else {
            viewGroup.setSystemUiVisibility(viewGroup.getSystemUiVisibility() | 4610);
        }
    }

    public static void m(Activity activity, boolean z) {
        n(activity.getWindow(), z);
    }

    public static void n(Window window, boolean z) {
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility(z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
    }

    public static void o(Activity activity, boolean z) {
        p(activity.getWindow(), z);
    }

    public static void p(Window window, boolean z) {
        if (z) {
            window.clearFlags(1024);
            q(window);
            b(window);
        } else {
            window.addFlags(1024);
            f(window);
            s(window);
        }
    }

    public static void q(Window window) {
        View viewFindViewWithTag = ((ViewGroup) window.getDecorView()).findViewWithTag("TAG_STATUS_BAR");
        if (viewFindViewWithTag == null) {
            return;
        }
        viewFindViewWithTag.setVisibility(0);
    }

    public static void r(View view) {
        Object tag = view.getTag(-123);
        if (tag == null || !((Boolean) tag).booleanValue()) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin - e(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        view.setTag(-123, Boolean.FALSE);
    }

    public static void s(Window window) {
        View viewFindViewWithTag = window.getDecorView().findViewWithTag("TAG_OFFSET");
        if (viewFindViewWithTag == null) {
            return;
        }
        r(viewFindViewWithTag);
    }

    public static void t(Activity activity) {
        u(activity.getWindow());
    }

    public static void u(Window window) {
        window.setNavigationBarContrastEnforced(false);
        window.setNavigationBarColor(0);
        View decorView = window.getDecorView();
        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 1792);
    }

    public static void v(Activity activity) {
        w(activity.getWindow());
    }

    public static void w(Window window) {
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 1280);
        window.setStatusBarColor(0);
    }
}
