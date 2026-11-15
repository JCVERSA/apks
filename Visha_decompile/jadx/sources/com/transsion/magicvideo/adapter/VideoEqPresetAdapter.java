package com.transsion.magicvideo.adapter;

import android.content.Context;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.magicvideo.R;

public class VideoEqPresetAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    public int o;
    public int p;
    public int q;

    public VideoEqPresetAdapter(Context context) {
        super(R.layout.adapter_video_eq_preset);
        this.o = 1;
        this.p = -1;
        this.q = -660495967;
    }

    public int g() {
        return this.o;
    }

    public void r(int i) {
        this.o = i;
        notifyDataSetChanged();
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, String str) {
        int i = R.id.tv_value;
        baseViewHolder.setText(i, str);
        if (baseViewHolder.getAdapterPosition() == this.o) {
            baseViewHolder.setBackgroundRes(i, R.drawable.eq_video_preset_bg_checked);
            baseViewHolder.setTextColor(i, this.p);
        } else {
            baseViewHolder.setBackgroundRes(i, R.drawable.eq_video_preset_bg);
            baseViewHolder.setTextColor(i, this.q);
        }
    }
}
