package com.transsion.onlinevideo.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.VideoInfo;
import com.transsion.onlinevideo.R;

public class VideoSerialAdapter extends BaseQuickAdapter<VideoInfo.SerialListBean, BaseViewHolder> {
    public int o;

    public VideoSerialAdapter() {
        super(R.layout.item_video_serial);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, VideoInfo.SerialListBean serialListBean) {
        if (g()) {
            baseViewHolder.setText(R.id.tv_title, serialListBean.getTitle());
            Glide.with(this.mContext).load2(serialListBean.getCoverX()).placeholder(R.drawable.ic_video_horizontal_placeholder).into((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_cover));
        } else {
            baseViewHolder.setText(R.id.tv_title, String.valueOf(serialListBean.getSerialNo()));
            baseViewHolder.setVisible(R.id.iv_vip, serialListBean.getPayType().intValue() != 0);
        }
    }

    public boolean g() {
        int i = this.o;
        return i == 3 || i == 1;
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return new BaseViewHolder(LayoutInflater.from(this.mContext).inflate(g() ? R.layout.item_variety_detail_show : R.layout.item_video_serial_2, viewGroup, false));
    }

    public void r(int i) {
        this.o = i;
    }
}
