package com.transsion.sniffer_load.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.sniff.Bookmark;
import java.util.List;

public abstract class DownloadBookMarkViewAdapter extends BaseQuickAdapter<Bookmark, BaseViewHolder> {
    public DownloadBookMarkViewAdapter(int i, List list, String str, int i2) {
        super(i, list);
    }

    public void b(BaseViewHolder baseViewHolder, Bookmark bookmark) {
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, Bookmark bookmark) {
        b(baseViewHolder, bookmark);
    }
}
