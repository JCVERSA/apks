package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.JumpMediaItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.player.VideoPlayManager;
import defpackage.c39;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.tpb;
import defpackage.z7c;

public class PlayListImgAdapter extends BaseQuickAdapter<MediaItem, BaseViewHolder> {
    public Drawable o;

    public PlayListImgAdapter(Context context) {
        super(R.layout.item_video_play_list_img);
        if (context != null) {
            try {
                this.o = ResourcesCompat.getDrawable(context.getResources(), R.drawable.main_fragment_placeholder_night, context.getTheme());
            } catch (Exception unused) {
                this.o = null;
            }
        }
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaItem mediaItem) {
        Context context;
        if (mediaItem instanceof JumpMediaItem) {
            JumpMediaItem jumpMediaItem = (JumpMediaItem) mediaItem;
            baseViewHolder.setVisible(R.id.ll_slogo, true);
            ((ImageView) baseViewHolder.getView(R.id.iv_grad_cover)).setVisibility(8);
            baseViewHolder.setVisible(R.id.iv_farvorite, false);
            baseViewHolder.setImageDrawable(R.id.iv_bucket_fragment_item, new ColorDrawable(-14211289));
            boolean z = pp3.c;
            if (z) {
                ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_slogo);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
                layoutParams.height = c39.h(20.0f);
                imageView.setLayoutParams(layoutParams);
            }
            int i = R.id.iv_slogo;
            ImageView imageView2 = (ImageView) baseViewHolder.getView(i);
            int i2 = z ? R.drawable.ic_videos_pre : R.drawable.list_img_visha1;
            Integer numValueOf = Integer.valueOf(i2);
            if (!numValueOf.equals(imageView2.getTag(i))) {
                imageView2.setTag(i, numValueOf);
                Glide.with(this.mContext).asBitmap().load2(Integer.valueOf(i2)).into(imageView2);
            }
            baseViewHolder.setText(R.id.tv_slogo, jumpMediaItem.getJumpBean().getBottom_content());
            return;
        }
        baseViewHolder.setVisible(R.id.ll_slogo, false);
        if (this.o == null && (context = this.mContext) != null) {
            this.o = ResourcesCompat.getDrawable(context.getResources(), R.drawable.main_fragment_placeholder_night, this.mContext.getTheme());
        }
        View view = baseViewHolder.itemView;
        int i3 = R.id.iv_bucket_fragment_item;
        ImageView imageView3 = (ImageView) view.findViewById(i3);
        if (mediaItem.getMiMediaInfo() == null || TextUtils.isEmpty(mediaItem.getMiMediaInfo().getCoverUri())) {
            String strValueOf = mediaItem.data;
            if (strValueOf == null) {
                strValueOf = String.valueOf(mediaItem.id);
            }
            if (!strValueOf.equals(imageView3.getTag(i3))) {
                imageView3.setTag(i3, strValueOf);
                z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(mediaItem), this.o, imageView3);
            }
        } else {
            String coverUri = mediaItem.getMiMediaInfo().getCoverUri();
            if (!coverUri.equals(imageView3.getTag(i3))) {
                imageView3.setTag(i3, coverUri);
                z7c.a(this.mContext, Uri.parse(coverUri), 0L, this.o, imageView3);
            }
        }
        if (r0a.g(mediaItem.data)) {
            return;
        }
        String str = mediaItem.data;
        ((ImageView) baseViewHolder.getView(R.id.iv_grad_cover)).setVisibility(str != null && str.equals(VideoPlayManager.X().c0().data) ? 0 : 8);
        baseViewHolder.setVisible(R.id.iv_farvorite, tpb.j0().T(mediaItem.data));
    }
}
