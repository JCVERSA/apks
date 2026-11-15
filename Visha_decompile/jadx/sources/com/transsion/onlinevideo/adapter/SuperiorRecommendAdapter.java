package com.transsion.onlinevideo.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.SuperiorRecommend;
import com.transsion.onlinevideo.R;
import defpackage.at7;
import defpackage.pp3;

public class SuperiorRecommendAdapter extends BaseQuickAdapter<SuperiorRecommend, BaseViewHolder> {
    public boolean o;
    public boolean p;

    public SuperiorRecommendAdapter() {
        super(R.layout.media_item);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, SuperiorRecommend superiorRecommend) {
        if (superiorRecommend != null) {
            baseViewHolder.setText(R.id.tv_media_title, superiorRecommend.getVideo_name());
            baseViewHolder.setText(R.id.iv_serial_tag, at7.a(Integer.valueOf(superiorRecommend.getSerial_count()), superiorRecommend.getFinish_status()));
            baseViewHolder.setVisible(R.id.iv_vip, pp3.L && superiorRecommend.showVipLogo());
            Glide.with(this.mContext).asBitmap().load2(this.o ? superiorRecommend.getCover_x() : superiorRecommend.getCover_y()).centerCrop().placeholder(this.o ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).error(this.o ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).into((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_media_cover));
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
