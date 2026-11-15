package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.yandex.div.R;

public abstract class kcc {
    public static final int[] a = {R.id.div_gallery};

    public static final boolean a(RecyclerView recyclerView, int i) {
        if (i < 0) {
            return true;
        }
        if (i != 4) {
            return i == 8 && recyclerView.computeHorizontalScrollExtent() + recyclerView.computeHorizontalScrollOffset() < recyclerView.computeHorizontalScrollRange();
        }
        return recyclerView.computeHorizontalScrollOffset() > 0;
    }

    public static final boolean b(ViewPager viewPager, int i) {
        if (i < 0) {
            return true;
        }
        if (i == 4) {
            return viewPager.canScrollHorizontally(-1);
        }
        if (i != 8) {
            return false;
        }
        return viewPager.canScrollHorizontally(1);
    }

    public static final boolean c(ViewGroup viewGroup, MotionEvent motionEvent) {
        y45.j(viewGroup, "<this>");
        y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int i = motionEvent.getHistorySize() < 1 ? -1 : motionEvent.getHistoricalX(0) < motionEvent.getX() ? 4 : 8;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getId() == R.id.div_tabs_block && ndc.c(childAt, rawX, rawY)) {
                View viewB = ndc.b(childAt, R.id.div_tabs_pager_container);
                y45.h(viewB, "null cannot be cast to non-null type androidx.viewpager.widget.ViewPager");
                if (e((ViewPager) viewB, rawX, rawY, i)) {
                    return true;
                }
            }
            if ((childAt instanceof RecyclerView) && d((RecyclerView) childAt, rawX, rawY, i)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean d(RecyclerView recyclerView, float f, float f2, int i) {
        return ndc.c(recyclerView, f, f2) && a(recyclerView, i);
    }

    public static final boolean e(ViewPager viewPager, float f, float f2, int i) {
        if (b(viewPager, i)) {
            return true;
        }
        int length = a.length;
        for (int i2 = 0; i2 < length; i2++) {
            RecyclerView recyclerView = (RecyclerView) ndc.a(viewPager, a[i2]);
            if (recyclerView != null && d(recyclerView, f, f2, i)) {
                return true;
            }
        }
        return false;
    }
}
