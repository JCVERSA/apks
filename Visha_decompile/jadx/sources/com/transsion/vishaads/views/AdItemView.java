package com.transsion.vishaads.views;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.LogUtils;
import com.bumptech.glide.Glide;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.vishaads.R;
import com.transsion.widgets.VideoPlayerSurfaceView;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;

public class AdItemView extends FrameLayout {
    public VideoPlayerSurfaceView b;
    public ImageView c;
    public AdItemBean d;
    public MediaPlayer e;
    public SurfaceHolder f;
    public VideoPlayerSurfaceView.SurfaceCallback g;
    public Uri h;
    public final String i;
    public boolean j;

    public class a implements VideoPlayerSurfaceView.SurfaceCallback {
        public a() {
        }

        @Override
        public void onSurfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        }

        @Override
        public void onSurfaceCreated(SurfaceHolder surfaceHolder) {
            AdItemView.this.f = surfaceHolder;
            AdItemView.this.openVideo();
        }

        @Override
        public void onSurfaceDestroyed(SurfaceHolder surfaceHolder) {
            AdItemView.this.f = null;
        }
    }

    public AdItemView(@NonNull Context context) {
        super(context);
        this.h = Uri.parse("content://media/external/video/media/1000021800");
        this.i = "AdItemView";
        this.j = false;
        g(context);
    }

    public void autoPauseOrResume(boolean z) {
        MediaPlayer mediaPlayer = this.e;
        if (mediaPlayer != null) {
            try {
                if (z) {
                    mediaPlayer.seekTo(mediaPlayer.getCurrentPosition());
                    this.e.start();
                } else if (mediaPlayer.isPlaying()) {
                    this.e.pause();
                }
            } catch (Exception e) {
                Log.e("AdItemView", "autoPauseOrResume " + e);
            }
        }
    }

    public final void f() {
        a aVar = new a();
        this.g = aVar;
        VideoPlayerSurfaceView videoPlayerSurfaceView = this.b;
        if (videoPlayerSurfaceView != null) {
            videoPlayerSurfaceView.setSurfaceListener(aVar);
        }
    }

    public final void g(Context context) {
        LayoutInflater.from(getContext()).inflate(R.layout.layout_ad_item, (ViewGroup) this, true);
        this.b = (VideoPlayerSurfaceView) findViewById(R.id.vw_video);
        this.c = (ImageView) findViewById(R.id.iv_ad);
    }

    public final boolean h(MediaPlayer mediaPlayer, int i, int i2) {
        Log.d("AdItemView", "onInfo(" + mediaPlayer + "), what = " + i + ", extra = " + i2);
        return true;
    }

    public final void i(MediaPlayer mediaPlayer) {
    }

    public final void j(MediaPlayer mediaPlayer) {
        mediaPlayer.start();
        Log.d("AdItemView", "onPlayerPrepared");
    }

    public final void k(AdItemBean adItemBean) {
        VideoPlayerSurfaceView videoPlayerSurfaceView = this.b;
        if (videoPlayerSurfaceView != null) {
            videoPlayerSurfaceView.setVisibility(8);
        }
        ImageView imageView = this.c;
        if (imageView != null) {
            if (adItemBean.isLocalAd) {
                imageView.setImageDrawable(getContext().getResources().getDrawable(adItemBean.localAdResourceId));
            } else if (adItemBean.getAdSourceType() == 3) {
                Glide.with(getContext()).asGif().placeholder(this.j ? R.color.black : R.drawable.ic_banner_default).load(adItemBean.getAdLocalPath()).centerCrop().into(this.c);
            } else {
                this.c.setImageURI(Uri.fromFile(new File(adItemBean.getAdLocalPath())));
            }
            this.c.setVisibility(0);
        }
    }

    public final void l(AdItemBean adItemBean) {
        f();
        this.b.setVisibility(0);
        this.c.setVisibility(8);
    }

    public final void m(MediaPlayer mediaPlayer, int i, int i2) {
        Log.d("AdItemView", "onVideoSizeChanged " + i + StringUtils.COMMA + i2);
        VideoPlayerSurfaceView videoPlayerSurfaceView = this.b;
        if (videoPlayerSurfaceView != null) {
            videoPlayerSurfaceView.onVideoSizeChanged(i, i2);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        VideoPlayerSurfaceView videoPlayerSurfaceView = this.b;
        if (videoPlayerSurfaceView != null) {
            videoPlayerSurfaceView.setSurfaceListener(null);
        }
        releasePlayer();
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Log.e("AdItemView", "onError(" + mediaPlayer + "), what = " + i + ", extra = " + i2);
        return true;
    }

    public void openVideo() {
        AdItemBean adItemBean = this.d;
        if (adItemBean == null || adItemBean.getAdLocalPath() == null || this.f == null) {
            Log.d("AdItemView", "openVideo, not ready for playback just yet,, mUri = " + this.h + ", mSurfaceHolder = " + this.f);
            return;
        }
        try {
            this.e = new MediaPlayer();
            Log.d("AdItemView", "openVideo " + this.e + StringUtils.COMMA + this.d);
            this.e.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
                @Override
                public final void onCompletion(MediaPlayer mediaPlayer) {
                    this.b.i(mediaPlayer);
                }
            });
            this.e.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
                @Override
                public final void onPrepared(MediaPlayer mediaPlayer) {
                    this.b.j(mediaPlayer);
                }
            });
            this.e.setOnErrorListener(new MediaPlayer.OnErrorListener() {
                @Override
                public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                    return this.b.onError(mediaPlayer, i, i2);
                }
            });
            this.e.setOnInfoListener(new MediaPlayer.OnInfoListener() {
                @Override
                public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                    return this.b.h(mediaPlayer, i, i2);
                }
            });
            this.e.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() {
                @Override
                public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
                    this.b.m(mediaPlayer, i, i2);
                }
            });
            this.e.setDataSource(this.d.getAdLocalPath());
            this.e.setDisplay(this.f);
            this.e.setScreenOnWhilePlaying(true);
            this.e.setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(3).build());
            this.e.setScreenOnWhilePlaying(true);
            this.e.prepareAsync();
        } catch (Exception e) {
            Log.e("AdItemView", "unable to open content: " + this.h, e);
        }
    }

    public void releasePlayer() {
        if (this.e != null) {
            Log.d("AdItemView", "releasePlayer ");
            this.e.reset();
            this.e.release();
            this.e = null;
        }
    }

    public void showAd(AdItemBean adItemBean, boolean z) {
        if (adItemBean == null) {
            LogUtils.j("AdItemView", "No ad data");
        }
        this.j = z;
        this.d = adItemBean;
        int adSourceType = adItemBean.getAdSourceType();
        if (adSourceType == 1) {
            l(adItemBean);
        } else if (adSourceType == 2 || adSourceType == 3) {
            k(adItemBean);
        } else {
            LogUtils.j("AdItemView", "invalid ad data type");
        }
    }

    public AdItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = Uri.parse("content://media/external/video/media/1000021800");
        this.i = "AdItemView";
        this.j = false;
        g(context);
    }

    public AdItemView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = Uri.parse("content://media/external/video/media/1000021800");
        this.i = "AdItemView";
        this.j = false;
        g(context);
    }
}
