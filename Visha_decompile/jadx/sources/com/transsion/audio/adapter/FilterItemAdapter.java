package com.transsion.audio.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.audio.R;

public class FilterItemAdapter extends BaseQuickAdapter<a, BaseViewHolder> {

    public static class a {
        public String a;
        public String b;
        public int c;
    }

    public FilterItemAdapter() {
        super(R.layout.item_filter);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, a aVar) {
        baseViewHolder.itemView.setTag(aVar);
        baseViewHolder.setText(R.id.tv_filter_title, aVar.a);
        baseViewHolder.setText(R.id.tv_status, aVar.b);
    }
}
