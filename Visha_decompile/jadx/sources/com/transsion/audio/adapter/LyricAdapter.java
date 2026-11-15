package com.transsion.audio.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.audio.R;
import com.transsion.playercommon.data.FileInfo;

public class LyricAdapter extends BaseQuickAdapter<FileInfo, BaseViewHolder> {
    public LyricAdapter() {
        super(R.layout.item_lyric_list);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, FileInfo fileInfo) {
        baseViewHolder.setText(R.id.tv_item_fileinfo, fileInfo.isMountPoint() ? fileInfo.getName() : fileInfo.getFileName());
        baseViewHolder.setImageResource(R.id.iv_item_fileinfo, fileInfo.srcId);
    }
}
