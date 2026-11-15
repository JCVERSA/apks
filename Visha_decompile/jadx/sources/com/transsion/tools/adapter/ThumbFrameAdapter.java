package com.transsion.tools.adapter;

import android.widget.ImageView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.tools.R;
import com.transsion.tools.beans.ThemeImage;

public class ThumbFrameAdapter extends BaseQuickAdapter<ThemeImage, BaseViewHolder> {
    public int o;

    public ThumbFrameAdapter() {
        super(R.layout.item_thumb_frame);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, ThemeImage themeImage) {
        baseViewHolder.setVisible(R.id.iv_selector, baseViewHolder.getAdapterPosition() == this.o);
        ((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_image)).setImageResource(themeImage.resId);
    }

    public int g() {
        return this.o;
    }

    public void r(int i) {
        this.o = i;
    }
}
