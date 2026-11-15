package com.transsion.audio.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.google.android.material.timepicker.TimeModel;
import com.transsion.audio.R;
import com.transsion.dbdata.database.PlayList;
import com.transsion.utils.a;
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

public class PlayListBucketAdapter extends BaseQuickAdapter<PlayList, BaseViewHolder> {
    public boolean o;
    public final int p;
    public int q;
    public int r;

    public PlayListBucketAdapter(Context context) {
        super(R.layout.rv_item_fragment_playlist_folders);
        this.p = context.getResources().getColor(R.color.white);
        this.q = a.d(context, 66.0f);
        this.r = a.d(context, 60.0f);
    }

    private String g(PlayList playList) {
        int i = playList.mCategory;
        if (i != 1) {
            return i != 2 ? playList.name : this.mContext.getString(R.string.talkback_add_to_favorites);
        }
        return this.mContext.getString(R.string.recent_add);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, PlayList playList) {
        if (playList == null) {
            Log.e("PlayListBucketAdapter", "convert error");
            return;
        }
        boolean z = playList.listFlag == 33;
        if (this.o) {
            baseViewHolder.setTextColor(R.id.tv_playlist_name, this.p);
            baseViewHolder.setTextColor(R.id.tv_playlist_count, this.p);
        }
        Uri uri = playList.uri;
        if (uri == null || uri.toString().isEmpty() || playList.uriType != 1) {
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_playlist_item);
            int i = z ? R.drawable.ic_bucket_farvorite_12dp : R.drawable.ic_bucket_audio_12dp;
            if (playList.listFlag == 41) {
                i = R.drawable.ic_bucket_recent_12dp;
            }
            imageView.setImageResource(i);
        } else {
            Glide.with(this.mContext).load2(playList.uri).override(this.q, this.r).placeholder(z ? R.drawable.ic_farvorite_white : R.drawable.ic_bucket_audio_12dp).error(R.drawable.ic_bucket_audio_12dp).into((ImageView) baseViewHolder.getView(R.id.iv_playlist_item));
        }
        int i2 = R.id.iv_more;
        baseViewHolder.setGone(i2, true);
        baseViewHolder.setText(R.id.tv_playlist_name, g(playList)).addOnClickListener(i2);
        baseViewHolder.setText(R.id.tv_playlist_count, this.mContext.getString(playList.count > 1 ? R.string.audio_songs : R.string.audio_song, String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(playList.count))));
        ImageView imageView2 = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_cover);
        if (playList.count > 0) {
            j(imageView2, playList);
        } else {
            imageView2.setImageBitmap(null);
        }
    }

    public final Bitmap h(PlayList playList, PlayList playList2) {
        return playList.isCustomCover ? k(playList.uri.toString()) : vk1.i(this.mContext, playList.uri);
    }

    public void j(final ImageView imageView, final PlayList playList) {
        Log.d("PlayListBucketAdapter", "loadCover:" + playList.name + "-\n" + playList.uri + "-\n" + playList.isCustomCover);
        mc7 mc7VarD0 = mc7.K(playList).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.h(playList, (PlayList) obj);
            }
        }).M(vb.a()).d0(k29.c());
        Objects.requireNonNull(imageView);
        mc7VarD0.a0(new bn(imageView), new zf1() {
            @Override
            public final void accept(Object obj) {
                imageView.setImageBitmap(null);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Bitmap k(String str) {
        if (r0a.g(str)) {
            return null;
        }
        try {
            return (Bitmap) Glide.with(this.mContext).asBitmap().load2(str).diskCacheStrategy(DiskCacheStrategy.NONE).submit(153, 142).get();
        } catch (InterruptedException e) {
            Log.i("PlayListBucketAdapter", "loadThumb exception:" + e.getMessage());
            return null;
        } catch (ExecutionException e2) {
            Log.i("PlayListBucketAdapter", "loadThumb exception:" + e2.getMessage());
            return null;
        }
    }
}
