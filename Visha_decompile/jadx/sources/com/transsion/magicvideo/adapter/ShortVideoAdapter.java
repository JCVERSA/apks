package com.transsion.magicvideo.adapter;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.player.VideoPlayManager;
import defpackage.tpb;
import defpackage.wna;
import defpackage.z7c;
import defpackage.zdc;
import java.util.List;

public class ShortVideoAdapter extends BaseQuickAdapter<MediaItem, BaseViewHolder> {
    public MediaItem o;

    public ShortVideoAdapter() {
        super(R.layout.rv_item_top_short_video_list);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaItem mediaItem) {
        z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(mediaItem), ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.main_fragment_placeholder, this.mContext.getTheme()), (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_item));
        baseViewHolder.setVisible(R.id.sb_history, false);
        int i = R.id.iv_more;
        baseViewHolder.setVisible(i, true);
        baseViewHolder.addOnClickListener(i);
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_main_fragment_item_duration);
        if (mediaItem.duration == 0) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(wna.c(mediaItem.duration));
        }
        int i2 = R.id.iv_favorite;
        baseViewHolder.setVisible(i2, tpb.j0().T(mediaItem.data));
        baseViewHolder.setVisible(R.id.iv_logo, mediaItem.isYoutubeUrl);
        baseViewHolder.getView(R.id.ll_bucket_fragment_item).setContentDescription(this.mContext.getString(R.string.talkback_playback_history) + wna.c(mediaItem.duration));
        baseViewHolder.setGone(i2, tpb.j0().T(mediaItem.data));
        baseViewHolder.setGone(R.id.lottie_layer_view_grid, c(mediaItem));
    }

    public final boolean c(MediaItem mediaItem) {
        boolean z = (mediaItem.equals(VideoPlayManager.X().c0()) && VideoPlayManager.X().z0()) || (mediaItem.equals(VideoPlayManager.X().c0()) && zdc.f() == zdc.a && PlayListData.getInstance().playMediaItem() != null);
        if (z) {
            this.o = mediaItem;
        }
        return z;
    }

    public void d(MediaItem mediaItem) {
        g();
        this.o = mediaItem;
        g();
    }

    public void g() {
        MediaItem mediaItem = this.o;
        if (mediaItem == null) {
            notifyDataSetChanged();
            return;
        }
        int iIndexOf = this.mData.indexOf(mediaItem);
        if (iIndexOf != -1) {
            notifyItemChanged(iIndexOf, "payload_play_status_change");
        }
    }

    @Override
    public void onBindViewHolder(BaseViewHolder baseViewHolder, int i, List list) {
        if (list.isEmpty() || !list.contains("payload_play_status_change")) {
            super.onBindViewHolder(baseViewHolder, i, (List<Object>) list);
        } else {
            baseViewHolder.setGone(R.id.lottie_layer_view_grid, c((MediaItem) this.mData.get(i)));
        }
    }
}
