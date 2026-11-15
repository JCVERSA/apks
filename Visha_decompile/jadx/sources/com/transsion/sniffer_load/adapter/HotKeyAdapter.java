package com.transsion.sniffer_load.adapter;

import android.content.Context;
import android.text.TextPaint;
import android.util.TypedValue;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.sniff.SearchKey;
import com.transsion.sniffer_load.R;
import com.transsion.utils.a;
import defpackage.oc2;

public class HotKeyAdapter extends BaseQuickAdapter<SearchKey.Key, BaseViewHolder> {
    public final int o;
    public int p;

    public HotKeyAdapter(Context context) {
        super(R.layout.item_hotkey);
        this.mContext = context;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.transsion.audio.R.attr.os_platform_basic_color, typedValue, true);
        this.o = typedValue.data;
        this.p = this.mContext.getColor(R.color.os_text_primary_color);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, SearchKey.Key key) {
        int i = R.id.tv_hotkey;
        baseViewHolder.setText(i, key.getContent());
        int i2 = R.id.tv_sort;
        baseViewHolder.setText(i2, key.getSort() + "");
        boolean z = key.getSort().intValue() < 4 && key.getSort().intValue() > 0;
        baseViewHolder.setTextColor(i2, z ? this.o : this.p);
        baseViewHolder.setTextColor(i, this.p);
        TextView textView = (TextView) baseViewHolder.getView(i);
        TextView textView2 = (TextView) baseViewHolder.getView(i2);
        TextPaint paint = textView.getPaint();
        TextPaint paint2 = textView2.getPaint();
        paint.setFakeBoldText(z);
        paint2.setFakeBoldText(z);
        textView.setMaxWidth(a.m(this.mContext) - oc2.a(this.mContext, z ? 75.0f : 50.0f));
    }
}
