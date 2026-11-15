package com.transsion.onlinevideo.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.CollectItem;
import com.transsion.onlinevideo.R;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;

public class OnlineCollectAdapter extends BaseQuickAdapter<CollectItem, BaseViewHolder> {
    public int o;
    public ArrayList p;
    public ArrayList q;
    public CollectItem r;
    public Context s;
    public a t;

    public interface a {
        void b(int i);

        void c(boolean z);
    }

    public OnlineCollectAdapter(Context context) {
        super(R.layout.rv_item_online_collect_video);
        this.p = new ArrayList();
        this.q = new ArrayList();
        this.r = new CollectItem();
        this.s = context;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, CollectItem collectItem) {
        s(baseViewHolder, collectItem);
    }

    public ArrayList g() {
        return this.p;
    }

    public void h(boolean z) {
        this.p.clear();
        if (z) {
            this.p.addAll(getData());
        }
        this.t.c(z);
        notifyDataSetChanged();
    }

    public void i(CollectItem collectItem, boolean z, int i) {
        Log.d("OnlineHistoryAdapter", "selectItem " + z + StringUtils.COMMA + i);
        if (z) {
            if (!this.p.contains(collectItem)) {
                this.p.add(collectItem);
            }
        } else if (this.p.contains(collectItem)) {
            this.p.remove(collectItem);
        }
        this.t.b(this.p.size());
        notifyDataSetChanged();
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return createBaseViewHolder(viewGroup, R.layout.rv_item_online_collect_video);
    }

    public void r(int i) {
        this.o = i;
        notifyDataSetChanged();
    }

    public void s(BaseViewHolder baseViewHolder, CollectItem collectItem) {
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(com.transsion.magicvideo.R.id.iv_bucket_fragment_item);
        View view = baseViewHolder.itemView;
        int i = com.transsion.magicvideo.R.id.iv_bucket_fragment_checkBox;
        CheckBox checkBox = (CheckBox) view.findViewById(i);
        if (this.o == 12) {
            checkBox.setVisibility(0);
            baseViewHolder.addOnClickListener(i);
            checkBox.setChecked(this.p.contains(collectItem));
        } else {
            checkBox.setVisibility(8);
        }
        baseViewHolder.setText(com.transsion.magicvideo.R.id.tv_main_fragment_item, collectItem.getVideoName());
        RequestBuilder<Bitmap> requestBuilderLoad2 = Glide.with(this.mContext).asBitmap().load2(collectItem.getCoverX());
        int i2 = R.drawable.ic_empty_placeholder;
        requestBuilderLoad2.placeholder(i2).error(i2).into(imageView);
    }

    public void setOnSelectListener(a aVar) {
        this.t = aVar;
    }
}
