package com.transsnet.downloader.adapter;

import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class p extends BaseItemProvider {

    private final String f56317e;

    public p() {
        String string = Utils.a().getString(R$string.available);
        Intrinsics.g(string, "getString(...)");
        this.f56317e = string;
    }

    private final void A(BaseViewHolder baseViewHolder, boolean z10) {
        ((ImageView) baseViewHolder.getView(R$id.iv_mb_check)).setSelected(z10);
    }

    @Override
    public int l() {
        return 1;
    }

    @Override
    public int m() {
        return R$layout.item_download_res_path_phone_storage_mb;
    }

    @Override
    public void b(BaseViewHolder helper, yw.b item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        int color = Utils.a().getResources().getColor(item.a() <= 0 ? R$color.error_50 : R$color.text_02);
        TextView textView = (TextView) helper.getView(R$id.tv_phone_storage_available_size);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(item.a() <= 0 ? "0Mb" : zg.b.a(item.a(), 2));
        sb2.append(" ");
        sb2.append(this.f56317e);
        textView.setText(sb2.toString());
        textView.setTextColor(color);
        A(helper, item.f());
    }

    @Override
    public void f(BaseViewHolder helper, yw.b item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(payloads.size() - 1);
        if (obj instanceof Boolean) {
            A(helper, ((Boolean) obj).booleanValue());
        }
    }
}
