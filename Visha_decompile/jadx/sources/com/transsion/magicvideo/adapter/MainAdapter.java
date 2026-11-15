package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.google.android.material.timepicker.TimeModel;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.utils.LoadDataUtils;
import com.transsion.magicvideo.R;
import defpackage.gpb;
import defpackage.tpb;
import defpackage.z7c;
import java.util.ArrayList;
import java.util.Locale;

public class MainAdapter extends BaseQuickAdapter<MediaBucket, BaseViewHolder> {
    public MediaItem o;
    public final int p;
    public final int q;
    public int r;
    public final ArrayList s;
    public final ArrayList t;
    public int u;

    public interface a {
    }

    public MainAdapter(Context context) {
        super(R.layout.recycle_view_item_fragment_main);
        this.o = new MediaItem();
        this.s = new ArrayList();
        this.t = new ArrayList();
        this.u = 2;
        this.p = ContextCompat.getColor(context, R.color.os_text_primary_color);
        this.q = ContextCompat.getColor(context, R.color.os_text_primary_color_no_select);
    }

    public void g() {
        MediaItem mediaItem = this.o;
        if (mediaItem == null || !LoadDataUtils.m(mediaItem.id)) {
            return;
        }
        TaskExecutor.c(new TaskExecutor.Task<MediaItem>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public MediaItem onBackground() {
                if (((BaseQuickAdapter) MainAdapter.this).mContext == null) {
                    return null;
                }
                return tpb.j0().h(MainAdapter.this.o.id);
            }

            @Override
            public void onResult(MediaItem mediaItem2) {
                if (mediaItem2 == null) {
                    Log.w("MainAdapter", "playMediaItem no longer exist");
                    MainAdapter.this.o = new MediaItem();
                    MainAdapter.this.notifyDataSetChanged();
                }
            }
        });
    }

    @Override
    public int getItemViewType(int i) {
        return this.u;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaBucket mediaBucket) {
        baseViewHolder.itemView.setTag(mediaBucket);
        baseViewHolder.setText(R.id.tv_main_fragment_item_title, mediaBucket.getParentName());
        String string = String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(mediaBucket.count));
        int i = R.id.tv_main_fragment_item_count;
        if (this.u == 1) {
            string = this.mContext.getString(mediaBucket.count > 1 ? R.string.videos_num : R.string.video_num, string);
        }
        baseViewHolder.setText(i, string);
        if (this.r == 5) {
            int i2 = R.id.iv_bucket_list_checkBox;
            baseViewHolder.setVisible(i2, true).addOnClickListener(i2).setChecked(i2, this.s.contains(mediaBucket));
        }
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_main_fragment_item);
        if (!gpb.d(mediaBucket.getUri())) {
            z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(mediaBucket), ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.main_fragment_placeholder, this.mContext.getTheme()), imageView);
        } else {
            Log.d("MainAdapter", "isVideoThumbnailFail::::::::::::");
            Glide.with(this.mContext).load2(Integer.valueOf(R.drawable.main_fragment_placeholder)).into(imageView);
        }
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return i == 1 ? createBaseViewHolder(viewGroup, R.layout.recycle_view_item_fragment_main_list) : createBaseViewHolder(viewGroup, R.layout.recycle_view_item_fragment_main);
    }

    public void r(int i) {
        this.u = i;
    }

    public void s(MediaItem mediaItem) {
        this.o = mediaItem;
        notifyDataSetChanged();
    }

    public void setOnSelectListener(a aVar) {
    }
}
