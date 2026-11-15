package defpackage;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;

public abstract class vkb {
    public static boolean a(View view, float f, float f2, boolean z) {
        return (view == null || !e(view, f, f2)) ? z : ViewCompat.canScrollVertically(view, 1);
    }

    public static boolean b(View view, float f, float f2, boolean z) {
        return (view == null || !e(view, f, f2)) ? z : ViewCompat.canScrollHorizontally(view, 1);
    }

    public static boolean c(View view, float f, float f2, boolean z) {
        return (view == null || !e(view, f, f2)) ? z : ViewCompat.canScrollHorizontally(view, -1);
    }

    public static boolean d(View view, float f, float f2, boolean z) {
        return (view == null || !e(view, f, f2)) ? z : ViewCompat.canScrollVertically(view, -1);
    }

    public static boolean e(View view, float f, float f2) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return rect.contains((int) f, (int) f2);
    }

    public static View f(ViewGroup viewGroup) {
        View viewF;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                if (g(childAt)) {
                    return childAt;
                }
                if ((childAt instanceof ViewGroup) && (viewF = f((ViewGroup) childAt)) != null) {
                    return viewF;
                }
            }
        }
        return null;
    }

    public static boolean g(View view) {
        return (view instanceof ScrollView) || (view instanceof HorizontalScrollView) || (view instanceof NestedScrollView) || (view instanceof AbsListView) || (view instanceof RecyclerView) || (view instanceof ViewPager) || (view instanceof WebView);
    }

    public static void h() {
        Activity activityB = rpc.a().b();
        if (activityB != null) {
            ViewCompat.setTranslationX(activityB.getWindow().getDecorView(), 0.0f);
        }
    }

    public static void i(float f) {
        Activity activityB = rpc.a().b();
        if (activityB == null || activityB.isFinishing()) {
            return;
        }
        View decorView = activityB.getWindow().getDecorView();
        ViewCompat.setTranslationX(decorView, (-(decorView.getMeasuredWidth() / 3.0f)) * (1.0f - f));
    }
}
