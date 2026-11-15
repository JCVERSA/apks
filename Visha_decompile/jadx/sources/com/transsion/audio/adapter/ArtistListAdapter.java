package com.transsion.audio.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import android.util.Pair;
import android.util.TypedValue;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.google.android.material.timepicker.TimeModel;
import com.transsion.audio.R;
import com.transsion.audio.adapter.ArtistListAdapter;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.utils.AudioLoadDataUtils;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.widgets.MusicLottieAnimationView;
import com.trello.rxlifecycle3.components.support.RxFragment;
import defpackage.ao;
import defpackage.k29;
import defpackage.mc7;
import defpackage.t74;
import defpackage.vb;
import defpackage.vk1;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class ArtistListAdapter extends BaseQuickAdapter<MediaBucket, BaseViewHolder> {
    public AudioItem o;
    public int p;
    public int q;
    public ArrayList r;
    public ArrayList s;
    public Context t;
    public int u;
    public int v;
    public volatile boolean w;

    public interface a {
    }

    public ArtistListAdapter(Context context) {
        super(R.layout.rv_item_fragment_artist_list);
        this.o = new AudioItem();
        this.r = new ArrayList();
        this.s = new ArrayList();
        this.w = true;
        this.t = context;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.p = typedValue.data;
        this.u = com.transsion.utils.a.d(context, 40.0f);
        this.v = com.transsion.utils.a.d(context, 40.0f);
    }

    public static Pair l(Integer num) {
        AudioItem audioItemF = ao.U().F(num.intValue());
        return audioItemF == null ? new Pair(Boolean.FALSE, null) : new Pair(Boolean.TRUE, audioItemF);
    }

    public static void u(ImageView imageView, Throwable th) {
        imageView.setImageResource(R.drawable.ic_bucket_cover_empty);
    }

    public void i(RxFragment rxFragment) {
        AudioItem audioItem = this.o;
        if (audioItem == null || !AudioLoadDataUtils.j(audioItem.id) || rxFragment == null) {
            return;
        }
        mc7.K(Integer.valueOf(this.o.id)).g(rxFragment.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return ArtistListAdapter.l((Integer) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.r((Pair) obj);
            }
        });
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaBucket mediaBucket) {
        baseViewHolder.itemView.setTag(mediaBucket);
        MusicLottieAnimationView.bindPlayingIndicator((MusicLottieAnimationView) baseViewHolder.getView(R.id.lottie_layer_view), this.p, mediaBucket.isContainPlayItem(this.o, this.q) && MusicPlayManager.S().q0() && this.w);
        baseViewHolder.setText(R.id.tv_playlist_name, mediaBucket.getParentName());
        baseViewHolder.setText(R.id.tv_playlist_count, this.t.getString(mediaBucket.count > 1 ? R.string.audio_songs : R.string.audio_song, String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(mediaBucket.count))));
        v(baseViewHolder, mediaBucket);
    }

    @Override
    public void convertPayloads(BaseViewHolder baseViewHolder, MediaBucket mediaBucket, List list) {
        if (list.isEmpty()) {
            convert(baseViewHolder, mediaBucket);
            return;
        }
        baseViewHolder.itemView.setTag(mediaBucket);
        MusicLottieAnimationView.bindPlayingIndicator((MusicLottieAnimationView) baseViewHolder.getView(R.id.lottie_layer_view), this.p, mediaBucket.isContainPlayItem(this.o, this.q) && MusicPlayManager.S().q0() && this.w);
    }

    public final void r(Pair pair) {
        if (pair.second == null) {
            Log.w("ArtistListAdapter", "playMediaItem no longer exist");
            this.o = new AudioItem();
            notifyDataSetChanged();
        }
    }

    public final Bitmap s(MediaBucket mediaBucket, ArtistListAdapter artistListAdapter) {
        return vk1.i(this.t, mediaBucket.uri);
    }

    public void setOnSelectListener(a aVar) {
    }

    public final void t(ImageView imageView, Bitmap bitmap) {
        Glide.with(this.t).load2(bitmap).override(this.u, this.v).centerInside().apply((BaseRequestOptions<?>) RequestOptions.bitmapTransform(new RoundedCorners(com.transsion.utils.a.d(this.t, 12.0f)))).error(R.drawable.ic_bucket_cover_empty).into(imageView);
    }

    public final void v(BaseViewHolder baseViewHolder, final MediaBucket mediaBucket) {
        final ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_playlist_item);
        Uri uri = mediaBucket.uri;
        if (uri == null) {
            Log.i("ArtistListAdapter", "uri is null");
            imageView.setImageResource(R.drawable.ic_bucket_cover_empty);
        } else if (mediaBucket.uriType == 1) {
            Glide.with(this.t).load2(uri != null ? uri.toString() : "").override(this.u, this.v).centerInside().apply((BaseRequestOptions<?>) RequestOptions.bitmapTransform(new RoundedCorners(com.transsion.utils.a.d(this.t, 12.0f)))).error(R.drawable.ic_bucket_cover_empty).into(imageView);
        } else {
            mc7.K(this).g(((BaseActivity) this.t).bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.s(mediaBucket, (ArtistListAdapter) obj);
                }
            }).d0(k29.c()).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.t(imageView, (Bitmap) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    ArtistListAdapter.u(imageView, (Throwable) obj);
                }
            });
        }
    }

    public void w(int i) {
        this.q = i;
    }

    public void x(AudioItem audioItem, boolean z) {
        this.o = audioItem;
        y(audioItem);
        if (z) {
            notifyDataSetChanged();
        } else {
            notifyItemRangeChanged(0, getItemCount(), new Object());
        }
    }

    public final void y(AudioItem audioItem) {
        this.w = ((audioItem != null && AudioLoadDataUtils.j(audioItem.id)) && (PlayAudioListData.getInstance().getPlayListFlag() == 36)) ? false : true;
    }
}
