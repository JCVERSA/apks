package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.widget.video.RewardedVideoView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.lzy.okgo.model.Progress;
import com.transsion.push.PushConstants;
import defpackage.ikd;
import defpackage.vkd;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J/\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\n¢\u0006\u0004\b\u001c\u0010\u000eJ\u0015\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u0013¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010!\u001a\u00020 ¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\f¢\u0006\u0004\b#\u0010$J\r\u0010%\u001a\u00020\f¢\u0006\u0004\b%\u0010$J\u0015\u0010'\u001a\u00020\f2\u0006\u0010&\u001a\u00020 ¢\u0006\u0004\b'\u0010(J\r\u0010)\u001a\u00020 ¢\u0006\u0004\b)\u0010\"J\r\u0010*\u001a\u00020\f¢\u0006\u0004\b*\u0010$R\u0014\u0010-\u001a\u00020\u00138\u0002X\u0082D¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108¨\u0006:"}, d2 = {"Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", PushConstants.PUSH_SERVICE_TYPE_SHOW, "Lzfb;", "showRepeatButton", "(Z)V", "Lvkd;", "adMediaPlayerListener", "setAdMediaPlayerListener", "(Lvkd;)V", "", "path", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adsDTO", "mute", "enableDiskCache", "setMediaData", "(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZZ)V", "playWhenReady", "setPlayWhenReady", "url", "setCompanionUrl", "(Ljava/lang/String;)V", "", "pause", "()J", "resume", "()V", "toggleVolume", "duration", "seekTo", "(J)V", "getDuration", "release", "b", "Ljava/lang/String;", Progress.TAG, "Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;", "c", "Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;", "videoView", "Landroid/widget/ProgressBar;", "d", "Landroid/widget/ProgressBar;", "progressBar", "Landroid/widget/ImageView;", "e", "Landroid/widget/ImageView;", "repeatButton", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RewardedVideoView extends FrameLayout {

    public final String tag;

    public AdVideoView videoView;

    public ProgressBar progressBar;

    public final ImageView repeatButton;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RewardedVideoView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void b(RewardedVideoView rewardedVideoView, View view) {
        AdVideoView adVideoView;
        y45.j(rewardedVideoView, "this$0");
        if (!NetStateManager.checkNetworkState(false) || (adVideoView = rewardedVideoView.videoView) == null) {
            return;
        }
        adVideoView.repeat();
    }

    public final long getDuration() {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            return adVideoView.getDuration();
        }
        return 0L;
    }

    public final long pause() {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.dispatchPause();
        }
        AdVideoView adVideoView2 = this.videoView;
        if (adVideoView2 != null) {
            return adVideoView2.getCurrentPosition();
        }
        return 0L;
    }

    public final void release() {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.setAdMediaPlayerListener(null);
        }
        AdVideoView adVideoView2 = this.videoView;
        if (adVideoView2 != null) {
            adVideoView2.release();
        }
        AdVideoView adVideoView3 = this.videoView;
        if (adVideoView3 != null) {
            adVideoView3.removeAllViews();
        }
        removeView(this.videoView);
        this.videoView = null;
    }

    public final void resume() {
        AdVideoView adVideoView;
        if (!NetStateManager.checkNetworkState(false) || (adVideoView = this.videoView) == null) {
            return;
        }
        adVideoView.dispatchPlay();
    }

    public final void seekTo(long duration) {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.seekTo(duration);
        }
    }

    public final void setAdMediaPlayerListener(vkd adMediaPlayerListener) {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.setAdMediaPlayerListener(adMediaPlayerListener);
        }
    }

    public final void setCompanionUrl(String url) {
        y45.j(url, "url");
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.setCompanionSize(url);
        }
    }

    public final void setMediaData(String path, AdsDTO adsDTO, boolean mute, boolean enableDiskCache) {
        y45.j(path, "path");
        ikd.b().i(this.tag, "setMediaData -------------> path = " + path);
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.setMeasureAble(false);
        }
        AdVideoView adVideoView2 = this.videoView;
        if (adVideoView2 != null) {
            adVideoView2.setMediaData(adsDTO, path, mute, enableDiskCache);
        }
    }

    public final void setPlayWhenReady(boolean playWhenReady) {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView == null) {
            return;
        }
        adVideoView.setPlayWhenReady(playWhenReady);
    }

    public final void showRepeatButton(boolean show) {
        if (show) {
            this.repeatButton.setVisibility(getVisibility());
        } else {
            this.repeatButton.setVisibility(8);
        }
    }

    public final void toggleVolume() {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.openOrCloseVolume();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RewardedVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public RewardedVideoView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardedVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.tag = "Rewarded";
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_interstitial_ad_video_view, this);
        this.videoView = (AdVideoView) viewInflate.findViewById(R.id.ad_video);
        this.progressBar = (ProgressBar) viewInflate.findViewById(R.id.ad_progress);
        View viewFindViewById = viewInflate.findViewById(R.id.repeat_btn);
        y45.i(viewFindViewById, "findViewById(...)");
        ImageView imageView = (ImageView) viewFindViewById;
        this.repeatButton = imageView;
        imageView.setVisibility(8);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                RewardedVideoView.b(this.b, view);
            }
        });
    }
}
