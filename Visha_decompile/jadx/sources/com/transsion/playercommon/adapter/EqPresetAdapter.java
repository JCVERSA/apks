package com.transsion.playercommon.adapter;

import android.content.Context;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.playercommon.R;

public class EqPresetAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    public int o;
    public int p;
    public int q;

    public EqPresetAdapter(Context context) {
        super(R.layout.adapter_eq_preset);
        this.o = 1;
        this.p = 0;
        this.q = 0;
        this.p = context.getResources().getColor(R.color.os_candwhile_primary_color);
        this.q = context.getResources().getColor(R.color.os_text_secondary_color);
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
            baseViewHolder.setBackgroundRes(i, R.drawable.eq_preset_bg_checked);
            baseViewHolder.setTextColor(i, this.p);
        } else {
            baseViewHolder.setBackgroundRes(i, R.drawable.eq_preset_bg);
            baseViewHolder.setTextColor(i, this.q);
        }
    }
}
