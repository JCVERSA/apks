package com.mgtv.ssp.immersion.ui;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.mgtv.ssp.immersion.a.b;

public class ViewPagerLayoutManager extends LinearLayoutManager implements RecyclerView.OnChildAttachStateChangeListener {
    private PagerSnapHelper a;
    private b b;
    private int c;
    private Context d;

    public ViewPagerLayoutManager(Context context, int i) {
        this(context, i, false);
    }

    public void a(b bVar) {
        this.b = bVar;
    }

    @Override
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.a.attachToRecyclerView(recyclerView);
        recyclerView.addOnChildAttachStateChangeListener(this);
    }

    @Override
    public void onChildViewAttachedToWindow(@NonNull View view) {
        if (this.b == null || getChildCount() != 1) {
            return;
        }
        this.b.a();
    }

    @Override
    public void onChildViewDetachedFromWindow(@NonNull View view) {
        if (this.c >= 0) {
            b bVar = this.b;
            if (bVar != null) {
                bVar.a(true, getPosition(view));
                return;
            }
            return;
        }
        b bVar2 = this.b;
        if (bVar2 != null) {
            bVar2.a(false, getPosition(view));
        }
    }

    @Override
    public void onScrollStateChanged(int i) {
        View viewFindSnapView = this.a.findSnapView(this);
        if (viewFindSnapView == null) {
            return;
        }
        try {
            int position = getPosition(viewFindSnapView);
            boolean z = true;
            if (i != 0) {
                if (this.b != null && getChildCount() == 1 && position != getItemCount() - 1) {
                    this.b.a(position);
                }
                Glide.with(this.d).pauseRequests();
                return;
            }
            if (this.b != null && (getChildCount() == 1 || getChildCount() == 2)) {
                b bVar = this.b;
                if (position != getItemCount() - 1) {
                    z = false;
                }
                bVar.a(position, z);
            }
            Glide.with(this.d).resumeRequests();
        } catch (Throwable unused) {
        }
    }

    @Override
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.c = i;
        return super.scrollHorizontallyBy(i, recycler, state);
    }

    @Override
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.c = i;
        return super.scrollVerticallyBy(i, recycler, state);
    }

    public ViewPagerLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
        this.a = new PagerSnapHelper();
        this.d = context;
    }
}
