package com.transsion.video_edit;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public class ThumbItemLayoutManager extends LinearLayoutManager {
    public int e;
    public int f;
    public boolean g;

    public ThumbItemLayoutManager(Context context, int i, int i2) {
        this(context);
        this.e = i;
        this.f = i2;
        setOrientation(0);
    }

    @Override
    public boolean canScrollHorizontally() {
        return super.canScrollHorizontally() && this.g;
    }

    @Override
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return super.computeVerticalScrollOffset(state);
    }

    public void g(boolean z) {
        this.g = z;
    }

    @Override
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(this.e, this.f);
    }

    public ThumbItemLayoutManager(Context context) {
        super(context);
        this.g = false;
    }

    public ThumbItemLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.g = false;
    }
}
