package com.transsnet.downloader.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.MBridgeConstans;
import com.therouter.TheRouter;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.dialog.DownloadTaskControlManagerDialog;
import com.transsnet.downloader.fragment.DownloadPanelFragment;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/transsnet/downloader/adapter/DownTitleHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsnet/downloader/adapter/u0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;", "fragment", "<init>", "(Landroid/view/View;Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V", "", RequestParameters.POSITION, "Lp6/a;", WebConstants.FIELD_ITEM, "", "a", "(ILp6/a;)V", "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;", "getFragment", "()Lcom/transsnet/downloader/fragment/DownloadPanelFragment;", "setFragment", "(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownTitleHolder extends BaseViewHolder implements u0 {

    private DownloadPanelFragment fragment;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownTitleHolder(View view, DownloadPanelFragment fragment) {
        super(view);
        Intrinsics.h(view, "view");
        Intrinsics.h(fragment, "fragment");
        this.fragment = fragment;
    }

    public static final CharSequence h(DownTitleHolder downTitleHolder, int i10, p6.a aVar) {
        String string = downTitleHolder.itemView.getResources().getString(i10);
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String string2 = downTitleHolder.itemView.getContext().getString(R$string.str_count);
        Intrinsics.g(string2, "getString(...)");
        String str = String.format(string2, Arrays.copyOf(new Object[]{Integer.valueOf(((DownloadBean) aVar).getCount())}, 1));
        Intrinsics.g(str, "format(...)");
        return string + " " + str;
    }

    public static final void i(boolean z10, boolean z11, View view) {
        new DownloadTaskControlManagerDialog(z10, z11).k0(com.blankj.utilcode.util.a.b(), "DownloadTaskControlManagerDialog");
        wj.d dVar = (wj.d) TheRouter.d(wj.d.class, new Object[0]);
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override
    public void a(int position, final p6.a item) {
        int iA;
        final int i10;
        if (item instanceof DownloadBean) {
            TnTextView tnTextView = (TnTextView) getView(R$id.tvTitle);
            View view = getView(R$id.vTopSpace);
            DownloadBean downloadBean = (DownloadBean) item;
            if (downloadBean.getIsMore()) {
                iA = com.blankj.utilcode.util.a0.a(12.0f);
                i10 = R$string.str_downloading_title;
            } else {
                List list = (List) DownloadListManager.f57771m.a().G().f();
                iA = com.blankj.utilcode.util.a0.a((list != null ? list.size() : 0) > 0 ? 8.0f : 12.0f);
                i10 = R$string.str_downloaded_title;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = iA;
            view.setLayoutParams(layoutParams);
            if (downloadBean.getCount() > 0) {
                tnTextView.setTextAction(new Function0() {
                    @Override
                    public final Object invoke() {
                        return DownTitleHolder.h(this.f56275a, i10, item);
                    }
                });
            }
            TextView textView = (TextView) getView(R$id.tvManager);
            com.transsnet.downloader.util.d dVar = com.transsnet.downloader.util.d.f57712a;
            Context context = textView.getContext();
            Intrinsics.g(context, "getContext(...)");
            final boolean zJ = dVar.j(context);
            im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
            final boolean z10 = bVar != null ? bVar.z() : false;
            if (!z10 && zJ) {
                textView.setVisibility(8);
            } else if (position != 0) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        DownTitleHolder.i(zJ, z10, view2);
                    }
                });
            }
        }
    }

    @Override
    public void b(int i10, p6.a aVar) {
        u0.a.a(this, i10, aVar);
    }

    @Override
    public void c(u0.b bVar) {
        u0.a.b(this, bVar);
    }
}
