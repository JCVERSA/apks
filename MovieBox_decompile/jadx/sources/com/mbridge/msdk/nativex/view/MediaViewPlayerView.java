package com.mbridge.msdk.nativex.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.AnimationDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.webkit.URLUtil;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.playercommon.VideoNativePlayer;
import com.mbridge.msdk.playercommon.VideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.videocommon.view.MyImageView;
import java.io.File;
import java.util.Timer;
import java.util.TimerTask;

public class MediaViewPlayerView extends LinearLayout implements VideoPlayerStatusListener {
    private static Handler L = new Handler();
    private String A;
    private String B;
    private CampaignEx C;
    private com.mbridge.msdk.nativex.listener.a D;
    private Timer E;
    private com.mbridge.msdk.videocommon.download.a F;
    private VideoNativePlayer G;
    private h H;
    private com.iab.omid.library.mmadbridge.adsession.b I;
    private com.iab.omid.library.mmadbridge.adsession.media.a J;
    private boolean K;

    private boolean f35828a;

    private boolean f35829b;

    private boolean f35830c;

    private boolean f35831d;

    private boolean f35832e;

    private boolean f35833f;

    private boolean f35834g;

    private boolean f35835h;

    private boolean f35836i;

    private boolean f35837j;

    private boolean f35838k;

    private volatile int f35839l;

    private boolean f35840m;

    private boolean f35841n;

    private TextureView f35842o;

    private LinearLayout f35843p;

    private Surface f35844q;

    private ProgressBar f35845r;

    private MyImageView f35846s;

    private ImageView f35847t;

    private ImageView f35848u;

    private ImageView f35849v;

    private ImageView f35850w;

    private View f35851x;

    private AnimationDrawable f35852y;

