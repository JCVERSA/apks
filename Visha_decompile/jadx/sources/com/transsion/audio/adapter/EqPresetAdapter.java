package com.transsion.audio.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.audio.R;

public class EqPresetAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    public int o;
    public int p;
    public int q;

    @Override
    public void convert(BaseViewHolder baseViewHolder, String str) {
        int i = R.id.tv_value;
        baseViewHolder.setText(i, str);
        if (baseViewHolder.getAdapterPosition() == this.o) {
            baseViewHolder.setBackgroundRes(i, R.drawable.eq_preset_bg_checked);
            baseViewHolder.setTextColor(i, this.p);
        } else {
            baseViewHolder.setBackgroundRes(i, R.drawable.eq_preset_bg);
            baseViewHolder.setTextColor(i, this.q);
        }
    }
}
