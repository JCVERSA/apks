package com.tn.lib.view.layoutmanager;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001J#\u0010\b\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/tn/lib/view/layoutmanager/OverlapLayoutManager;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "Landroidx/recyclerview/widget/RecyclerView$t;", "Landroidx/recyclerview/widget/RecyclerView;", "recycler", "Landroidx/recyclerview/widget/RecyclerView$x;", "state", "", "onLayoutChildren", "(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)V", "", "a", "I", "overlapAmount", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OverlapLayoutManager extends LinearLayoutManager {

    private final int overlapAmount;

    @Override
    public void onLayoutChildren(RecyclerView.t recycler, RecyclerView.x state) {
        Intrinsics.h(recycler, "recycler");
        Intrinsics.h(state, "state");
        try {
            Result.Companion companion = Result.INSTANCE;
            detachAndScrapAttachedViews(recycler);
            int itemCount = getItemCount();
            int i10 = 0;
            for (int i11 = 0; i11 < itemCount; i11++) {
                View viewO = recycler.o(i11);
                Intrinsics.g(viewO, "getViewForPosition(...)");
                addView(viewO);
                measureChildWithMargins(viewO, 0, 0);
                int decoratedMeasuredWidth = getDecoratedMeasuredWidth(viewO);
                layoutDecorated(viewO, i10, 0, i10 + decoratedMeasuredWidth, getDecoratedMeasuredHeight(viewO));
                i10 += decoratedMeasuredWidth - this.overlapAmount;
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }
}
