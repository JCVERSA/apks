package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.google.android.material.timepicker.TimeModel;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.magicvideo.R;
import defpackage.z7c;
import java.util.Locale;

public class VideoPlayListBucketAdapter extends BaseQuickAdapter<VideoPlayList, BaseViewHolder> {
    public final MediaItem o;
    public final Context p;
    public int q;
    public boolean r;

    public VideoPlayListBucketAdapter(Context context) {
        super(R.layout.recycle_view_item_fragment_main);
        this.o = new MediaItem();
        this.q = 1;
        this.r = true;
        this.p = context;
    }

    private String c(VideoPlayList videoPlayList) {
        int i = videoPlayList.mCategory;
        if (i != 1) {
            return i != 2 ? videoPlayList.name : this.p.getString(R.string.talkback_add_to_favorites);
        }
        return this.p.getString(R.string.recent_add);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, VideoPlayList videoPlayList) {
        if (videoPlayList == null) {
            Log.e("VideoPlayListBucketAdapter", "convert error");
            return;
        }
        baseViewHolder.itemView.setTag(videoPlayList);
        baseViewHolder.setText(R.id.tv_main_fragment_item_title, c(videoPlayList));
        baseViewHolder.setText(R.id.tv_main_fragment_item_count, this.p.getString(videoPlayList.count > 1 ? R.string.videos_num : R.string.video_num, String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(videoPlayList.count))));
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_main_fragment_item);
        int i = R.drawable.ic_video_playlist_placeholder;
        int i2 = videoPlayList.mCategory;
        if (i2 == 2) {
            i = R.drawable.ic_favorite_placeholder;
        }
        if (i2 == 1) {
            i = R.drawable.ic_recently_add_vd;
        }
        z7c.c(this.p, MediaExtKt.toLocalMediaLoadInfo(videoPlayList), ResourcesCompat.getDrawable(this.p.getResources(), i, this.p.getTheme()), imageView);
        baseViewHolder.setVisible(R.id.background_favorite_mask, videoPlayList.uri != null && videoPlayList.mCategory == 2);
        baseViewHolder.setVisible(R.id.background_recent_mask, videoPlayList.uri != null && videoPlayList.mCategory == 1);
        int i3 = R.id.iv_more;
        if (baseViewHolder.getView(i3) != null) {
            baseViewHolder.setGone(i3, this.r);
        }
    }

    public void d(boolean z) {
        this.r = z;
    }

    @Override
    public int getDefItemViewType(int i) {
        return this.q;
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (i == 273) {
            return super.onCreateDefViewHolder(viewGroup, i);
        }
        return this.q == 1 ? createBaseViewHolder(viewGroup, R.layout.recycle_view_item_fragment_main_list) : createBaseViewHolder(viewGroup, R.layout.recycle_view_item_fragment_main);
    }
}
