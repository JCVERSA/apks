package com.transsion.sniffer_load.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.makeramen.roundedimageview.RoundedImageView;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.sniffer_load.R;
import defpackage.b23;

public class BookmarkAdapter extends BaseQuickAdapter<Bookmark, BaseViewHolder> {
    public boolean o;

    public BookmarkAdapter(Context context) {
        super(R.layout.rv_bookmark);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, Bookmark bookmark) {
        baseViewHolder.setText(R.id.title, bookmark.getName());
        if (baseViewHolder.getLayoutPosition() == 0 || bookmark.isLoadFromCode()) {
            baseViewHolder.setVisible(R.id.iv_bookmark_delete, false);
        } else {
            int i = R.id.iv_bookmark_delete;
            baseViewHolder.setVisible(i, this.o);
            baseViewHolder.addOnClickListener(i);
        }
        if (bookmark.getImageResId() > 0) {
            int i2 = R.id.bookmark_cover;
            ((RoundedImageView) baseViewHolder.getView(i2)).setImageResource(bookmark.getImageResId());
            baseViewHolder.setVisible(R.id.rfl_custom_bookmark_cover, false);
            baseViewHolder.setVisible(i2, true);
            return;
        }
        if (bookmark.getImageUri() != null) {
            int i3 = R.id.bookmark_cover;
            Glide.with(this.mContext).load2(bookmark.getImageUri()).placeholder(R.drawable.ic_bookmark_placeholder).timeout(10000).into((ImageView) baseViewHolder.getView(i3));
            baseViewHolder.setVisible(R.id.rfl_custom_bookmark_cover, false);
            baseViewHolder.setVisible(i3, true);
            return;
        }
        if (bookmark.getBitmap() != null && bookmark.getBitmap().length > 0) {
            int i4 = R.id.bookmark_cover;
            Glide.with(this.mContext).load2(bookmark.getBitmap()).into((ImageView) baseViewHolder.getView(i4));
            baseViewHolder.setVisible(R.id.rfl_custom_bookmark_cover, false);
            baseViewHolder.setVisible(i4, true);
            return;
        }
        baseViewHolder.setVisible(R.id.rfl_custom_bookmark_cover, true);
        baseViewHolder.setVisible(R.id.bookmark_cover, false);
        String strValueOf = TextUtils.isEmpty(bookmark.getName()) ? "" : String.valueOf(bookmark.getName().charAt(0));
        int i5 = R.id.custom_bookmark_cover;
        baseViewHolder.setText(i5, strValueOf);
        baseViewHolder.setBackgroundColor(i5, b23.o(strValueOf));
    }

    public void d(boolean z) {
        this.o = z;
    }
}
