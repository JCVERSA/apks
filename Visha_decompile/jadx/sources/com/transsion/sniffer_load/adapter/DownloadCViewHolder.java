package com.transsion.sniffer_load.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.sniffer_load.R;
import com.transsion.utils.CustomGridLayoutManager;
import java.util.List;

public class DownloadCViewHolder extends DownloadViewHolder<DownloadMain.PageItem> {
    public static final int t = R.layout.adapter_item_c;
    public TextView p;
    public RecyclerView q;
    public DownloadViewAdapter r;
    public boolean s;

    public class a extends DownloadViewAdapter {
        public final Context q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, List list, String str, int i2, Context context) {
            super(i, list, str, i2);
            this.q = context;
        }

        @Override
        public void d(BaseViewHolder baseViewHolder, DownloadMain.ItemData itemData) {
            super.d(baseViewHolder, itemData);
            RequestBuilder<Drawable> requestBuilderLoad = Glide.with(this.q).load(itemData.getIcon());
            int i = R.drawable.ic_bookmark_placeholder;
            requestBuilderLoad.placeholder(i).error(i).into((ImageView) baseViewHolder.getView(R.id.iv_cover));
            baseViewHolder.setText(R.id.tv_name, itemData.getWebsite_name());
        }
    }

    public DownloadCViewHolder(View view) {
        super(view);
        this.s = false;
        this.p = (TextView) view.findViewById(R.id.tv_title);
        this.q = (RecyclerView) view.findViewById(R.id.rv_item);
    }

    @Override
    public void a(Context context, DownloadMain.PageItem pageItem) {
        this.p.setText(b(pageItem));
        if (this.s) {
            CustomGridLayoutManager customGridLayoutManager = new CustomGridLayoutManager(context, 1);
            customGridLayoutManager.setOrientation(0);
            this.q.setLayoutManager(customGridLayoutManager);
        } else {
            this.q.setLayoutManager(new CustomGridLayoutManager(context, 4));
        }
        a aVar = new a(R.layout.adapter_download_c, pageItem.getData_list(), pageItem.getCategory_name(), pageItem.getWebsite_type(), context);
        this.r = aVar;
        this.q.setAdapter(aVar);
    }
}
