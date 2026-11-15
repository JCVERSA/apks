package com.transsion.onlinevideo.adapter;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.HotSearchBean;
import com.transsion.onlinevideo.R;
import defpackage.pcc;
import defpackage.pp3;

public class HotSearchAdapter extends BaseQuickAdapter<HotSearchBean, BaseViewHolder> {
    public HotSearchAdapter() {
        super(R.layout.item_hot_search);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, HotSearchBean hotSearchBean) {
        int i;
        baseViewHolder.itemView.setTag(hotSearchBean);
        baseViewHolder.setText(R.id.tv_media_title, hotSearchBean.getTitle());
        int i2 = R.id.iv_hot_search;
        baseViewHolder.setVisible(i2, baseViewHolder.getAdapterPosition() <= 2);
        if (baseViewHolder.getAdapterPosition() <= 2) {
            if (baseViewHolder.getAdapterPosition() == 0) {
                i = R.drawable.ic_hot_search_1;
            } else {
                i = baseViewHolder.getAdapterPosition() == 1 ? R.drawable.ic_hot_search_2 : R.drawable.ic_hot_search_3;
            }
            baseViewHolder.setImageResource(i2, i);
        }
        int i3 = R.id.iv_vip;
        baseViewHolder.setVisible(i3, pp3.L && hotSearchBean.showVipLogo());
        if (pp3.L && hotSearchBean.showVipLogo()) {
            pcc.d((ImageView) baseViewHolder.itemView.findViewById(i3));
        }
        int iShowDisplayType = hotSearchBean.showDisplayType();
        int i4 = R.id.iv_tag;
        baseViewHolder.setVisible(i4, iShowDisplayType > 0);
        if (iShowDisplayType > 0) {
            baseViewHolder.setImageResource(i4, iShowDisplayType == 2 ? R.drawable.ic_display_hot_tag : R.drawable.ic_display_new_tag);
            pcc.d((ImageView) baseViewHolder.itemView.findViewById(i4));
        }
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_media_cover);
        baseViewHolder.addOnClickListener(R.id.iv_collect);
        RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(this.mContext).load2(hotSearchBean.getCoverY());
        int i5 = R.drawable.ic_online_cover_default;
        requestBuilderLoad2.placeholder(i5).error(i5).into(imageView);
    }
}
