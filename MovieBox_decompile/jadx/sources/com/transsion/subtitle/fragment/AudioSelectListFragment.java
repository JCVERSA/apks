package com.transsion.subtitle.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.subtitle.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\u0018\u0000 -2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001.B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J'\u0010\u000b\u001a\u00020\n2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J!\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00060\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006/"}, d2 = {"Lcom/transsion/subtitle/fragment/AudioSelectListFragment;", "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;", "Ljt/c;", "<init>", "()V", "", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "list", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "", "k0", "(Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;)V", "Landroid/view/LayoutInflater;", "inflater", "h0", "(Landroid/view/LayoutInflater;)Ljt/c;", "lazyLoadData", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "Llt/b;", "callback", "j0", "(Llt/b;)V", "", "g", "Ljava/util/List;", "dataList", "h", "Lcom/transsion/baselib/db/download/DownloadBean;", "Lcom/transsion/subtitle/adapter/a;", "i", "Lcom/transsion/subtitle/adapter/a;", "listAdapter", "", "j", "I", "selectedPosition", CampaignEx.JSON_KEY_AD_K, "Llt/b;", "mCallback", "l", "a", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AudioSelectListFragment extends SubtitleBaseFragment<jt.c> {

    public static final Companion INSTANCE = new Companion(null);

    private DownloadBean downloadBean;

    private com.transsion.subtitle.adapter.a listAdapter;

    private lt.b mCallback;

    private List dataList = new ArrayList();

    private int selectedPosition = -1;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AudioSelectListFragment a(List list, DownloadBean downloadBean, String str) {
            Intrinsics.h(list, "list");
            AudioSelectListFragment audioSelectListFragment = new AudioSelectListFragment();
            audioSelectListFragment.k0(list, downloadBean);
            audioSelectListFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("KEY_PAGE_NAME", str)));
            return audioSelectListFragment;
        }

        private Companion() {
        }
    }

    public static final void i0(AudioSelectListFragment audioSelectListFragment, com.transsion.subtitle.adapter.a aVar, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        if (i10 == audioSelectListFragment.selectedPosition) {
            return;
        }
        DubsInfo dubsInfo = (DubsInfo) audioSelectListFragment.dataList.get(i10);
        int i11 = audioSelectListFragment.selectedPosition;
        if (i11 >= 0) {
            ((DubsInfo) audioSelectListFragment.dataList.get(i11)).setSelected(false);
            adapter.notifyItemChanged(audioSelectListFragment.selectedPosition);
        }
        audioSelectListFragment.selectedPosition = i10;
        dubsInfo.setSelected(true);
        adapter.notifyItemChanged(i10);
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = audioSelectListFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        c0922a.c(tag, "item select, " + dubsInfo.getLanName() + ", code = " + dubsInfo.getLanCode(), true);
        lt.b bVar = audioSelectListFragment.mCallback;
        if (bVar != null) {
            bVar.h(dubsInfo);
        }
        lt.b bVar2 = audioSelectListFragment.mCallback;
        if (bVar2 != null) {
            String string = aVar.getContext().getString(R$string.audio_switch_toast);
            Intrinsics.g(string, "getString(...)");
            bVar2.c(string);
        }
        audioSelectListFragment.a0();
    }

    public final void k0(List list, DownloadBean downloadBean) {
        this.downloadBean = downloadBean;
        this.dataList.clear();
        this.dataList.addAll(list);
        int size = this.dataList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((DubsInfo) this.dataList.get(i10)).getIsSelected()) {
                this.selectedPosition = i10;
                return;
            }
        }
    }

    @Override
    public jt.c getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        jt.c cVarC = jt.c.c(inflater);
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        RecyclerView recyclerView;
        Intrinsics.h(view, "view");
        final com.transsion.subtitle.adapter.a aVar = new com.transsion.subtitle.adapter.a(this.dataList);
        aVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i10) {
                AudioSelectListFragment.i0(this.f52820a, aVar, baseQuickAdapter, view2, i10);
            }
        });
        this.listAdapter = aVar;
        jt.c cVar = (jt.c) getMViewBinding();
        if (cVar == null || (recyclerView = cVar.f63270b) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.listAdapter);
    }

    public final void j0(lt.b callback) {
        this.mCallback = callback;
    }

    @Override
    public void lazyLoadData() {
    }
}
