package com.transsion.room.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.room.R$layout;
import com.transsion.room.api.RoomsViewType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fp.i0;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/transsion/room/widget/TrendingRoomsView;", "Lcom/transsion/room/widget/RoomsBaseView;", "Lfp/i0;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "initRecyclerView", "()V", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "Landroidx/appcompat/widget/AppCompatTextView;", "getTitleView", "()Landroidx/appcompat/widget/AppCompatTextView;", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TrendingRoomsView extends RoomsBaseView<i0> {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TrendingRoomsView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    public static final void F(TrendingRoomsView trendingRoomsView, View view) {
        trendingRoomsView.A();
    }

    public static final void G(TrendingRoomsView trendingRoomsView, View view) {
        trendingRoomsView.B();
    }

    @Override
    public RecyclerView getRecyclerView() {
        i0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            return mViewBinding.f60346c;
        }
        return null;
    }

    @Override
    public void initRecyclerView() {
        RecyclerView recyclerView;
        i0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f60346c) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 3, 1, false));
        recyclerView.addItemDecoration(new tf.a(lj.a.b(8), lj.a.b(8), 0, 0));
        recyclerView.setAdapter(getMAdapter());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TrendingRoomsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    @Override
    public AppCompatTextView getTitleView() {
        i0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            return mViewBinding.f60349f;
        }
        return null;
    }

    public TrendingRoomsView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TrendingRoomsView(Context context, AttributeSet attributeSet, int i10) {
        AppCompatTextView appCompatTextView;
        View view;
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        View.inflate(context, R$layout.view_trending_rooms, this);
        setMViewBinding(i0.a(this));
        initRecyclerView();
        getMAdapter().G1(RoomsViewType.TYPE_TRENDING);
        i0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (view = mViewBinding.f60345b) != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    TrendingRoomsView.F(this.f49898a, view2);
                }
            });
        }
        i0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (appCompatTextView = mViewBinding2.f60348e) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                TrendingRoomsView.G(this.f49899a, view2);
            }
        });
    }
}
