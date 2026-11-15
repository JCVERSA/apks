package com.transsion.tools.adapter;

import android.content.Context;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.SkinsMenu;
import com.transsion.tools.R;
import defpackage.pcc;

public class DefaultSkinsAdapter extends BaseQuickAdapter<SkinsMenu, BaseViewHolder> {
    public static final int[] o = {R.color.default_skin_text_color_1, R.color.default_skin_text_color_2};
    public static final int[] p = {R.color.default_skin_background_color_1, R.color.default_skin_background_color_2};
    public static final int[] q = {R.drawable.ic_skin_diy, R.drawable.ic_skin};
    public static final int[] r = {R.string.visha_custom_theme, R.string.visha_default_theme};

    public DefaultSkinsAdapter() {
        super(R.layout.default_skins_menu_item);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, SkinsMenu skinsMenu) {
        int adapterPosition = baseViewHolder.getAdapterPosition();
        int i = R.id.tv_skin_menu_name;
        baseViewHolder.setText(i, r[adapterPosition]);
        Context context = this.mContext;
        int[] iArr = o;
        baseViewHolder.setTextColor(i, context.getColor(iArr[adapterPosition % iArr.length]));
        int i2 = R.id.fl_skin_menu;
        Context context2 = this.mContext;
        int[] iArr2 = p;
        baseViewHolder.setBackgroundColor(i2, context2.getColor(iArr2[adapterPosition % iArr2.length]));
        int i3 = R.id.iv_skin_menu;
        int[] iArr3 = q;
        baseViewHolder.setImageResource(i3, iArr3[adapterPosition % iArr3.length]);
        pcc.a(baseViewHolder.getView(i2), 15.0f, 25, 35.0f);
    }
}
