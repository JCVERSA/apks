package com.transsion.sniffer_load.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.sniffer_load.R;
import com.transsion.utils.CustomGridLayoutManager;
import java.util.List;

public class DownloadAViewHolder extends DownloadViewHolder<DownloadMain.PageItem> {
    public static final int u = R.layout.adapter_item_a;
    public TextView p;
    public RecyclerView q;
    public DownloadViewAdapter r;
    public boolean s;
    public int t;

    public class a extends DownloadViewAdapter {
        public final DownloadMain.PageItem q;
        public final Context r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, List list, String str, int i2, DownloadMain.PageItem pageItem, Context context) {
            super(i, list, str, i2);
            this.q = pageItem;
            this.r = context;
        }

        @Override
        public void d(BaseViewHolder baseViewHolder, DownloadMain.ItemData itemData) {
            String string;
            super.d(baseViewHolder, itemData);
            int i = this.q.getCategory_id() == 5 ? R.id.iv_cover : R.id.round_icon;
            if (TextUtils.isEmpty(itemData.getWebsite_name()) || !itemData.getWebsite_name().equalsIgnoreCase(DownloadMain.ItemData.WHATSAPP_NAME)) {
                String icon = itemData.getIcon();
                baseViewHolder.setText(R.id.tv_name, itemData.getWebsite_name());
                string = icon;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("android.resource://");
                Resources resources = this.r.getResources();
                int i2 = R.drawable.icon_whatapp_logo_new;
                sb.append(resources.getResourcePackageName(i2));
                sb.append("/");
                sb.append(this.r.getResources().getResourceTypeName(i2));
                sb.append("/");
                sb.append(this.r.getResources().getResourceEntryName(i2));
                string = Uri.parse(sb.toString()).toString();
                baseViewHolder.setText(R.id.tv_name, this.r.getResources().getString(R.string.whatsapp));
            }
            if (baseViewHolder.getView(i) == null || !(baseViewHolder.getView(i) instanceof ImageView)) {
                return;
            }
            RequestBuilder<Drawable> requestBuilderApply = Glide.with(this.r).load(string).apply((BaseRequestOptions<?>) (this.q.getCategory_id() == 5 ? RequestOptions.circleCropTransform() : new RequestOptions()));
            int i3 = R.drawable.ic_bookmark_placeholder;
            requestBuilderApply.placeholder(i3).error(i3).into((ImageView) baseViewHolder.getView(i));
        }
    }

    public DownloadAViewHolder(View view) {
        super(view);
        this.s = false;
        this.t = 4;
        this.p = (TextView) view.findViewById(R.id.tv_title);
        this.q = (RecyclerView) view.findViewById(R.id.rv_item);
    }

    @Override
    public void a(Context context, DownloadMain.PageItem pageItem) {
        this.p.setText(b(pageItem));
        int i = pageItem.getCategory_id() == 5 ? 2 : 4;
        if (this.s) {
            CustomGridLayoutManager customGridLayoutManager = new CustomGridLayoutManager(context, 1);
            customGridLayoutManager.setOrientation(0);
            this.q.setLayoutManager(customGridLayoutManager);
        } else {
            this.q.setLayoutManager(new CustomGridLayoutManager(context, i));
        }
        a aVar = new a(pageItem.getCategory_id() == 5 ? R.layout.adapter_download_z : R.layout.adapter_download_a, pageItem.getData_list(), pageItem.getCategory_name(), pageItem.getWebsite_type(), pageItem, context);
        this.r = aVar;
        this.q.setAdapter(aVar);
    }

    public void d(int i) {
        this.t = i;
        LogUtils.i("spanCount: " + this.t);
    }
}