    private AlphaAnimation f35853z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            try {
                if (MediaViewPlayerView.this.f35838k) {
                    MediaViewPlayerView.this.closeSound();
                    if (MediaViewPlayerView.this.D != null) {
                        MediaViewPlayerView.this.D.b();
                    }
                } else {
                    MediaViewPlayerView.this.openSound();
                    if (MediaViewPlayerView.this.D != null) {
                        MediaViewPlayerView.this.D.a();
                    }
                }
            } catch (Throwable th2) {
                o0.b("MediaViewPlayerView", th2.getMessage());
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            try {
                MediaViewPlayerView.this.pause();
                MediaViewPlayerView.this.f35847t.setVisibility(0);
                MediaViewPlayerView.this.n();
                MediaViewPlayerView.this.c();
                if (MediaViewPlayerView.this.D != null) {
                    MediaViewPlayerView.this.D.c();
                }
                MediaViewPlayerView.this.f35832e = true;
            } catch (Throwable th2) {
                o0.b("MediaViewPlayerView", th2.getMessage(), th2);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override
        public void onClick(View view) {
            MediaViewPlayerView.this.onClickPlayButton();
        }
    }

    class d implements Animation.AnimationListener {
        d() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            MediaViewPlayerView.this.f35848u.setVisibility(0);
            MediaViewPlayerView.this.p();
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override
        public void run() {
            try {
                MediaViewPlayerView.this.c();
                MediaViewPlayerView.this.f();
            } catch (Exception e10) {
                o0.b("MediaViewPlayerView", e10.getMessage());
            }
        }
    }

    class f implements com.mbridge.msdk.foundation.same.image.c {
        f() {
        }

        @Override
        public void onFailedLoad(String str, String str2) {
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (MediaViewPlayerView.this.f35846s == null || bitmap == null) {
                return;
            }
            MediaViewPlayerView.this.f35846s.setImageUrl(str);
            MediaViewPlayerView.this.f35846s.setImageBitmap(bitmap);
        }
    }

    class g extends TimerTask {
        g() {
        }

        @Override
        public void run() {
            try {
                MediaViewPlayerView.this.gonePauseView();
            } catch (Throwable th2) {
                o0.b("MediaViewPlayerView", th2.getMessage(), th2);
            }
        }
    }

    public static class h {

        private MediaViewPlayerView f35861a;

        public h(MediaViewPlayerView mediaViewPlayerView) {
            this.f35861a = mediaViewPlayerView;
        }

        public void a() {
            try {
                MediaViewPlayerView mediaViewPlayerView = this.f35861a;
                if (mediaViewPlayerView == null || mediaViewPlayerView.f35837j) {
                    return;
                }
                o0.c("MediaViewPlayerView", "play end and display endcardView");
                this.f35861a.m();
            } catch (Exception e10) {
                o0.b("MediaViewPlayerView", e10.getMessage());
            }
        }
    }

    private class i implements TextureView.SurfaceTextureListener {
        private i() {
        }

        @Override
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            try {
                MediaViewPlayerView.this.f35844q = new Surface(surfaceTexture);
                MediaViewPlayerView.this.f35834g = true;
                MediaViewPlayerView.this.f35836i = true;
                if (MediaViewPlayerView.this.f35831d) {
                    if (MediaViewPlayerView.this.f35835h) {
                        MediaViewPlayerView.this.f35830c = false;
                        MediaViewPlayerView.this.f35835h = false;
                    }
                    if (!MediaViewPlayerView.this.isComplete() && !MediaViewPlayerView.this.f35832e) {
                        MediaViewPlayerView.this.startOrPlayVideo();
                        return;
                    }
                    MediaViewPlayerView.this.m();
                    return;
                }
                if (MediaViewPlayerView.this.f35829b) {
                    if (MediaViewPlayerView.this.hasPrepare() && MediaViewPlayerView.this.isComplete()) {
                        MediaViewPlayerView.this.m();
                        return;
                    }
                    MediaViewPlayerView.this.startOrPlayVideo();
                    return;
                }
                if (MediaViewPlayerView.this.hasPrepare() && !MediaViewPlayerView.this.isComplete()) {
                    MediaViewPlayerView.this.startOrPlayVideo();
                    return;
                }
                MediaViewPlayerView.this.m();
            } catch (Exception e10) {
                o0.b("MediaViewPlayerView", e10.getMessage());
            }
        }

        @Override
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            try {
                if (MediaViewPlayerView.this.G != null && MediaViewPlayerView.this.G.isPlayIng()) {
                    MediaViewPlayerView.this.pause();
                }
                MediaViewPlayerView.this.f35830c = true;
                MediaViewPlayerView.this.f35834g = false;
            } catch (Throwable th2) {
                o0.b("MediaViewPlayerView", th2.getMessage());
            }
            return true;
        }

