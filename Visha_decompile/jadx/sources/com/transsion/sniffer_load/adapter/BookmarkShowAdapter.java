package com.transsion.sniffer_load.adapter;

import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.glidetransformation.CropTransformation;
import com.transsion.playercommon.widgets.RoundFrameLayout;
import com.transsion.sniffer_load.R;

public class BookmarkShowAdapter extends BaseQuickAdapter<Bookmark, BaseViewHolder> {
    @Override
    public void convert(BaseViewHolder baseViewHolder, Bookmark bookmark) {
        baseViewHolder.setText(R.id.tv_title, bookmark.getName());
        RoundFrameLayout roundFrameLayout = (RoundFrameLayout) baseViewHolder.getView(R.id.fl_cover);
        Glide.with(this.mContext).asBitmap().load2(bookmark.getImageUri()).apply((BaseRequestOptions<?>) new RequestOptions().placeholder(R.drawable.ic_online_cover_default)).transform(new CropTransformation(roundFrameLayout.getWidth(), roundFrameLayout.getHeight())).into((ImageView) baseViewHolder.getView(R.id.iv_cover));
    }
}
