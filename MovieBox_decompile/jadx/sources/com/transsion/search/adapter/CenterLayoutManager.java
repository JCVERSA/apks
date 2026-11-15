package com.transsion.search.adapter;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h;

public class CenterLayoutManager extends LinearLayoutManager {

    private static class a extends h {
        public a(Context context) {
            super(context);
        }

        @Override
        public int s(int i10, int i11, int i12, int i13, int i14) {
            return (i12 + ((i13 - i12) / 2)) - (i10 + ((i11 - i10) / 2));
        }

        @Override
        protected float v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    public CenterLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    @Override
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.x xVar, int i10) {
        a aVar = new a(recyclerView.getContext());
        aVar.p(i10);
        startSmoothScroll(aVar);
    }
}
