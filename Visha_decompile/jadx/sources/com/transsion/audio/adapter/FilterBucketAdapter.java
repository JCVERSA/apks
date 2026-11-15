package com.transsion.audio.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.google.android.material.timepicker.TimeModel;
import com.transsion.audio.R;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.utils.AudioFilterUtils;
import defpackage.bn;
import defpackage.k29;
import defpackage.mc7;
import defpackage.r0a;
import defpackage.t74;
import defpackage.vb;
import defpackage.vk1;
import defpackage.zf1;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ExecutionException;

public class FilterBucketAdapter extends BaseQuickAdapter<MediaBucket, BaseViewHolder> {
    public Context o;

    public FilterBucketAdapter(Context context) {
        super(R.layout.rv_item_audio_folder_filter);
        this.o = context;
    }

    public Bitmap g(MediaBucket mediaBucket, MediaBucket mediaBucket2) {
        return mediaBucket.isCustomCover ? j(mediaBucket.uri.toString()) : vk1.i(this.o, mediaBucket.uri);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaBucket mediaBucket) {
        baseViewHolder.itemView.setTag(mediaBucket);
        int i = R.id.iv_filter;
        baseViewHolder.setImageResource(i, AudioFilterUtils.p(mediaBucket.parentPath) ? R.drawable.ic_filter_folder : R.drawable.ic_no_filter_folder);
        baseViewHolder.addOnClickListener(i);
        baseViewHolder.setAlpha(R.id.container, AudioFilterUtils.p(mediaBucket.parentPath) ? 0.4f : 1.0f);
        baseViewHolder.setText(R.id.tv_main_fragment_item_title, mediaBucket.getParentName());
        baseViewHolder.setText(R.id.tv_main_fragment_item_count, this.o.getString(mediaBucket.count > 1 ? R.string.audio_songs : R.string.audio_song, String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(mediaBucket.count))));
        i((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_cover), mediaBucket);
    }

    public void i(final ImageView imageView, final MediaBucket mediaBucket) {
        mc7 mc7VarM = mc7.K(mediaBucket).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.g(mediaBucket, (MediaBucket) obj);
            }
        }).d0(k29.d()).M(vb.a());
        Objects.requireNonNull(imageView);
        mc7VarM.a0(new bn(imageView), new zf1() {
            @Override
            public final void accept(Object obj) {
                imageView.setImageBitmap(null);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Bitmap j(String str) {
        if (r0a.g(str)) {
            return null;
        }
        try {
            return (Bitmap) Glide.with(this.o).asBitmap().load2(str).diskCacheStrategy(DiskCacheStrategy.ALL).submit(153, 153).get();
        } catch (InterruptedException e) {
            Log.i(BaseQuickAdapter.TAG, "loadThumb exception:" + e.getMessage());
            return null;
        } catch (ExecutionException e2) {
            Log.i(BaseQuickAdapter.TAG, "loadThumb exception:" + e2.getMessage());
            return null;
        }
    }
}
