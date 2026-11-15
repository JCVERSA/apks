package com.transsion.magicvideo.adapter;

import android.content.Context;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.magicvideo.R;
import com.transsion.playercommon.data.FileInfo;

public class SubtitleListAdapter extends BaseQuickAdapter<FileInfo, BaseViewHolder> {
    public SubtitleListAdapter(int i, Context context) {
        super(i);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, FileInfo fileInfo) {
        baseViewHolder.setText(R.id.tv_item_fileinfo, fileInfo.isMountPoint() ? fileInfo.getName() : fileInfo.getFileName());
        baseViewHolder.setImageResource(R.id.iv_item_fileinfo, fileInfo.srcId);
    }

    public SubtitleListAdapter() {
        super(R.layout.item_subtitle_list);
    }

    @Override
    public void onBindViewHolder(BaseViewHolder baseViewHolder, int i) {
        if (i < 0 || i >= getItemCount()) {
            return;
        }
        super.onBindViewHolder(baseViewHolder, i);
    }
}
