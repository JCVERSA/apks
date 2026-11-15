package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.magicvideo.R;
import com.transsion.playercommon.widgets.RoundFrameLayout;
import com.transsion.utils.a;
import defpackage.tpb;
import defpackage.wna;
import defpackage.z7c;

public class ShortVideosAdapter extends BucketDateAdapter {
    public Drawable P;

    public ShortVideosAdapter(Context context) {
        super(R.layout.rv_item_top_short_video_list);
        this.P = null;
        if (context != null) {
            this.P = ResourcesCompat.getDrawable(context.getResources(), R.drawable.main_fragment_placeholder, context.getTheme());
        }
    }

    @Override
    public void f0(BaseViewHolder baseViewHolder, MediaItem mediaItem) {
        RoundFrameLayout roundFrameLayout = (RoundFrameLayout) baseViewHolder.getView(R.id.ll_bucket_fragment_item);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) roundFrameLayout.getLayoutParams();
        layoutParams.width = a.d(this.mContext, 98.0f);
        layoutParams.height = a.d(this.mContext, 139.0f);
        roundFrameLayout.setLayoutParams(layoutParams);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_bucket_fragment_item);
        baseViewHolder.setGone(R.id.lottie_layer_view_grid, H(mediaItem));
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_main_fragment_item_duration);
        if (mediaItem.duration == 0) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(wna.c(mediaItem.duration));
        }
        textView.setContentDescription(wna.f(this.mContext, mediaItem.duration));
        if (this.P == null) {
            this.P = ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.main_fragment_placeholder, this.mContext.getTheme());
        }
        z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(mediaItem), this.P, imageView);
        int i = R.id.iv_bucket_fragment_checkBox_grid;
        CheckBox checkBox = (CheckBox) baseViewHolder.getView(i);
        int i2 = R.id.iv_more;
        ImageView imageView2 = (ImageView) baseViewHolder.getView(i2);
        int i3 = this.r;
        if (i3 == 15 || i3 == 17) {
            checkBox.setVisibility(0);
            imageView2.setVisibility(8);
            baseViewHolder.addOnClickListener(i);
            checkBox.setChecked(this.s.contains(mediaItem));
        } else {
            checkBox.setVisibility(8);
            imageView2.setVisibility(0);
        }
        baseViewHolder.setGone(R.id.iv_favorite, tpb.j0().T(mediaItem.data));
        baseViewHolder.setVisible(R.id.iv_logo, mediaItem.isYoutubeUrl);
        baseViewHolder.setGone(R.id.iv_new, tpb.j0().G(mediaItem));
        baseViewHolder.addOnClickListener(i2);
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (i == 273) {
            return super.onCreateDefViewHolder(viewGroup, i);
        }
        if (i == 1) {
            return v(viewGroup, R.layout.rv_item_fragment_video_list);
        }
        if (i == 4) {
            return v(viewGroup, R.layout.rv_item_fragment_date);
        }
        if (i == 5) {
            return v(viewGroup, this.t == 1 ? R.layout.item_native_ad_layout_list : R.layout.item_native_ad_layout_grd_list);
        }
        return v(viewGroup, R.layout.rv_item_fragment_video_grid_list);
    }
}
