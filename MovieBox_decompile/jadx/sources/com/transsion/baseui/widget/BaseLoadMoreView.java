package com.transsion.baseui.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baseui.R$id;
import com.transsion.baseui.R$layout;
import com.transsion.baseui.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import yg.l;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000f\b\u0017\u0018\u0000 &2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001'B\u0007¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\rJ\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u001a\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001f\u0010\u001eJ\u001f\u0010!\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0015H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0015H\u0016¢\u0006\u0004\b#\u0010$R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010%¨\u0006("}, d2 = {"Lcom/transsion/baseui/widget/BaseLoadMoreView;", "Ls6/a;", "Landroid/view/View$OnAttachStateChangeListener;", "Landroid/os/Parcelable;", "<init>", "()V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "Landroid/view/View;", "getLoadComplete", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;", "getLoadEndView", "getLoadFailView", "getLoadingView", "Landroid/view/ViewGroup;", "parent", "getRootView", "(Landroid/view/ViewGroup;)Landroid/view/View;", "", RequestParameters.POSITION, "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;", "loadMoreStatus", "", "convert", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILcom/chad/library/adapter/base/loadmore/LoadMoreStatus;)V", "p0", "onViewAttachedToWindow", "(Landroid/view/View;)V", "onViewDetachedFromWindow", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;", "CREATOR", "a", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class BaseLoadMoreView extends s6.a implements View.OnAttachStateChangeListener, Parcelable {
    private LoadMoreStatus loadMoreStatus;

    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public static final class Companion implements Parcelable.Creator {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override
        public s6.a createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new BaseLoadMoreView(parcel);
        }

        @Override
        public s6.a[] newArray(int i10) {
            return new s6.a[i10];
        }

        private Companion() {
        }
    }

    public class b {

        public static final int[] f42364a;

        static {
            int[] iArr = new int[LoadMoreStatus.values().length];
            try {
                iArr[LoadMoreStatus.Loading.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f42364a = iArr;
        }
    }

    public BaseLoadMoreView() {
        this.loadMoreStatus = LoadMoreStatus.Complete;
    }

    @Override
    public void convert(BaseViewHolder holder, int position, LoadMoreStatus loadMoreStatus) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(loadMoreStatus, "loadMoreStatus");
        this.loadMoreStatus = loadMoreStatus;
        super.convert(holder, position, loadMoreStatus);
        if (b.f42364a[loadMoreStatus.ordinal()] == 1) {
            uf.c.k(getLoadingView(holder));
        } else {
            uf.c.g(getLoadingView(holder));
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public View getLoadComplete(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        View viewFindViewById = holder.itemView.findViewById(R$id.tv_complete);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        return viewFindViewById;
    }

    @Override
    public View getLoadEndView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        View viewFindViewById = holder.itemView.findViewById(R$id.tv_no_more);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        return viewFindViewById;
    }

    @Override
    public View getLoadFailView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        View viewFindViewById = holder.itemView.findViewById(R$id.tv_err);
        AppCompatTextView appCompatTextView = (AppCompatTextView) viewFindViewById;
        appCompatTextView.setText(l.f76264a.e() ? appCompatTextView.getContext().getString(R$string.base_load_err) : appCompatTextView.getContext().getString(com.tn.lib.widget.R$string.no_network_tips));
        Intrinsics.g(viewFindViewById, "apply(...)");
        return viewFindViewById;
    }

    @Override
    public View getLoadingView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        View viewFindViewById = holder.itemView.findViewById(R$id.load_view);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        return viewFindViewById;
    }

    @Override
    public View getRootView(ViewGroup parent) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.base_item_load_more, parent, false);
        viewInflate.addOnAttachStateChangeListener(this);
        Intrinsics.e(viewInflate);
        return viewInflate;
    }

    @Override
    public void onViewAttachedToWindow(View p10) {
        ProgressBar progressBar;
        Intrinsics.h(p10, "p0");
        if (this.loadMoreStatus != LoadMoreStatus.Loading || (progressBar = (ProgressBar) p10.findViewById(R$id.load_view)) == null) {
            return;
        }
        uf.c.k(progressBar);
    }

    @Override
    public void onViewDetachedFromWindow(View p10) {
        Intrinsics.h(p10, "p0");
        ProgressBar progressBar = (ProgressBar) p10.findViewById(R$id.load_view);
        if (progressBar != null) {
            uf.c.g(progressBar);
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseLoadMoreView(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
    }
}
