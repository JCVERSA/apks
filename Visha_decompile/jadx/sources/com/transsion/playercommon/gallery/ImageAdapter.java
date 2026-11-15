package com.transsion.playercommon.gallery;

import android.graphics.Rect;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.playercommon.R;
import com.yalantis.gallery.dbhelper.entity.LocalMedia;
import defpackage.r0a;

public class ImageAdapter extends BaseQuickAdapter<LocalMedia, BaseViewHolder> {

    public static class GridSpaceItemDecoration extends RecyclerView.ItemDecoration {
        public final int b;
        public final int c;
        public boolean d;

        public GridSpaceItemDecoration(int i, int i2) {
            this.b = i;
            this.c = i2;
        }

        public void a(Rect rect, int i) {
            int i2 = this.b;
            int i3 = i % i2;
            int i4 = ((i2 - 1) * this.c) / (i2 * 2);
            rect.left = i4 * i3;
            rect.right = i4 * ((i2 - 1) - i3);
        }

        @Override
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            this.d = recyclerView.getLayoutDirection() == 1;
            a(rect, childAdapterPosition);
        }
    }

    public ImageAdapter() {
        super(R.layout.item_image);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, LocalMedia localMedia) {
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_cover);
        if (localMedia == null || r0a.g(localMedia.getPath())) {
            return;
        }
        Glide.with(this.mContext).asBitmap().load2(localMedia.getPath()).into(imageView);
    }
}
