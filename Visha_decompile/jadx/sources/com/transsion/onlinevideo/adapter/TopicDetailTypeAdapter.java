package com.transsion.onlinevideo.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.MediaBean;
import com.transsion.onlinevideo.R;
import defpackage.at7;
import defpackage.pp3;

public class TopicDetailTypeAdapter extends BaseQuickAdapter<MediaBean, BaseViewHolder> {
    public boolean o;
    public boolean p;

    public TopicDetailTypeAdapter() {
        super(R.layout.media_item);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaBean mediaBean) {
        if (mediaBean != null) {
            baseViewHolder.setText(R.id.tv_media_title, mediaBean.getTitle());
            baseViewHolder.setVisible(R.id.iv_vip, pp3.L && mediaBean.showVipLogo());
            baseViewHolder.setVisible(R.id.iv_cc_tag, mediaBean.getCaptionLangSort() != 0);
            ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_media_cover);
            baseViewHolder.setText(R.id.iv_serial_tag, at7.a(mediaBean.getSerial_count(), mediaBean.getFinish_status()));
            Glide.with(this.mContext).asBitmap().centerCrop().load2(this.o ? mediaBean.getCover_x() : mediaBean.getCover_y()).placeholder(this.o ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).error(this.o ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).into(imageView);
        }
    }

    public void d(boolean z) {
        this.p = z;
    }

    public void g(boolean z) {
        this.o = z;
    }

    @Override
    public int getDefItemViewType(int i) {
        return this.o ? 1 : 2;
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (this.o) {
            return new BaseViewHolder(LayoutInflater.from(this.mContext).inflate(this.p ? R.layout.adapter_topicdetail_hor : R.layout.media_horizontal_item, viewGroup, false));
        }
        return new BaseViewHolder(LayoutInflater.from(this.mContext).inflate(this.p ? R.layout.adapter_topicdetail_ver : R.layout.media_item, viewGroup, false));
    }
}
