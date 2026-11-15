package com.transsion.onlinevideo.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.VideoInfo;
import com.transsion.onlinevideo.R;

public class OnlineSearchSerialAdapter extends BaseQuickAdapter<VideoInfo.SerialListBean, BaseViewHolder> {
    public int o;
    public boolean p;

    public OnlineSearchSerialAdapter() {
        super(R.layout.item_video_serial);
        this.p = false;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, VideoInfo.SerialListBean serialListBean) {
        if (h()) {
            baseViewHolder.setText(R.id.tv_title, serialListBean.getTitle());
            return;
        }
        if (baseViewHolder.getAdapterPosition() == 2 && this.p) {
            baseViewHolder.setText(R.id.tv_title, "...");
            baseViewHolder.setVisible(R.id.iv_vip, false);
        } else {
            baseViewHolder.setText(R.id.tv_title, String.valueOf(serialListBean.getSerialNo()));
            baseViewHolder.setVisible(R.id.iv_vip, serialListBean.getPayType().intValue() != 0);
        }
    }

    public boolean g() {
        return this.p;
    }

    public boolean h() {
        int i = this.o;
        return i == 3 || i == 1;
    }

    public void i(boolean z) {
        this.p = z;
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return new BaseViewHolder(LayoutInflater.from(this.mContext).inflate(h() ? R.layout.item_variety_show : R.layout.item_video_serial, viewGroup, false));
    }

    public void r(int i) {
        this.o = i;
    }
}
