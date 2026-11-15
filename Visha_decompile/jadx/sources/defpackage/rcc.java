package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

public abstract class rcc {
    public static void b(ViewPager2 viewPager2, Runnable runnable) {
        if (viewPager2.getAdapter() == null || !viewPager2.isAttachedToWindow() || viewPager2.getWindowToken() == null) {
            return;
        }
        runnable.run();
    }

    public static void c(final ViewPager2 viewPager2, RecyclerView.Adapter adapter, ViewPager2.OnPageChangeCallback onPageChangeCallback, final Runnable runnable) {
        if (onPageChangeCallback != null) {
            viewPager2.registerOnPageChangeCallback(onPageChangeCallback);
        }
        viewPager2.setAdapter(adapter);
        if (runnable == null) {
            return;
        }
        runnable.run();
        viewPager2.post(new Runnable() {
            @Override
            public final void run() {
                rcc.b(viewPager2, runnable);
            }
        });
    }
}