        @Override
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            o0.c("MediaViewPlayerView", "onSurfaceTextureSizeChanged ");
        }

        @Override
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        i(MediaViewPlayerView mediaViewPlayerView, a aVar) {
            this();
        }
    }

    public MediaViewPlayerView(Context context) {
        super(context);
        this.f35828a = false;
        this.f35829b = false;
        this.f35830c = false;
        this.f35831d = false;
        this.f35832e = false;
        this.f35833f = false;
        this.f35834g = false;
        this.f35835h = true;
        this.f35836i = false;
        this.f35837j = true;
        this.f35838k = false;
        this.f35839l = -1;
        this.f35840m = true;
        this.f35841n = true;
        this.I = null;
        this.J = null;
        this.K = false;
        g();
    }

    private String getPlayUrl() {
        String str;
        try {
            CampaignEx campaignEx = this.C;
            if (campaignEx == null) {
                return null;
            }
            try {
                if (this.F == null) {
                    if (campaignEx.getAdType() == 287 || this.C.getAdType() == 94) {
                        str = this.C.getRequestId() + this.C.getId() + this.C.getVideoUrlEncode();
                    } else {
                        str = this.C.getId() + this.C.getVideoUrlEncode() + this.C.getBidToken();
                    }
                    this.F = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.A, str);
                }
            } catch (Exception e10) {
                o0.b("MediaViewPlayerView", e10.getMessage());
            }
            com.mbridge.msdk.videocommon.download.a aVar = this.F;
            if (aVar != null && aVar.j() == 5) {
                String strK = this.F.k();
                if (new File(strK).exists()) {
                    return strK;
                }
            }
            String videoUrlEncode = this.C.getVideoUrlEncode();
            if (y0.b(videoUrlEncode)) {
                return videoUrlEncode;
            }
        } catch (Exception e11) {
            o0.b("MediaViewPlayerView", e11.getMessage());
        }
        return null;
    }

    public void closeSound() {
        this.f35838k = false;
        try {
            if (this.G != null) {
                this.f35849v.setImageResource(g0.a(getContext(), "mbridge_nativex_sound_close", "drawable"));
                this.G.closeSound();
            }
            try {
                com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.J;
                if (aVar != null) {
                    aVar.p(0.0f);
                }
            } catch (IllegalArgumentException e10) {
                o0.a("OMSDK", e10.getMessage());
            }
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public boolean curIsFullScreen() {
        return this.f35831d;
    }

    public Campaign getCampaign() {
        return this.C;
    }

    public boolean getIsActiviePause() {
        return this.f35832e;
    }

    public void gonePauseView() {
        Handler handler = L;
        if (handler != null) {
            handler.post(new e());
        }
    }

    public boolean halfLoadingViewisVisible() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            return videoNativePlayer != null && videoNativePlayer.loadingViewIsVisible();
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
            return false;
        }
    }

    public boolean hasPrepare() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                return videoNativePlayer.hasPrepare();
            }
            return false;
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
            return false;
        }
    }

    public boolean initPlayerViewData(String str, CampaignEx campaignEx, boolean z10, VideoPlayerStatusListener videoPlayerStatusListener, com.mbridge.msdk.videocommon.download.a aVar, String str2) {
        try {
            if (TextUtils.isEmpty(str) || campaignEx == null) {
                return false;
            }
            this.B = str;
            this.f35829b = z10;
            this.C = campaignEx;
            this.F = aVar;
            this.A = str2;
            this.G.initParameter(campaignEx.getVideoUrlEncode(), true, this.f35837j, this.f35846s, videoPlayerStatusListener);
            h();
            this.f35828a = true;
        } catch (Exception e10) {
            o0.b("MediaViewPlayerView", e10.getMessage());
            this.f35828a = false;
        }
        return true;
    }

    public boolean isComplete() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                return videoNativePlayer.isComplete();
            }
            return false;
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
            return false;
        }
    }

    public boolean isPlaying() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                return videoNativePlayer.isPlaying();
            }
            return false;
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
            return false;
        }
    }

    @Override
    public void onBufferingEnd() {
    }

    @Override
    public void onBufferingStart(String str) {
    }

    @Override
    public void onBufferingTimeOut(String str) {
    }

    public void onClickPlayButton() {
        com.mbridge.msdk.nativex.listener.a aVar;
        try {
            e();
            f();
            setIsComplete(false);
            if (this.f35833f) {
                this.G.play();
            } else if (!hasPrepare() || this.f35830c) {
                o0.c("MediaViewPlayerView", "点击播放 playVideo()");
                this.G.replaySameSource(getContext(), this.B, this.f35844q);
            } else {
                o0.c("MediaViewPlayerView", "startOrPlayVideo() hasPrepare():" + hasPrepare() + " mIsNeedToRepeatPrepare:" + this.f35830c);
                startOrPlayVideo();
            }
            if (this.f35832e && (aVar = this.D) != null) {
                aVar.d();
            }
            this.f35832e = false;
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage(), th2);
        }
    }

    public void onClickPlayerView() {
        ImageView imageView;
        try {
            MyImageView myImageView = this.f35846s;
            if ((myImageView == null || myImageView.getVisibility() != 0) && isPlaying() && (imageView = this.f35848u) != null) {
                if (imageView.getVisibility() == 0) {
                    gonePauseView();
                    a();
                    return;
                }
                AlphaAnimation alphaAnimation = this.f35853z;
                if (alphaAnimation != null) {
                    alphaAnimation.cancel();
                }
                AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
                this.f35853z = alphaAnimation2;
                alphaAnimation2.setDuration(300L);
                this.f35853z.setInterpolator(new DecelerateInterpolator());
                this.f35853z.setAnimationListener(new d());
                n();
                this.f35851x.startAnimation(this.f35853z);
            }
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    @Override
    public void onPlayCompleted() {
        if (this.D != null && !TextUtils.isEmpty(this.B)) {
            this.D.a(this.B);
        }
        h hVar = this.H;
        if (hVar != null) {
            hVar.a();
            return;
        }
        try {
            if (this.f35837j) {
                return;
            }
            this.f35830c = true;
            m();
        } catch (Exception e10) {
            o0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    @Override
    public void onPlayError(String str) {
        try {
            this.f35830c = true;
            m();
            if (this.K) {
                return;
            }
            this.G.play(getContext(), this.B, this.f35844q);
            this.K = true;
        } catch (Exception e10) {
            o0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    @Override
    public void onPlayProgress(int i10, int i11) {
        try {
            e();
            l();
            this.f35832e = false;
            this.f35830c = false;
            this.f35839l = i10;
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage(), th2);
        }
    }

    @Override
    public void onPlayProgressMS(int i10, int i11) {
        a(i10, i11);
    }

    @Override
    public void onPlaySetDataSourceError(String str) {
        try {
            this.f35830c = true;
            b();
        } catch (Exception e10) {
            o0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    @Override
    public void onPlayStarted(int i10) {
        if (this.D == null || TextUtils.isEmpty(this.B)) {
            return;
        }
        this.D.b(this.B);
    }

    public void openSound() {
        this.f35838k = true;
        try {
            if (this.G != null) {
                this.f35849v.setImageResource(g0.a(getContext(), "mbridge_nativex_sound_open", "drawable"));
                this.G.openSound();
            }
            try {
                com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.J;
                if (aVar != null) {
                    aVar.p(1.0f);
                    return;
                }
                return;
            } catch (IllegalArgumentException e10) {
                o0.a("OMSDK", e10.getMessage());
                return;
            }
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
        o0.b("MediaViewPlayerView", th2.getMessage());
    }

    public void pause() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                videoNativePlayer.pause();
                this.f35833f = true;
            }
            if (this.J != null) {
                o0.b("omsdk", "mediaviewplayerview pause");
                this.J.j();
            }
            d();
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void playVideo() {
        com.iab.omid.library.mmadbridge.adsession.media.a aVar;
        try {
            if (this.f35828a && this.G != null) {
                if (!this.f35834g) {
                    m();
                    return;
                }
                if ((!TextUtils.isEmpty(this.B) && this.B.startsWith("http")) || this.B.startsWith("https")) {
                    this.B = getPlayUrl();
                }
                e();
                this.G.play(getContext(), this.B, this.f35844q);
                if ((this.f35833f || this.f35832e) && (aVar = this.J) != null) {
                    this.f35833f = false;
                    aVar.l();
                }
                if (this.f35838k) {
                    this.G.openSound();
                } else {
                    this.G.closeSound();
                }
                this.f35830c = false;
            }
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void registerView(com.iab.omid.library.mmadbridge.adsession.b bVar) {
        this.I = bVar;
        if (bVar != null) {
            bVar.d(this);
            LinearLayout linearLayout = this.f35843p;
            FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
            bVar.a(linearLayout, friendlyObstructionPurpose, null);
            bVar.a(this.f35845r, friendlyObstructionPurpose, null);
            MyImageView myImageView = this.f35846s;
            FriendlyObstructionPurpose friendlyObstructionPurpose2 = FriendlyObstructionPurpose.VIDEO_CONTROLS;
            bVar.a(myImageView, friendlyObstructionPurpose2, null);
            bVar.a(this.f35847t, friendlyObstructionPurpose2, null);
            bVar.a(this.f35848u, friendlyObstructionPurpose2, null);
            bVar.a(this.f35849v, friendlyObstructionPurpose, null);
        }
    }

    public void release() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                videoNativePlayer.releasePlayer();
                this.G = null;
            }
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void setAllowLoopPlay(boolean z10) {
        this.f35837j = z10;
    }

    public void setEnterFullScreen() {
        try {
            o0.c("MediaViewPlayerView", "setEnterFullScreen");
            this.f35831d = true;
            this.f35835h = true;
            this.f35849v.setVisibility(0);
            d();
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage(), th2);
        }
    }

    public void setExitFullScreen() {
        try {
            this.f35831d = false;
            this.f35830c = false;
            this.f35849v.setVisibility(8);
            l();
            e();
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage(), th2);
        }
    }

    public void setIsActivePause(boolean z10) {
        this.f35832e = z10;
    }

    public void setIsComplete(boolean z10) {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                videoNativePlayer.setIsComplete(z10);
            }
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void setIsFrontDesk(boolean z10) {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                videoNativePlayer.setIsFrontDesk(z10);
            }
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void setMediaViewPlayListener(h hVar) {
        this.H = hVar;
    }

    public void setOnMediaViewPlayerViewListener(com.mbridge.msdk.nativex.listener.a aVar) {
        this.D = aVar;
    }

    public void setVideoEvents(com.iab.omid.library.mmadbridge.adsession.media.a aVar) {
        this.J = aVar;
    }

    public void showPlayView() {
        this.f35847t.setVisibility(0);
    }

    public void showProgressView(boolean z10) {
        this.f35841n = z10;
        ProgressBar progressBar = this.f35845r;
        if (progressBar != null) {
            progressBar.setVisibility(z10 ? 0 : 4);
        }
    }

    public void showSoundIndicator(boolean z10) {
        this.f35840m = z10;
        if (z10) {
            l();
        } else {
            d();
        }
    }

    public void startOrPlayVideo() {
        try {
            if (!this.f35834g) {
                m();
            } else if (hasPrepare()) {
                o();
            } else {
                playVideo();
            }
        } catch (Exception e10) {
            o0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    public void stop() {
        try {
            VideoNativePlayer videoNativePlayer = this.G;
            if (videoNativePlayer != null) {
                videoNativePlayer.stop();
            }
            d();
        } catch (Exception e10) {
            o0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    public void unregisterView() {
        com.iab.omid.library.mmadbridge.adsession.b bVar = this.I;
        if (bVar != null) {
            bVar.e();
        }
    }

    public void f() {
        if (this.f35847t.getVisibility() != 0) {
            this.f35851x.setVisibility(8);
        }
    }

    private void g() {
        try {
            j();
            i();
        } catch (Exception e10) {
            o0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    private void h() {
        try {
            CampaignEx campaignEx = this.C;
            if (campaignEx == null) {
                return;
            }
            String imageUrl = campaignEx.getImageUrl();
            if (y0.a(imageUrl) || getContext() == null) {
                return;
            }
            if (com.mbridge.msdk.foundation.same.image.b.a(getContext()).c(imageUrl)) {
                Bitmap bitmapB = com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).b(imageUrl);
                MyImageView myImageView = this.f35846s;
                if (myImageView != null && bitmapB != null) {
                    myImageView.setImageUrl(imageUrl);
                    this.f35846s.setImageBitmap(bitmapB);
                    this.f35846s.setVisibility(0);
                }
            } else {
                com.mbridge.msdk.foundation.same.image.b.a(getContext()).a(imageUrl, new f());
            }
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    private void i() {
        VideoNativePlayer videoNativePlayer = new VideoNativePlayer();
        this.G = videoNativePlayer;
        videoNativePlayer.setSelfVideoFeedsPlayerListener(this);
    }

    private void j() {
        try {
            a aVar = null;
            View viewInflate = LayoutInflater.from(getContext()).inflate(g0.a(getContext(), "mbridge_nativex_playerview", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
            if (viewInflate != null) {
                this.f35843p = (LinearLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_ll_loading", "id"));
                TextureView textureView = (TextureView) viewInflate.findViewById(g0.a(getContext(), "mbridge_textureview", "id"));
                this.f35842o = textureView;
                textureView.setKeepScreenOn(true);
                this.f35842o.setSurfaceTextureListener(new i(this, aVar));
                this.f35845r = (ProgressBar) viewInflate.findViewById(g0.a(getContext(), "mbridge_progress", "id"));
                this.f35846s = (MyImageView) viewInflate.findViewById(g0.a(getContext(), "mbridge_iv_playend_pic", "id"));
                this.f35847t = (ImageView) viewInflate.findViewById(g0.a(getContext(), "mbridge_iv_play", "id"));
                this.f35848u = (ImageView) viewInflate.findViewById(g0.a(getContext(), "mbridge_iv_pause", "id"));
                this.f35849v = (ImageView) viewInflate.findViewById(g0.a(getContext(), "mbridge_iv_sound", "id"));
                this.f35851x = viewInflate.findViewById(g0.a(getContext(), "mbridge_view_cover", "id"));
                ImageView imageView = (ImageView) viewInflate.findViewById(g0.a(getContext(), "mbridge_iv_sound_animation", "id"));
                this.f35850w = imageView;
                AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getDrawable();
                this.f35852y = animationDrawable;
                animationDrawable.start();
                k();
                addView(viewInflate, -1, -1);
            }
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    private void k() {
        this.f35849v.setOnClickListener(new a());
        this.f35848u.setOnClickListener(new b());
        this.f35847t.setOnClickListener(new c());
    }

    private void l() {
        ImageView imageView;
        if (this.f35831d || (imageView = this.f35850w) == null || imageView.getVisibility() == 0 || !this.f35840m) {
            return;
        }
        this.f35850w.setVisibility(0);
    }

    public void m() {
        try {
            this.f35846s.setVisibility(0);
            this.f35847t.setVisibility(0);
            n();
            c();
            this.f35845r.setVisibility(8);
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void n() {
        this.f35851x.setVisibility(0);
    }

    private void o() {
        com.iab.omid.library.mmadbridge.adsession.media.a aVar;
        try {
            if (this.G == null) {
                return;
            }
            e();
            if (this.f35836i) {
                this.G.start(this.f35844q);
                this.f35836i = false;
            } else {
                this.G.start();
            }
            if ((this.f35833f || this.f35832e) && (aVar = this.J) != null) {
                this.f35833f = false;
                aVar.l();
            }
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage(), th2);
        }
    }

    public void p() {
        a();
        this.E = new Timer();
        this.E.schedule(new g(), 2000L);
    }

    private void b() {
        try {
            if (URLUtil.isNetworkUrl(this.B)) {
                return;
            }
            String videoUrlEncode = this.C.getVideoUrlEncode();
            if (y0.b(videoUrlEncode)) {
                this.B = videoUrlEncode;
            }
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    public void c() {
        this.f35848u.setVisibility(8);
    }

    private void d() {
        if (this.f35850w.getVisibility() == 0) {
            this.f35850w.setVisibility(8);
        }
    }

    private void e() {
        try {
            this.f35846s.setVisibility(8);
            this.f35847t.setVisibility(8);
            f();
            showProgressView(this.f35841n);
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    private void a(int i10, int i11) {
        try {
            ProgressBar progressBar = this.f35845r;
            if (progressBar == null || progressBar.getVisibility() != 0) {
                return;
            }
            if (i11 > 0) {
                this.f35845r.setMax(i11);
            }
            if (i10 >= 0) {
                this.f35845r.setProgress(i10 + 1);
            }
        } catch (Throwable th2) {
            o0.b("MediaViewPlayerView", th2.getMessage());
        }
    }

    private void a() {
        try {
            Handler handler = L;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            Timer timer = this.E;
            if (timer != null) {
                timer.cancel();
            }
        } catch (Exception e10) {
            o0.b("MediaViewPlayerView", e10.getMessage());
        }
    }

    public MediaViewPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35828a = false;
        this.f35829b = false;
        this.f35830c = false;
        this.f35831d = false;
        this.f35832e = false;
        this.f35833f = false;
        this.f35834g = false;
        this.f35835h = true;
        this.f35836i = false;
        this.f35837j = true;
        this.f35838k = false;
        this.f35839l = -1;
        this.f35840m = true;
        this.f35841n = true;
        this.I = null;
        this.J = null;
        this.K = false;
        g();
    }
}
