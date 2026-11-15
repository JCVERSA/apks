package com.transsion.sniffer_load.adapter;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.moduleservice.IBtDownloadService;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.sniffer_load.WhatsAppSaveActivity;
import com.transsion.sniffer_load.sniffservice.SniffTorrentUtil;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.dz5;
import defpackage.f5;
import defpackage.ikc;
import defpackage.p06;
import defpackage.raa;
import defpackage.ux0;
import java.util.List;

public abstract class DownloadViewAdapter extends BaseQuickAdapter<DownloadMain.ItemData, BaseViewHolder> {
    public final String o;
    public final int p;

    public class a extends ux0 {
        public final DownloadMain.ItemData b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, DownloadMain.ItemData itemData) {
            super(i);
            this.b = itemData;
        }

        @Override
        public void onNoDoubleClick(View view) {
            DownloadViewAdapter.this.i(this.b, view);
            dz5.c(DownloadViewAdapter.this.o, DownloadViewAdapter.this.p, this.b);
        }
    }

    public DownloadViewAdapter(int i, List list, String str, int i2) {
        super(i, list);
        this.o = str;
        this.p = i2;
    }

    public void d(BaseViewHolder baseViewHolder, DownloadMain.ItemData itemData) {
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, DownloadMain.ItemData itemData) {
        d(baseViewHolder, itemData);
        baseViewHolder.itemView.setOnClickListener(new a(1000, itemData));
    }

    public void h(boolean z, DownloadMain.ItemData itemData) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(z ? "analysis_name" : "bookmark_name", itemData.getWebsite_name());
        bundle.putString(z ? "analysis_address" : "bookmark_address", itemData.getWebsite_link());
        trackData.add(z ? "analysis_name" : "bookmark_name", itemData.getWebsite_name());
        trackData.add(z ? "analysis_address" : "bookmark_address", itemData.getWebsite_link());
        if (!z) {
            bundle.putInt("TYPE", 0);
            trackData.add("TYPE", 0);
        }
        p06.q0(trackData, bundle, z ? "dl_analysis_cl" : "dl_bm_cl", 9324L);
    }

    public void i(DownloadMain.ItemData itemData, View view) {
        if (DownloadMain.ItemData.isBt(itemData.getIs_bt())) {
            IBtDownloadService service = IBtDownloadService.ServiceInstance.getService();
            if (!SniffTorrentUtil.isTorrentSource(Uri.parse(itemData.getWebsite_link())) || service == null) {
                return;
            }
            service.sniffTorrent(this.mContext, view, Uri.parse(itemData.getWebsite_link()), "");
            return;
        }
        if (itemData.isWhatsApp()) {
            if (raa.g(this.mContext)) {
                j(itemData, !ikc.c(this.mContext, true, false));
                return;
            } else {
                ToastUtils.s(R.string.whats_app_not_installed);
                return;
            }
        }
        Intent intent = new Intent(this.mContext, (Class<?>) WebActivity.class);
        intent.putExtra(VkConstant.URL, itemData.getWebsite_link());
        intent.putExtra("need_new_web", true);
        intent.putExtra("web_url_from", "dl_brower_rpfloating_reopen_cl");
        intent.putExtra("is_bt", DownloadMain.ItemData.isBt(itemData.getIs_bt()));
        intent.putParcelableArrayListExtra("download_content", itemData.getWebsite_download_contents());
        f5.b(intent, 1242, (Activity) this.mContext);
        p06.d0("dl_brower_rpfloating_reopen_cl");
    }

    public final void j(DownloadMain.ItemData itemData, boolean z) {
        f5.c(new Intent(this.mContext, (Class<?>) WhatsAppSaveActivity.class), this.mContext);
        h(true, itemData);
    }
}
