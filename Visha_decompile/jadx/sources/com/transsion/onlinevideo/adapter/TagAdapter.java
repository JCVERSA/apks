package com.transsion.onlinevideo.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.Tag;
import com.transsion.onlinevideo.R;

public class TagAdapter extends BaseQuickAdapter<Tag, BaseViewHolder> {
    public TagAdapter() {
        super(R.layout.layout_item_flow_circle);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, Tag tag) {
        baseViewHolder.setText(R.id.tag, tag.getName());
    }
}
