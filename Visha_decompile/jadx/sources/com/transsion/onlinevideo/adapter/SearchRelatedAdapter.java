package com.transsion.onlinevideo.adapter;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.VideoInfo;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.collect.OnlineCollectDataManager;
import defpackage.ea;
import defpackage.pcc;
import defpackage.pp3;

public class SearchRelatedAdapter extends BaseQuickAdapter<VideoInfo, BaseViewHolder> {
    public SearchRelatedAdapter() {
        super(R.layout.media_grid_item);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, VideoInfo videoInfo) {
        baseViewHolder.setText(R.id.tv_media_title, videoInfo.getTitle());
        int i = R.id.iv_vip;
        baseViewHolder.setVisible(i, pp3.L && videoInfo.isVip());
        if (pp3.L && videoInfo.isVip()) {
            pcc.d((ImageView) baseViewHolder.itemView.findViewById(i));
        }
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_media_cover);
        int i2 = R.id.iv_collect;
        baseViewHolder.setVisible(i2, ea.d.contains(videoInfo.getVideoId()));
        baseViewHolder.setImageResource(i2, OnlineCollectDataManager.d().f(String.valueOf(videoInfo.getVideoId())) ? R.drawable.ic_collected_recommend : R.drawable.ic_collect_recommend);
        baseViewHolder.addOnClickListener(i2);
        RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(this.mContext).load2(videoInfo.getCoverY());
        int i3 = R.drawable.ic_online_cover_default;
        requestBuilderLoad2.placeholder(i3).error(i3).into(imageView);
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return new BaseViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.media_grid_item, viewGroup, false));
    }
}
