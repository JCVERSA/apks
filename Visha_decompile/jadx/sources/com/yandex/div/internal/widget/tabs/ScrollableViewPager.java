package com.yandex.div.internal.widget.tabs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.customview.widget.ViewDragHelper;
import androidx.viewpager.widget.ViewPager;
import defpackage.bz6;
import defpackage.ue7;
import defpackage.ve7;
import java.util.Set;

public class ScrollableViewPager extends RtlViewPager implements ve7 {
    public final bz6 i;
    public ViewDragHelper j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public Set o;
    public ue7 p;

    public class a extends ViewDragHelper.Callback {
        public a() {
        }

        @Override
        public void onEdgeDragStarted(int i, int i2) {
            super.onEdgeDragStarted(i, i2);
            ScrollableViewPager scrollableViewPager = ScrollableViewPager.this;
            boolean z = true;
            if ((i & 2) == 0 && (i & 1) == 0) {
                z = false;
            }
            scrollableViewPager.m = z;
        }

        @Override
        public boolean tryCaptureView(View view, int i) {
            return false;
        }
    }

    public ScrollableViewPager(@NonNull Context context) {
        this(context, null);
    }

    public final boolean b(MotionEvent motionEvent) {
        if (!this.l && this.j != null) {
            if ((motionEvent.getAction() & 255) == 0) {
                this.m = false;
            }
            this.j.processTouchEvent(motionEvent);
        }
        Set set = this.o;
        if (set != null) {
            this.n = this.k && set.contains(Integer.valueOf(getCurrentItem()));
        }
        return (this.m || this.n || !this.k) ? false : true;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        this.i.c(motionEvent);
        return zDispatchTouchEvent;
    }

    @Nullable
    public ue7 getOnInterceptTouchEventListener() {
        return this.p;
    }

    @Override
    public boolean onInterceptTouchEvent(@NonNull MotionEvent motionEvent) {
        ue7 ue7Var = this.p;
        return (ue7Var != null ? ue7Var.a(this, motionEvent) : false) || (b(motionEvent) && super.onInterceptTouchEvent(motionEvent));
    }

    @Override
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        this.i.b();
    }

    @Override
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        return b(motionEvent) && super.onTouchEvent(motionEvent);
    }

    public void setDisabledScrollPages(@Nullable Set<Integer> set) {
        this.o = set;
    }

    public void setEdgeScrollEnabled(boolean z) {
        this.l = z;
        if (z) {
            return;
        }
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, new a());
        this.j = viewDragHelperCreate;
        viewDragHelperCreate.setEdgeTrackingEnabled(3);
    }

    @Override
    public void setOnInterceptTouchEventListener(@Nullable ue7 ue7Var) {
        this.p = ue7Var;
    }

    public void setScrollEnabled(boolean z) {
        this.k = z;
    }

    public ScrollableViewPager(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.i = new bz6((ViewPager) this);
        this.k = true;
        this.l = true;
        this.m = false;
        this.n = false;
    }
}
