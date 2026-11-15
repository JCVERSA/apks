package com.transsion.onlinevideo.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.VideoInfo;
import com.transsion.onlinevideo.R;

public class SearchVideoTagAdapter extends BaseQuickAdapter<VideoInfo.TagListBean, BaseViewHolder> {
    public SearchVideoTagAdapter() {
        super(R.layout.item_tag);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, VideoInfo.TagListBean tagListBean) {
        baseViewHolder.setText(R.id.tag, tagListBean.getName());
    }
}
