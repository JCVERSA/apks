package com.transsion.magicvideo.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;

public class ClickableRecycleView extends RecyclerView {
    public boolean e;
    public GestureDetector f;

    public class a extends GestureDetector.SimpleOnGestureListener {
        public a() {
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            View viewFindChildViewUnder = ClickableRecycleView.this.findChildViewUnder(motionEvent.getX(), motionEvent.getY());
            if (viewFindChildViewUnder != null && ClickableRecycleView.this.e && (viewFindChildViewUnder.getParent() == null || viewFindChildViewUnder.getParent() == ClickableRecycleView.this)) {
                RecyclerView.ViewHolder childViewHolder = ClickableRecycleView.this.getChildViewHolder(viewFindChildViewUnder);
                RecyclerView.Adapter adapter = ClickableRecycleView.this.getAdapter();
                if (childViewHolder == null || !(adapter instanceof BaseQuickAdapter)) {
                    return false;
                }
                ((BaseQuickAdapter) adapter).setOnItemClick(viewFindChildViewUnder, childViewHolder.getAdapterPosition());
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("canTapOnScrolling:");
            sb.append(ClickableRecycleView.this.e);
            sb.append(" v:");
            sb.append(viewFindChildViewUnder);
            sb.append(" parent:");
            sb.append(viewFindChildViewUnder != null ? viewFindChildViewUnder.getParent() : "null");
            sb.append(" this:");
            sb.append(ClickableRecycleView.this);
            LogUtils.O(sb.toString());
            return false;
        }
    }

    public ClickableRecycleView(@NonNull Context context) {
        super(context);
        this.e = false;
        this.f = new GestureDetector(new a());
    }

    public final boolean b() {
        return getContext().getResources().getConfiguration().orientation == 2;
    }

    @Override
    public boolean fling(int i, int i2) {
        return super.fling(i, i2);
    }

    @Override
    public float getLeftFadingEdgeStrength() {
        return b() ? 1.0f : 0.0f;
    }

    @Override
    public int getMaxFlingVelocity() {
        return super.getMaxFlingVelocity();
    }

    @Override
    public float getRightFadingEdgeStrength() {
        return 0.0f;
    }

    @Override
    public void onScrolled(int i, int i2) {
        super.onScrolled(i, i2);
        this.e = Math.abs(i) < 10;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            this.f.onTouchEvent(motionEvent);
        } catch (Exception e) {
            Log.e("ClickableRecycleView", "e_" + e.getMessage());
        }
        return super.onTouchEvent(motionEvent);
    }

    public ClickableRecycleView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.f = new GestureDetector(new a());
    }

    public ClickableRecycleView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = false;
        this.f = new GestureDetector(new a());
        setItemViewCacheSize(30);
    }
}
