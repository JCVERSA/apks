package com.transsion.playercommon.gallery;

import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.playercommon.R;
import com.yalantis.gallery.dbhelper.entity.LocalMediaFolder;
import defpackage.r0a;

public class ImageFolderAdapter extends BaseQuickAdapter<LocalMediaFolder, BaseViewHolder> {
    public ImageFolderAdapter() {
        super(R.layout.item_image_folder);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, LocalMediaFolder localMediaFolder) {
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_cover);
        if (localMediaFolder != null) {
            if (!r0a.g(localMediaFolder.getFirstImagePath())) {
                Glide.with(this.mContext).asBitmap().load2(localMediaFolder.getFirstImagePath()).into(imageView);
            }
            baseViewHolder.setText(R.id.tv_title, localMediaFolder.getFolderName());
            baseViewHolder.setText(R.id.tv_count, String.valueOf(localMediaFolder.getFolderTotalNum()));
        }
    }
}
