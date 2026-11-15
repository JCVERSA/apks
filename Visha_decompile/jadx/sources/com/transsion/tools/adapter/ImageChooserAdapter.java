package com.transsion.tools.adapter;

import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.tools.R;
import com.transsion.tools.beans.ThemeImage;
import com.transsion.utils.a;
import defpackage.r0a;

public class ImageChooserAdapter extends BaseQuickAdapter<ThemeImage, BaseViewHolder> {
    public static final RequestOptions p = new RequestOptions().format(DecodeFormat.PREFER_RGB_565).diskCacheStrategy(DiskCacheStrategy.RESOURCE);
    public int o;

    public ImageChooserAdapter() {
        super(a.A() ? R.layout.item_image_chooser_tablet : R.layout.item_image_chooser);
        this.o = 1;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, ThemeImage themeImage) {
        baseViewHolder.setVisible(R.id.iv_selector, baseViewHolder.getAdapterPosition() == this.o);
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_image);
        if (themeImage.isDefault) {
            imageView.setImageResource(themeImage.resId);
        } else {
            if (r0a.g(themeImage.imageUri)) {
                return;
            }
            int iD = a.d(this.mContext, 47.0f);
            Glide.with(this.mContext).asBitmap().load2(themeImage.imageUri).apply((BaseRequestOptions<?>) p.mo66clone().override(iD, iD)).into(imageView);
        }
    }

    public int g() {
        return this.o;
    }

    @Override
    public void onViewRecycled(BaseViewHolder baseViewHolder) {
        View view;
        ImageView imageView;
        super.onViewRecycled(baseViewHolder);
        if (baseViewHolder == null || (view = baseViewHolder.itemView) == null || (imageView = (ImageView) view.findViewById(R.id.iv_image)) == null) {
            return;
        }
        try {
            Glide.with(imageView.getContext().getApplicationContext()).clear(imageView);
            imageView.setImageDrawable(null);
        } catch (Exception e) {
            Log.e("ImageChooserAdapter", "onViewRecycled error: " + e);
        }
    }

    public void r(int i) {
        this.o = i;
    }
}
