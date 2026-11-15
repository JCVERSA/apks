package com.transsion.playercommon.widgets.language;

import android.content.Context;
import android.util.TypedValue;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.playercommon.R;
import defpackage.gw4;
import defpackage.j;
import defpackage.j0;
import java.util.List;

public class AILanguageAdapter<T extends gw4> extends BaseQuickAdapter<j, BaseViewHolder> {
    public int o;
    public final int p;
    public final int q;

    public AILanguageAdapter(Context context, List list) {
        super(R.layout.item_ai_subtitle_language_view, list);
        this.o = 0;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.p = typedValue.data;
        this.q = context.getColor(R.color.subtitle_language_text_color);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, j jVar) {
        List<T> list = this.mData;
        if (list != null && this.o == list.size() - 1) {
            baseViewHolder.getView(R.id.split).setVisibility(8);
        }
        baseViewHolder.setGone(R.id.ic_language_flag, jVar.a);
        int i = R.id.tv_language;
        ((TextView) baseViewHolder.getView(i)).setTextColor(jVar.isCheck() ? this.p : this.q);
        baseViewHolder.setText(i, j0.b(this.mContext, jVar.displayText()));
    }

    @Override
    public j getItem(int i) {
        this.o = i;
        return (j) super.getItem(i);
    }
}
