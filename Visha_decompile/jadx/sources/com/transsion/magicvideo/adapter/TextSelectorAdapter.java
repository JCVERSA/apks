package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.magicvideo.R;
import com.transsion.utils.a;

public class TextSelectorAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    public int o;
    public int p;
    public int q;
    public boolean r;

    public TextSelectorAdapter(Context context, boolean z) {
        super(R.layout.text_selector_item);
        this.o = 0;
        this.q = 0;
        this.r = true;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.p = typedValue.data;
        this.q = context.getColor(R.color.os_text_primary_color);
        this.r = z;
    }

    public void r(int i) {
        this.o = i;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, String str) {
        if (baseViewHolder.getAdapterPosition() == this.o) {
            baseViewHolder.getView(R.id.iv_head).setVisibility(0);
            baseViewHolder.setTextColor(R.id.iv_sort_name, this.p);
        } else {
            baseViewHolder.getView(R.id.iv_head).setVisibility(4);
            baseViewHolder.setTextColor(R.id.iv_sort_name, this.q);
        }
        LinearLayout linearLayout = (LinearLayout) baseViewHolder.getView(R.id.item_root);
        int i = R.id.iv_sort_name;
        TextView textView = (TextView) baseViewHolder.getView(i);
        if (this.r) {
            textView.setSingleLine(false);
            linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        } else {
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, a.d(this.mContext, 48.0f)));
        }
        linearLayout.setGravity(16);
        linearLayout.setMinimumWidth(a.d(this.mContext, 196.0f));
        linearLayout.setMinimumHeight(a.d(this.mContext, 48.0f));
        baseViewHolder.setText(i, str);
    }
}
