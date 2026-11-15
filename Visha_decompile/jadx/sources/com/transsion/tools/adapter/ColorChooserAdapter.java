package com.transsion.tools.adapter;

import android.widget.ImageView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.tools.R;
import com.transsion.tools.beans.ThemeColor;
import com.transsion.utils.a;

public class ColorChooserAdapter extends BaseQuickAdapter<ThemeColor, BaseViewHolder> {
    public int o;

    public ColorChooserAdapter() {
        super(a.A() ? R.layout.item_color_chooser_tablet : R.layout.item_color_chooser);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, ThemeColor themeColor) {
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_image);
        baseViewHolder.itemView.findViewById(R.id.iv_selector).setVisibility(baseViewHolder.getAdapterPosition() == this.o ? 0 : 4);
        baseViewHolder.itemView.findViewById(R.id.iv_image_select).setVisibility(baseViewHolder.getAdapterPosition() != this.o ? 8 : 0);
        imageView.setImageResource(themeColor.colorRes);
    }

    public int g() {
        return this.o;
    }

    public void r(int i) {
        this.o = i;
    }
}
