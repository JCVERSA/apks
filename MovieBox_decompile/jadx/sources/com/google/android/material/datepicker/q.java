package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

abstract class q extends LinearLayoutManager {

    class a extends androidx.recyclerview.widget.h {
        a(Context context) {
            super(context);
        }

        @Override
        protected float v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    q(Context context, int i10, boolean z10) {
        super(context, i10, z10);
    }

    @Override
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.x xVar, int i10) {
        a aVar = new a(recyclerView.getContext());
        aVar.p(i10);
        startSmoothScroll(aVar);
    }
}
