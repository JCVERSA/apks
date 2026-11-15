package com.transsion.playercommon.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.common.R;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.widgets.MusicLottieAnimationView;
import defpackage.wna;
import defpackage.z7c;

public class PlayListAdapter<T> extends AudioListCoverAdapter<T> {
    public a A;
    public int t;
    public int u;
    public int v;
    public boolean w;
    public boolean x;
    public boolean y;
    public boolean z;

    public interface a {
        boolean a(RecyclerView.ViewHolder viewHolder);
    }

    public PlayListAdapter(int i, Context context, boolean z) {
        super(i, null);
        this.x = false;
        this.y = false;
        this.z = false;
        this.w = z;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.t = typedValue.data;
        this.u = context.getResources().getColor(com.transsion.playercommon.R.color.os_text_primary_color_no_select, null);
        this.v = context.getResources().getColor(com.transsion.playercommon.R.color.os_text_tertiary_color, null);
    }

    public boolean A(BaseViewHolder baseViewHolder, View view, MotionEvent motionEvent) {
        a aVar;
        if (motionEvent.getAction() != 0 || (aVar = this.A) == null) {
            return false;
        }
        aVar.a(baseViewHolder);
        return false;
    }

    public void B(Context context, boolean z) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.t = typedValue.data;
        this.u = context.getResources().getColor(z ? com.transsion.playercommon.R.color.white : com.transsion.playercommon.R.color.os_text_primary_color, null);
        this.v = context.getResources().getColor(z ? com.transsion.playercommon.R.color.path_color : com.transsion.playercommon.R.color.os_text_tertiary_color, null);
        notifyDataSetChanged();
    }

    public final void C(BaseViewHolder baseViewHolder, MediaItem mediaItem) {
        ImageView imageView = (ImageView) baseViewHolder.getView(com.transsion.playercommon.R.id.iv_bucket_fragment_item);
        TextView textView = (TextView) baseViewHolder.getView(com.transsion.playercommon.R.id.tv_main_fragment_item_duration);
        Drawable drawable = ResourcesCompat.getDrawable(this.mContext.getResources(), com.transsion.playercommon.R.drawable.main_fragment_placeholder, this.mContext.getTheme());
        if (TextUtils.isEmpty(mediaItem.thumbnailUrl)) {
            mediaItem.getUri();
        } else {
            Uri.parse(mediaItem.thumbnailUrl);
        }
        if (mediaItem.getMiMediaInfo() != null) {
            z7c.a(this.mContext, Uri.parse(mediaItem.thumbnailUrl), 0L, drawable, imageView);
        } else {
            z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(mediaItem), drawable, imageView);
        }
        if (mediaItem.duration == 0) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(wna.c(mediaItem.duration));
        }
        baseViewHolder.setVisible(com.transsion.playercommon.R.id.ll_bucket_fragment_item, true);
        View view = baseViewHolder.getView(com.transsion.playercommon.R.id.ll_list_container);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = this.mContext.getResources().getDimensionPixelSize(com.transsion.playercommon.R.dimen.video_play_list_item_height_dp);
        view.setLayoutParams(layoutParams);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x005c  */
    @Override
    public void convert(final BaseViewHolder baseViewHolder, Object obj) {
        String str;
        boolean zEquals;
        String str2;
        if (obj == null) {
            return;
        }
        MediaItem mediaItem = (MediaItem) obj;
        boolean z = obj instanceof AudioItem;
        if (z) {
            int i = com.transsion.playercommon.R.id.tv_item_play_list_artist;
            baseViewHolder.setText(i, ((AudioItem) obj).artistName);
            baseViewHolder.setTextColor(i, this.v);
            if (PlayAudioListData.getInstance().playMediaItem() == null || (str2 = mediaItem.data) == null) {
                zEquals = false;
            } else {
                zEquals = str2.equals(PlayAudioListData.getInstance().playMediaItem().data);
            }
        } else {
            C(baseViewHolder, mediaItem);
            baseViewHolder.setGone(com.transsion.playercommon.R.id.tv_item_play_list_artist, false);
            if (PlayListData.getInstance().playMediaItem() == null || (str = mediaItem.data) == null) {
                zEquals = false;
            } else {
                zEquals = str.equals(PlayListData.getInstance().playMediaItem().data);
            }
        }
        MusicLottieAnimationView.bindPlayingIndicator((MusicLottieAnimationView) baseViewHolder.getView(com.transsion.playercommon.R.id.lottie_layer_view), this.t, zEquals);
        baseViewHolder.getView(com.transsion.playercommon.R.id.iv_playing).setVisibility(zEquals ? 0 : 8);
        if (zEquals) {
            baseViewHolder.setTextColor(com.transsion.playercommon.R.id.tv_item_play_list_title, this.t);
        } else {
            baseViewHolder.setTextColor(com.transsion.playercommon.R.id.tv_item_play_list_title, this.u);
        }
        baseViewHolder.setText(com.transsion.playercommon.R.id.tv_item_play_list_title, mediaItem.displayName);
        if (mediaItem.isMusicVideo && this.z) {
            baseViewHolder.setImageResource(com.transsion.playercommon.R.id.iv_mv_tag, com.transsion.playercommon.R.drawable.ic_audio_mv_tag_night);
        }
        baseViewHolder.setGone(com.transsion.playercommon.R.id.iv_mv_tag, mediaItem.isMusicVideo);
        int i2 = com.transsion.playercommon.R.id.icon;
        baseViewHolder.setGone(i2, this.w);
        if (this.y) {
            baseViewHolder.setImageResource(i2, com.transsion.playercommon.R.drawable.ic_playlist_fit_icon);
        }
        if (this.x && z) {
            baseViewHolder.getView(com.transsion.playercommon.R.id.rl_icon_cover).setVisibility(0);
            LinearLayout linearLayout = (LinearLayout) baseViewHolder.getView(com.transsion.playercommon.R.id.ll_list_container);
            ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
            layoutParams.height = this.mContext.getResources().getDimensionPixelSize(com.transsion.playercommon.R.dimen.play_list_item_height_dp);
            linearLayout.setLayoutParams(layoutParams);
            AudioItem audioItem = (AudioItem) obj;
            int i3 = com.transsion.playercommon.R.id.iv_play_cover_icon;
            x(audioItem, (ImageView) baseViewHolder.getView(i3));
            v(audioItem, (ImageView) baseViewHolder.getView(i3));
        } else {
            baseViewHolder.getView(com.transsion.playercommon.R.id.rl_icon_cover).setVisibility(8);
        }
        baseViewHolder.setOnTouchListener(i2, new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.A(baseViewHolder, view, motionEvent);
            }
        });
    }

    public void setOnTouchListener(a aVar) {
        this.A = aVar;
    }
}
