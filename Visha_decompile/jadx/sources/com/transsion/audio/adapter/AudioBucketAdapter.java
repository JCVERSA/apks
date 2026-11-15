package com.transsion.audio.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.google.android.material.timepicker.TimeModel;
import com.transsion.audio.R;
import com.transsion.audio.adapter.AudioBucketAdapter;
import com.transsion.audio.utils.AudioLoadDataUtils;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.widgets.MusicLottieAnimationView;
import defpackage.ao;
import defpackage.bn;
import defpackage.k29;
import defpackage.mc7;
import defpackage.r0a;
import defpackage.t74;
import defpackage.vb;
import defpackage.vk1;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.ExecutionException;

public class AudioBucketAdapter extends BaseQuickAdapter<MediaBucket, BaseViewHolder> {
    public AudioItem o;
    public int p;
    public int q;
    public ArrayList r;
    public ArrayList s;
    public Context t;
    public int u;
    public int v;
    public volatile boolean w;
    public ConcurrentHashMap x;
    public ConcurrentSkipListSet y;

    public class a implements zf1 {
        public final ImageView b;

        public a(ImageView imageView) {
            this.b = imageView;
        }

        @Override
        public void accept(Throwable th) {
            Glide.with(AudioBucketAdapter.this.t).load2(AudioBucketAdapter.this.t.getResources().getDrawable(R.drawable.ic_album_default, AudioBucketAdapter.this.t.getTheme())).centerCrop().into(this.b);
        }
    }

    public interface b {
    }

    public AudioBucketAdapter(Context context, int i) {
        super(i == 25 ? R.layout.rv_item_fragment_album_list : R.layout.rv_item_fragment_audio_folders);
        this.o = new AudioItem();
        this.r = new ArrayList();
        this.s = new ArrayList();
        this.w = true;
        this.x = new ConcurrentHashMap();
        this.y = new ConcurrentSkipListSet();
        this.t = context;
        this.q = i;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.p = typedValue.data;
        this.u = com.transsion.utils.a.d(context, 40.0f);
        this.v = com.transsion.utils.a.d(context, 40.0f);
    }

    private void E(AudioItem audioItem) {
        this.w = ((audioItem != null && AudioLoadDataUtils.j(audioItem.id)) && (PlayAudioListData.getInstance().getPlayListFlag() == 36)) ? false : true;
    }

    public void u(ImageView imageView, Bitmap bitmap) {
        Glide.with(this.t).load2(bitmap).error(this.t.getResources().getDrawable(R.drawable.ic_album_default, this.t.getTheme())).centerCrop().into(imageView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Bitmap A(String str) {
        if (r0a.g(str)) {
            return null;
        }
        try {
            return (Bitmap) Glide.with(this.t).asBitmap().load2(str).diskCacheStrategy(DiskCacheStrategy.ALL).submit(153, 153).get();
        } catch (InterruptedException e) {
            Log.i("AudioBucketAdapter", "loadThumb exception:" + e.getMessage());
            return null;
        } catch (ExecutionException e2) {
            Log.i("AudioBucketAdapter", "loadThumb exception:" + e2.getMessage());
            return null;
        }
    }

    public void B(AudioItem audioItem) {
        this.o = audioItem;
        E(audioItem);
        notifyItemRangeChanged(0, getItemCount(), new Object());
    }

    public void C(AudioItem audioItem, boolean z) {
        this.o = audioItem;
        E(audioItem);
        if (z) {
            notifyDataSetChanged();
        } else {
            notifyItemRangeChanged(0, getItemCount(), new Object());
        }
    }

    public final void D(MusicLottieAnimationView musicLottieAnimationView, boolean z) {
        MusicLottieAnimationView.bindPlayingIndicator(musicLottieAnimationView, this.p, z);
    }

    @Override
    public int getItemViewType(int i) {
        return this.q;
    }

    public void k() {
        AudioItem audioItem = this.o;
        if (audioItem == null || !AudioLoadDataUtils.j(audioItem.id)) {
            return;
        }
        ThreadUtils.l().execute(new Runnable() {
            @Override
            public void run() {
                if (ao.U().F(AudioBucketAdapter.this.o.id) == null) {
                    Log.w("AudioBucketAdapter", "playMediaItem no longer exist");
                    ThreadUtils.o().post(new Runnable() {
                        @Override
                        public void run() {
                            AudioBucketAdapter.this.o = new AudioItem();
                            AudioBucketAdapter.this.notifyDataSetChanged();
                        }
                    });
                }
            }
        });
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaBucket mediaBucket) {
        baseViewHolder.itemView.setTag(mediaBucket);
        int i = this.q;
        if (i == 25) {
            x(baseViewHolder, mediaBucket);
            return;
        }
        D((MusicLottieAnimationView) baseViewHolder.getView(R.id.lottie_layer_view), mediaBucket.isContainPlayItem(this.o, i) && this.w);
        baseViewHolder.setText(R.id.tv_main_fragment_item_title, mediaBucket.getParentName());
        baseViewHolder.setText(R.id.tv_main_fragment_item_count, this.t.getString(mediaBucket.count > 1 ? R.string.audio_songs : R.string.audio_song, String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(mediaBucket.count))));
        z((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_cover), mediaBucket);
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return i == 25 ? createBaseViewHolder(viewGroup, R.layout.rv_item_fragment_album_list) : createBaseViewHolder(viewGroup, R.layout.rv_item_fragment_audio_folders);
    }

    @Override
    public void convertPayloads(BaseViewHolder baseViewHolder, MediaBucket mediaBucket, List list) {
        if (list.isEmpty()) {
            convert(baseViewHolder, mediaBucket);
            return;
        }
        baseViewHolder.itemView.setTag(mediaBucket);
        int i = this.q;
        boolean z = false;
        if (i == 25) {
            boolean zIsContainPlayItem = mediaBucket.isContainPlayItem(this.o, i);
            MusicLottieAnimationView musicLottieAnimationView = (MusicLottieAnimationView) baseViewHolder.getView(R.id.lottie_layer_view);
            if (zIsContainPlayItem && this.w) {
                z = true;
            }
            D(musicLottieAnimationView, z);
            return;
        }
        boolean zIsContainPlayItem2 = mediaBucket.isContainPlayItem(this.o, i);
        MusicLottieAnimationView musicLottieAnimationView2 = (MusicLottieAnimationView) baseViewHolder.getView(R.id.lottie_layer_view);
        if (zIsContainPlayItem2 && this.w) {
            z = true;
        }
        D(musicLottieAnimationView2, z);
        baseViewHolder.setText(R.id.tv_main_fragment_item_title, mediaBucket.getParentName());
        baseViewHolder.setText(R.id.tv_main_fragment_item_count, this.t.getString(mediaBucket.count > 1 ? R.string.audio_songs : R.string.audio_song, String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(mediaBucket.count))));
        z((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_cover), mediaBucket);
    }

