package com.transsion.video_edit;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.integration.recyclerview.RecyclerViewPreloader;
import com.bumptech.glide.util.FixedPreloadSizeProvider;
import defpackage.e39;
import defpackage.olb;
import defpackage.wia;
import defpackage.xia;

public class ThumbnailBar extends ConstraintLayout {
    public RecyclerView b;
    public ThumbAdapter c;
    public ThumbItemLayoutManager d;
    public int e;
    public int f;
    public int g;
    public RecyclerViewPreloader h;
    public FixedPreloadSizeProvider i;
    public xia j;
    public RecyclerView.OnScrollListener k;
    public c l;
    public boolean m;
    public int n;

    public class a implements View.OnScrollChangeListener {
        public a() {
        }

        @Override
        public void onScrollChange(View view, int i, int i2, int i3, int i4) {
        }
    }

    public class b extends RecyclerView.OnScrollListener {
        public b() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (ThumbnailBar.this.l == null || i != 0) {
                return;
            }
            ThumbnailBar.this.l.d(recyclerView, ThumbnailBar.this.getFirstVisibleLeft());
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            if (ThumbnailBar.this.l != null) {
                ThumbnailBar.this.l.h(recyclerView, ThumbnailBar.this.getFirstVisibleLeft());
            }
        }
    }

    public interface c {
        void d(RecyclerView recyclerView, int i);

        void h(RecyclerView recyclerView, int i);
    }

    public ThumbnailBar(@NonNull Context context) {
        this(context, null);
    }

    public int getFirstVisibleLeft() {
        int iFindFirstVisibleItemPosition = this.d.findFirstVisibleItemPosition();
        View viewFindViewByPosition = this.d.findViewByPosition(iFindFirstVisibleItemPosition);
        if (viewFindViewByPosition == null) {
            return 0;
        }
        int right = viewFindViewByPosition.getRight();
        if (this.m) {
            right = this.n - viewFindViewByPosition.getLeft();
        }
        int i = this.g;
        int i2 = this.e;
        return i + (iFindFirstVisibleItemPosition * i2) + (i2 - right);
    }

    private void setAdapter(Context context) {
        if (this.c == null) {
            this.c = new ThumbAdapter(context);
        }
        this.b.setAdapter(this.c);
    }

    public void addThumbnailInfo(wia wiaVar, int i) {
        this.c.b(wiaVar, i);
    }

    public void appendThumbnailInfo(wia wiaVar) {
        this.c.c(wiaVar);
    }

    public RecyclerView.Adapter getAdapter() {
        return this.c;
    }

    public void initThumbnailInfo(String str, long j, long j2) {
        int i;
        long j3 = j;
        float f = 1.0f;
        float f2 = j2;
        int iRound = Math.round(((j3 * 1.0f) / f2) + 0.5f);
        setThumbNailCount(iRound);
        int i2 = 0;
        while (i2 < iRound) {
            if (i2 == iRound - 1) {
                long j4 = ((long) i2) * j2;
                long j5 = j3 - j4;
                i = i2;
                appendThumbnailInfo(new wia(str, j4, j5, j2, (int) (((((long) this.e) * j5) * f) / f2), this.f));
            } else {
                i = i2;
                appendThumbnailInfo(new wia(str, ((long) i) * j2, j2, j2, this.e, this.f));
            }
            i2 = i + 1;
            f2 = f2;
            iRound = iRound;
            f = 1.0f;
            j3 = j;
        }
        this.j.b(this.c.g());
    }

    @Override
    public boolean isRtl() {
        return olb.l0();
    }

    @Override
    public void onDetachedFromWindow() {
        this.b.removeOnScrollListener(this.k);
        super.onDetachedFromWindow();
    }

    public void setCanScoll(boolean z) {
        this.d.g(z);
    }

    public void setOnThumbnailBarScrollListener(c cVar) {
        this.l = cVar;
    }

    public void setThumbNailCount(int i) {
        this.c.r(i);
    }

    public ThumbnailBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ThumbnailBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ThumbnailBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.m = false;
        LayoutInflater.from(context).inflate(R.layout.layout_editbar, (ViewGroup) this, true);
        this.b = (RecyclerView) findViewById(R.id.thumb_recycle_view);
        this.e = e39.a(context, 48.0f);
        this.f = e39.a(context, 48.0f);
        this.g = e39.a(context, 38.0f);
        ThumbItemLayoutManager thumbItemLayoutManager = new ThumbItemLayoutManager(context, this.e, this.f);
        this.d = thumbItemLayoutManager;
        thumbItemLayoutManager.setOrientation(0);
        this.b.setLayoutManager(this.d);
        this.b.addItemDecoration(new ThumbItemDecoration(e39.a(context, 38.0f), e39.a(context, 38.0f)));
        this.b.setOnScrollChangeListener(new a());
        b bVar = new b();
        this.k = bVar;
        this.b.addOnScrollListener(bVar);
        this.i = new FixedPreloadSizeProvider(this.e, this.f);
        this.j = new xia(getContext());
        RecyclerViewPreloader recyclerViewPreloader = new RecyclerViewPreloader(Glide.with(this), this.j, this.i, com.transsion.video_edit.b.b);
        this.h = recyclerViewPreloader;
        this.b.addOnScrollListener(recyclerViewPreloader);
        setAdapter(context);
        this.n = e39.d(getContext());
        this.m = isRtl();
    }
}
