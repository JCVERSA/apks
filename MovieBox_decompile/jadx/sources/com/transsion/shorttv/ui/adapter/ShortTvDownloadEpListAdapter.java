package com.transsion.shorttv.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.ui.widget.ShortTvDownloadEpItemView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class ShortTvDownloadEpListAdapter extends RecyclerView.Adapter {

    private final List f51103a = new ArrayList();

    private Subject f51104b;

    private Function1 f51105c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;)V", "a", "Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;", "f", "()Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class EpisodeViewHolder extends BaseViewHolder {

        private final ShortTvDownloadEpItemView view;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EpisodeViewHolder(ShortTvDownloadEpItemView view) {
            super(view);
            Intrinsics.h(view, "view");
            this.view = view;
        }

        public final ShortTvDownloadEpItemView getView() {
            return this.view;
        }
    }

    public static final void j(ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter, nr.d dVar, View view) {
        Function1 function1 = shortTvDownloadEpListAdapter.f51105c;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(dVar.b()));
        }
    }

    public final List getData() {
        return this.f51103a;
    }

    @Override
    public int getItemCount() {
        return this.f51103a.size();
    }

    @Override
    public void onBindViewHolder(EpisodeViewHolder holder, int i10) {
        Intrinsics.h(holder, "holder");
        final nr.d dVar = (nr.d) this.f51103a.get(i10);
        holder.getView().showIndex(dVar.b() + 1);
        holder.getView().showLockedImg(dr.b.f59061a.c(this.f51104b, dVar.a()));
        holder.getView().setSelect(dVar.d());
        holder.getView().showDownloadedImg(dVar.c());
        holder.getView().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ShortTvDownloadEpListAdapter.j(this.f51116a, dVar, view);
            }
        });
    }

    @Override
    public void onBindViewHolder(EpisodeViewHolder holder, int i10, List payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
        super.onBindViewHolder(holder, i10, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(0);
        if (obj instanceof nr.d) {
            nr.d dVar = (nr.d) obj;
            holder.getView().showLockedImg(dr.b.f59061a.c(this.f51104b, dVar.a()));
            holder.getView().setSelect(dVar.d());
            holder.getView().showDownloadedImg(dVar.c());
        }
    }

    @Override
    public EpisodeViewHolder onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        Context context = parent.getContext();
        Intrinsics.g(context, "getContext(...)");
        ShortTvDownloadEpItemView shortTvDownloadEpItemView = new ShortTvDownloadEpItemView(context);
        shortTvDownloadEpItemView.useForDownloadList();
        shortTvDownloadEpItemView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new EpisodeViewHolder(shortTvDownloadEpItemView);
    }

    public final void l(Function1 function1) {
        this.f51105c = function1;
    }

    public final void m(Subject subject) {
        this.f51104b = subject;
        notifyDataSetChanged();
    }
}
