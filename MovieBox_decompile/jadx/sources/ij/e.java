package ij;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    private final RecyclerView f62103a;

    private final float f62104b;

    private final Function1 f62105c;

    private final Set f62106d;

    public static final class a extends RecyclerView.r {
        a() {
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i10, i11);
            e.this.d();
        }
    }

    public e(RecyclerView recyclerView, RecyclerView recyclerView2, float f10, Function1 onExposure) {
        Intrinsics.h(onExposure, "onExposure");
        this.f62103a = recyclerView2;
        this.f62104b = f10;
        this.f62105c = onExposure;
        this.f62106d = new LinkedHashSet();
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(new a());
        }
        d();
    }

    private final boolean c(View view, int i10) {
        Rect rect = new Rect();
        RecyclerView recyclerView = this.f62103a;
        if (recyclerView != null) {
            recyclerView.getGlobalVisibleRect(rect);
        }
        Rect rect2 = new Rect();
        if (view != null) {
            view.getGlobalVisibleRect(rect2);
        }
        int i11 = rect2.intersect(rect) ? rect2.bottom - rect2.top : 0;
        int height = view != null ? view.getHeight() : 0;
        float f10 = this.f62104b;
        if (f10 < 0.0f) {
            f10 = 0.1f;
        } else if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        return ((float) i11) >= ((float) height) * f10;
    }

    public final void d() {
        RecyclerView recyclerView = this.f62103a;
        RecyclerView.m layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
        if (layoutManager instanceof LinearLayoutManager) {
            f(this.f62103a, layoutManager, this.f62105c);
        } else if (layoutManager instanceof GridLayoutManager) {
            f(this.f62103a, layoutManager, this.f62105c);
        }
    }

    private final void f(RecyclerView recyclerView, RecyclerView.m mVar, Function1 function1) {
        RecyclerView recyclerView2 = this.f62103a;
        int childCount = recyclerView2 != null ? recyclerView2.getChildCount() : 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            RecyclerView recyclerView3 = this.f62103a;
            View childAt = recyclerView3 != null ? recyclerView3.getChildAt(i10) : null;
            if (!this.f62106d.contains(Integer.valueOf(i10)) && c(childAt, i10)) {
                this.f62106d.add(Integer.valueOf(i10));
                if (childAt != null) {
                    RecyclerView recyclerView4 = this.f62103a;
                    function1.invoke(Integer.valueOf(recyclerView4 != null ? recyclerView4.getChildAdapterPosition(childAt) : -1));
                }
            }
        }
    }

    public final void b() {
        this.f62106d.clear();
    }

    public final void e() {
        b();
        d();
    }
}