    public AudioItem s() {
        return this.o;
    }

    public void setOnSelectListener(b bVar) {
    }

    public final Bitmap t(MediaBucket mediaBucket, AudioBucketAdapter audioBucketAdapter) {
        return vk1.i(this.t, mediaBucket.uri);
    }

    public final Bitmap v(MediaBucket mediaBucket, MediaBucket mediaBucket2) {
        return mediaBucket.isCustomCover ? A(mediaBucket.uri.toString()) : vk1.i(this.t, mediaBucket.uri);
    }

    public void x(BaseViewHolder baseViewHolder, MediaBucket mediaBucket) {
        baseViewHolder.setText(R.id.tv_playlist_name, mediaBucket.getParentName());
        baseViewHolder.setText(R.id.tv_playlist_count, this.t.getString(mediaBucket.count > 1 ? R.string.audio_songs : R.string.audio_song, String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(mediaBucket.count))));
        y((ImageView) baseViewHolder.getView(R.id.iv_album_cover), mediaBucket);
        D((MusicLottieAnimationView) baseViewHolder.getView(R.id.lottie_layer_view), mediaBucket.isContainPlayItem(this.o, this.q) && this.w);
    }

    public final void y(final ImageView imageView, final MediaBucket mediaBucket) {
        Uri uri = mediaBucket.uri;
        if (uri != null) {
            if (mediaBucket.uriType == 1 || mediaBucket.isCustomCover) {
                Glide.with(this.t).load2(uri != null ? uri.toString() : "").error(this.t.getResources().getDrawable(R.drawable.ic_album_default, this.t.getTheme())).centerCrop().into(imageView);
            } else {
                mc7.K(this).g(((BaseActivity) this.t).bindToLifecycle()).L(new t74() {
                    @Override
                    public final Object apply(Object obj) {
                        return this.b.t(mediaBucket, (AudioBucketAdapter) obj);
                    }
                }).d0(k29.c()).M(vb.a()).a0(new zf1() {
                    @Override
                    public final void accept(Object obj) {
                        this.b.u(imageView, (Bitmap) obj);
                    }
                }, new a(imageView));
            }
        }
    }

    public void z(final ImageView imageView, final MediaBucket mediaBucket) {
        mc7 mc7VarM = mc7.K(mediaBucket).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.v(mediaBucket, (MediaBucket) obj);
            }
        }).d0(k29.c()).M(vb.a());
        Objects.requireNonNull(imageView);
        mc7VarM.a0(new bn(imageView), new zf1() {
            @Override
            public final void accept(Object obj) {
                imageView.setImageBitmap(null);
            }
        });
    }
}
