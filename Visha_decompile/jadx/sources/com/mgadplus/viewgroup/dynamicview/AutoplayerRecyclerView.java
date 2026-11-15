package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.mgmi.model.VASTFloatAd;
import defpackage.l2d;
import java.lang.ref.WeakReference;
import java.util.List;

public class AutoplayerRecyclerView extends RecyclerView implements BubbleRecyclerViewAdapter.a, CornerSchemeView {
    public BubbleRecyclerViewAdapter e;
    public a f;
    public boolean g;
    public boolean h;
    public List i;
    public List j;
    public List k;
    public List l;
    public int m;
    public int n;
    public MgmiLinearLayoutManager o;

    public static class a implements Runnable {
        private final WeakReference<AutoplayerRecyclerView> a;

        public a(AutoplayerRecyclerView autoplayerRecyclerView) {
            this.a = new WeakReference<>(autoplayerRecyclerView);
        }

        @Override
        public void run() {
            AutoplayerRecyclerView autoplayerRecyclerView = this.a.get();
            if (autoplayerRecyclerView != null) {
                autoplayerRecyclerView.a();
            }
        }
    }

    public AutoplayerRecyclerView(Context context) {
        super(context);
        this.m = 0;
        this.n = 0;
        b(context);
    }

    public boolean a(int i) {
        int size = this.i.size();
        if (i >= size || i < 0) {
            List list = this.j;
            return list != null && list.size() > 0 && i == (size + this.j.size()) - 1;
        }
        if (((l2d) this.i.get(i)).i() == 3) {
            return true;
        }
        return (this.k == null || this.l == null) && i == size - 1;
    }

    public void appear(boolean z) {
    }

    public final void b(Context context) {
        MgmiLinearLayoutManager mgmiLinearLayoutManager = new MgmiLinearLayoutManager(context);
        this.o = mgmiLinearLayoutManager;
        setLayoutManager(mgmiLinearLayoutManager);
        BubbleRecyclerViewAdapter bubbleRecyclerViewAdapter = new BubbleRecyclerViewAdapter(context);
        this.e = bubbleRecyclerViewAdapter;
        setAdapter(bubbleRecyclerViewAdapter);
        RecyclerView.ItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setAddDuration(800L);
        setItemAnimator(defaultItemAnimator);
        this.f = new a(this);
        this.g = false;
    }

    public void disappear(boolean z) {
        stopTurning();
    }

    public AutoplayerRecyclerView getSchemeView() {
        return this;
    }

    public boolean isVisiblity() {
        return false;
    }

    @Override
    public void leftClick() {
        List list = this.k;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.m = 0;
        this.j = this.k;
        post(this.f);
    }

    @Override
    public void onAddItem(int i) {
    }

    @Override
    public void onBindComplete() {
        View viewFindViewByPosition = this.o.findViewByPosition(this.n + this.m);
        this.o.scrollToPositionWithOffset(this.n + this.m, -(viewFindViewByPosition != null ? viewFindViewByPosition.getMeasuredHeight() : 0));
        if (this.m >= this.j.size() || ((l2d) this.j.get(this.m)).i() == 3) {
            this.n += this.m;
            this.m = 0;
        } else {
            postDelayed(this.f, 1500L);
            this.m++;
        }
    }

    public void onCloseClick() {
        disappear(false);
    }

    @Override
    public void onImageClick(l2d l2dVar) {
    }

    public CornerSchemeView prepareContainer(ViewGroup viewGroup, ViewGroup.MarginLayoutParams marginLayoutParams) {
        return this;
    }

    @Override
    public void rightClick() {
        List list = this.l;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.m = 0;
        this.j = this.l;
        post(this.f);
    }

    @Override
    public void setEventListener(com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a) {
    }

    public com.mgadplus.viewgroup.dynamicview.a setInterectAnimation(Animation animation, Animation animation2) {
        return null;
    }

    public void setOnAutoplayerAdaperClick(BubbleRecyclerViewAdapter.a aVar) {
        this.e.h(aVar);
    }

    public void startTurning() {
        if (this.g) {
            stopTurning();
        }
        post(this.f);
    }

    public void stopTurning() {
        this.g = false;
        removeCallbacks(this.f);
    }

    public AutoplayerRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m = 0;
        this.n = 0;
        b(context);
    }

    public void a() {
        List list = this.j;
        if (list == null || list.size() <= 0 || this.m >= this.j.size()) {
            return;
        }
        this.o.setSmoothScrollbarEnabled(false);
        this.e.g((l2d) this.j.get(this.m));
    }

    public AutoplayerRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m = 0;
        this.n = 0;
        b(context);
    }

    @Override
    public void bindData(VASTFloatAd vASTFloatAd) {
        if (this.h || vASTFloatAd == null) {
            return;
        }
        this.i = vASTFloatAd.getBubbleEntryListentry();
        this.k = vASTFloatAd.getAdOptionMessage().a();
        this.l = vASTFloatAd.getAdOptionMessage().b();
        this.m = 0;
        this.n = 0;
        this.j = this.i;
        this.h = true;
    }
}
