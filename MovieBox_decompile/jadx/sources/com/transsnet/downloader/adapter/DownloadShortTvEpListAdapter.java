package com.transsnet.downloader.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.MBridgeConstans;
import com.transsnet.downloader.widget.DownloadShortTvEpItemView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class DownloadShortTvEpListAdapter extends RecyclerView.Adapter {

    private final List f56221a = new ArrayList();

    private Function1 f56222b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;)V", "a", "Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;", "f", "()Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class EpisodeViewHolder extends BaseViewHolder {

        private final DownloadShortTvEpItemView view;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EpisodeViewHolder(DownloadShortTvEpItemView view) {
            super(view);
            Intrinsics.h(view, "view");
            this.view = view;
        }

        public final DownloadShortTvEpItemView getView() {
            return this.view;
        }
    }

    public static final void j(DownloadShortTvEpListAdapter downloadShortTvEpListAdapter, yw.c cVar, View view) {
        Function1 function1 = downloadShortTvEpListAdapter.f56222b;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(cVar.a()));
        }
    }

    public final List getData() {
        return this.f56221a;
    }

    @Override
    public int getItemCount() {
        return this.f56221a.size();
    }

    @Override
    public void onBindViewHolder(EpisodeViewHolder holder, int i10) {
        Intrinsics.h(holder, "holder");
        final yw.c cVar = (yw.c) this.f56221a.get(i10);
        holder.getView().showIndex(cVar.a() + 1);
        holder.getView().showLockImg(!cVar.c());
        if (cVar.c()) {
            holder.getView().setSelect(cVar.d());
            holder.getView().showDownloadImg(cVar.b());
        }
        holder.getView().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DownloadShortTvEpListAdapter.j(this.f56333a, cVar, view);
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
        if (obj instanceof yw.c) {
            yw.c cVar = (yw.c) obj;
            holder.getView().showLockImg(!cVar.c());
            if (cVar.c()) {
                holder.getView().setSelect(cVar.d());
                holder.getView().showDownloadImg(cVar.b());
            }
        }
    }

    @Override
    public EpisodeViewHolder onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        Context context = parent.getContext();
        Intrinsics.g(context, "getContext(...)");
        DownloadShortTvEpItemView downloadShortTvEpItemView = new DownloadShortTvEpItemView(context);
        downloadShortTvEpItemView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new EpisodeViewHolder(downloadShortTvEpItemView);
    }

    public final void l(Function1 function1) {
        this.f56222b = function1;
    }
}
