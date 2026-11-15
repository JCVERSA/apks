package com.transsion.ad.bidding.base;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.MBAd;
import com.transsion.ad.R$mipmap;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.monopoly.model.MbAdVideo;
import com.transsion.player.orplayer.PlayError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u000f\u0010\f\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\u0006J\u0019\u0010\u000f\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u000f\u0010\u0012\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0012\u0010\u0006J\u000f\u0010\u0013\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0013\u0010\u0006J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0017\u0010\u0006J\u000f\u0010\u0018\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0018\u0010\u0006J\u000f\u0010\u0019\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0019\u0010\u0006J\u000f\u0010\u001a\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001a\u0010\u0006J\u000f\u0010\u001b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001b\u0010\u0006J\u0019\u0010\u001e\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\nH\u0014¢\u0006\u0004\b \u0010\u0006J\u000f\u0010!\u001a\u00020\nH\u0014¢\u0006\u0004\b!\u0010\u0006J\u0011\u0010#\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u0014H\u0016¢\u0006\u0004\b&\u0010'J!\u0010,\u001a\u00020\n2\u0006\u0010)\u001a\u00020(2\b\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b,\u0010-J\u0019\u0010.\u001a\u00020\n2\b\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\nH\u0016¢\u0006\u0004\b0\u0010\u0006J\u0019\u00101\u001a\u00020\n2\b\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b1\u0010/J\u0019\u00102\u001a\u00020\n2\b\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b2\u0010/J\u0019\u00103\u001a\u00020\n2\b\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b3\u0010/J\u000f\u00104\u001a\u00020\rH\u0016¢\u0006\u0004\b4\u00105J\u0011\u00106\u001a\u0004\u0018\u00010\"H&¢\u0006\u0004\b6\u0010$J\u000f\u00107\u001a\u00020\nH&¢\u0006\u0004\b7\u0010\u0006J\u0011\u00109\u001a\u0004\u0018\u000108H&¢\u0006\u0004\b9\u0010:J\u0011\u0010;\u001a\u0004\u0018\u000108H&¢\u0006\u0004\b;\u0010:J\u000f\u0010=\u001a\u00020<H&¢\u0006\u0004\b=\u0010>J\u0017\u0010@\u001a\u00020\n2\u0006\u0010?\u001a\u00020<H&¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\nH&¢\u0006\u0004\bB\u0010\u0006J\u0011\u0010C\u001a\u0004\u0018\u00010\"H&¢\u0006\u0004\bC\u0010$J\u0011\u0010D\u001a\u0004\u0018\u00010\"H&¢\u0006\u0004\bD\u0010$J\u0011\u0010E\u001a\u0004\u0018\u00010\"H&¢\u0006\u0004\bE\u0010$J-\u0010J\u001a\u00020\n2\b\u0010G\u001a\u0004\u0018\u00010F2\b\u0010H\u001a\u0004\u0018\u00010<2\b\u0010I\u001a\u0004\u0018\u00010<H\u0016¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020\u0014H\u0016¢\u0006\u0004\bL\u0010\u0016J\u000f\u0010M\u001a\u00020\u0014H\u0016¢\u0006\u0004\bM\u0010\u0016J\u0017\u0010P\u001a\u00020\n2\u0006\u0010O\u001a\u00020NH\u0016¢\u0006\u0004\bP\u0010QJ\r\u0010R\u001a\u00020\n¢\u0006\u0004\bR\u0010\u0006J\r\u0010S\u001a\u00020\n¢\u0006\u0004\bS\u0010\u0006J\u000f\u0010T\u001a\u00020\nH\u0017¢\u0006\u0004\bT\u0010\u0006J\u0015\u0010V\u001a\u00020\n2\u0006\u0010U\u001a\u00020\u0014¢\u0006\u0004\bV\u0010'J\r\u0010W\u001a\u00020<¢\u0006\u0004\bW\u0010>J\r\u0010X\u001a\u00020<¢\u0006\u0004\bX\u0010>J\u000f\u0010Z\u001a\u0004\u0018\u00010Y¢\u0006\u0004\bZ\u0010[J\u000f\u0010]\u001a\u0004\u0018\u00010\\¢\u0006\u0004\b]\u0010^J\r\u0010_\u001a\u00020\n¢\u0006\u0004\b_\u0010\u0006J\r\u0010`\u001a\u00020\n¢\u0006\u0004\b`\u0010\u0006J\r\u0010a\u001a\u00020\n¢\u0006\u0004\ba\u0010\u0006J\r\u0010b\u001a\u00020\n¢\u0006\u0004\bb\u0010\u0006R\u0018\u0010e\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0018\u0010i\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u0018\u0010l\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0016\u0010o\u001a\u00020<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0018\u0010r\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0016\u0010v\u001a\u00020s8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010uR\u0016\u0010z\u001a\u00020w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0016\u0010|\u001a\u00020w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010yR\u0016\u0010~\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010}R\u0017\u0010\u0082\u0001\u001a\u00020\u007f8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0018\u0010\u0084\u0001\u001a\u00020<8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010nR\u001b\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0018\u0010\u0089\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010}R\u0018\u0010\u008d\u0001\u001a\u00030\u008a\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001¨\u0006\u008e\u0001"}, d2 = {"Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/transsion/ad/strategy/t$a;", "Lxh/b;", "Lcom/transsion/player/orplayer/e;", "<init>", "()V", "Lcom/transsion/player/orplayer/f;", "n0", "()Lcom/transsion/player/orplayer/f;", "", "z0", "W", "", "errorMsg", "u0", "(Ljava/lang/String;)V", "q0", "s0", "F0", "", "A0", "()Z", "H0", "E0", "x0", "J0", "w0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onDestroy", "Landroid/view/View;", "getVisibilityView", "()Landroid/view/View;", "isVisible", "onVisibilityChanged", "(Z)V", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "Lgn/e;", "mediaSource", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V", "onPrepare", "(Lgn/e;)V", "onRenderFirstFrame", "onVideoPause", "onVideoStart", "onCompletion", "getSceneId", "()Ljava/lang/String;", "o0", "D0", "Landroid/widget/FrameLayout;", "j0", "()Landroid/widget/FrameLayout;", "p0", "", "g0", "()I", "i", "y0", "(I)V", "r0", "c0", "k0", "l0", "Landroidx/appcompat/widget/AppCompatImageView;", "imageView", "width", "height", "t0", "(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V", "i0", "m0", "Lcom/gyf/immersionbar/ImmersionBar;", "with", "L0", "(Lcom/gyf/immersionbar/ImmersionBar;)V", "b0", "K0", "B0", "isShow", "C0", "h0", "f0", "Lcom/transsion/ad/monopoly/model/AdPlans;", "e0", "()Lcom/transsion/ad/monopoly/model/AdPlans;", "Lcom/transsion/ad/monopoly/model/AdMaterialList;", "d0", "()Lcom/transsion/ad/monopoly/model/AdMaterialList;", "X", "a0", "V", "Y", "a", "Lcom/transsion/ad/monopoly/model/AdPlans;", "mAdPlan", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "maxEcpmObject", "c", "Lcom/transsion/ad/monopoly/model/AdMaterialList;", "mAdMaterialList", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "mAppLayoutId", "e", "Ljava/lang/String;", "mSceneId", "", "f", "J", "displayTimestamp", "Ljava/util/concurrent/atomic/AtomicBoolean;", "g", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isReportAdDisplay", "h", "isAdMaterialShow", "Z", "mIsMute", "Landroid/os/Handler;", "j", "Landroid/os/Handler;", "mHandler", CampaignEx.JSON_KEY_AD_K, "countDownTimes", "l", "Lcom/transsion/player/orplayer/f;", "mOrPlayer", "m", "isInScreen", "Ljava/lang/Runnable;", "n", "Ljava/lang/Runnable;", "countdownRunnable", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class AbsBiddingActivity extends AppCompatActivity implements com.transsion.ad.strategy.t.a, xh.b, com.transsion.player.orplayer.e {

    private AdPlans mAdPlan;

    private BiddingIntermediateMaterialBean maxEcpmObject;

    private AdMaterialList mAdMaterialList;

    private int mAppLayoutId;

    private String mSceneId;

    private long displayTimestamp;

    private int countDownTimes;

    private com.transsion.player.orplayer.f mOrPlayer;

    private boolean isInScreen;

    private AtomicBoolean isReportAdDisplay = new AtomicBoolean(false);

    private AtomicBoolean isAdMaterialShow = new AtomicBoolean(false);

    private boolean mIsMute = true;

    private final Handler mHandler = new Handler(Looper.getMainLooper());

    private final Runnable countdownRunnable = new Runnable() {
        @Override
        public final void run() {
            AbsBiddingActivity.Z(this.f40866a);
        }
    };

    public static final class a extends androidx.activity.u {
        a() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
        }
    }

    public static final class b implements RequestListener {

        final AppCompatImageView f40821b;

        b(AppCompatImageView appCompatImageView) {
            this.f40821b = appCompatImageView;
        }

        public static final void c(AbsBiddingActivity absBiddingActivity, AppCompatImageView appCompatImageView, int i10, int i11) {
            absBiddingActivity.t0(appCompatImageView, Integer.valueOf(i10), Integer.valueOf(i11));
        }

        @Override
        public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(dataSource, "dataSource");
            if (resource instanceof GifDrawable) {
                ((GifDrawable) resource).start();
            }
            AbsBiddingActivity.this.isAdMaterialShow.set(true);
            final int intrinsicWidth = resource.getIntrinsicWidth();
            final int intrinsicHeight = resource.getIntrinsicHeight();
            if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                return false;
            }
            final AppCompatImageView appCompatImageView = this.f40821b;
            final AbsBiddingActivity absBiddingActivity = AbsBiddingActivity.this;
            appCompatImageView.post(new Runnable() {
                @Override
                public final void run() {
                    AbsBiddingActivity.b.c(absBiddingActivity, appCompatImageView, intrinsicWidth, intrinsicHeight);
                }
            });
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            Intrinsics.h(target, "target");
            AbsBiddingActivity.this.u0("图片加载失败 --> " + (glideException != null ? glideException.getMessage() : null));
            return false;
        }
    }

    private final boolean A0() {
        this.mIsMute = !this.mIsMute;
        com.transsion.player.orplayer.f mOrPlayer = getMOrPlayer();
        if (mOrPlayer != null) {
            mOrPlayer.setMute(this.mIsMute);
        }
        return this.mIsMute;
    }

    private final void E0() {
        MbAdImage image;
        FrameLayout frameLayoutJ0 = j0();
        if (frameLayoutJ0 == null) {
            u0("图片广告容器为空");
            return;
        }
        AppCompatImageView appCompatImageView = new AppCompatImageView(this);
        appCompatImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        AdMaterialList mAdMaterialList = getMAdMaterialList();
        if (mAdMaterialList == null || (image = mAdMaterialList.getImage()) == null) {
            u0("图片广告素材为空");
        } else {
            String path = image.getPath();
            Object url = image.getUrl();
            if (path != null) {
                if (!new File(path).exists()) {
                    path = null;
                }
                if (path != null) {
                    url = new File(path);
                }
            }
            Glide.with((FragmentActivity) this).load2(url).listener(new b(appCompatImageView)).into(appCompatImageView);
            if (image.getWidth() == null || image.getHeight() == null) {
                t0(appCompatImageView, Integer.valueOf(y.e()), Integer.valueOf(y.c()));
            } else {
                t0(appCompatImageView, image.getWidth(), image.getHeight());
            }
        }
        frameLayoutJ0.removeAllViews();
        frameLayoutJ0.addView(appCompatImageView);
    }

    private final void F0() {
        AdMaterialList mAdMaterialList = getMAdMaterialList();
        if (Intrinsics.c(mAdMaterialList != null ? mAdMaterialList.getType() : null, AdMaterialList.NON_AD_TYPE_TEXT)) {
            E0();
        } else {
            x0();
        }
        FrameLayout frameLayoutJ0 = j0();
        if (frameLayoutJ0 != null) {
            frameLayoutJ0.setOnClickListener(new ci.g(0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return AbsBiddingActivity.G0(this.f40867a, (View) obj);
                }
            }, 1, null));
        }
        H0();
        View viewC0 = c0();
        if (viewC0 != null) {
            com.transsion.ad.strategy.h.f41183a.a(viewC0);
        }
    }

    public static final Unit G0(AbsBiddingActivity absBiddingActivity, View it) {
        Intrinsics.h(it, "it");
        absBiddingActivity.V();
        return Unit.f64096a;
    }

    private final void H0() {
        int i10;
        FrameLayout frameLayoutP0 = p0();
        if (frameLayoutP0 != null) {
            AdMaterialList mAdMaterialList = getMAdMaterialList();
            if (Intrinsics.c(mAdMaterialList != null ? mAdMaterialList.getType() : null, AdMaterialList.NON_AD_TYPE_TEXT)) {
                i10 = 8;
            } else {
                final AppCompatImageView appCompatImageView = new AppCompatImageView(this);
                appCompatImageView.setImageResource(R$mipmap.ad_volumeoff);
                frameLayoutP0.removeAllViews();
                frameLayoutP0.addView(appCompatImageView, -1, -1);
                frameLayoutP0.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        AbsBiddingActivity.I0(this.f40870a, appCompatImageView, view);
                    }
                });
                i10 = 0;
            }
            frameLayoutP0.setVisibility(i10);
        }
    }

    public static final void I0(AbsBiddingActivity absBiddingActivity, AppCompatImageView appCompatImageView, View view) {
        if (absBiddingActivity.A0()) {
            appCompatImageView.setImageResource(R$mipmap.ad_volumeoff);
        } else {
            appCompatImageView.setImageResource(R$mipmap.ad_volumeon);
        }
    }

    private final void J0() {
        w0();
        if (this.countDownTimes >= 0) {
            this.mHandler.postDelayed(this.countdownRunnable, 1000L);
        }
    }

    private final void W() {
        Intent intent = new Intent(getIntent().getStringExtra("action_close"));
        intent.putExtra("ad_max_ecpm_object", this.maxEcpmObject);
        r1.a.b(this).d(intent);
    }

    public static final void Z(AbsBiddingActivity absBiddingActivity) {
        absBiddingActivity.y0(absBiddingActivity.countDownTimes);
        xh.b.a.c(absBiddingActivity, 3, "countdownRunnable() --> times = " + absBiddingActivity.g0() + " --> i = " + absBiddingActivity.countDownTimes, null, false, 4, null);
        if (absBiddingActivity.countDownTimes == 0) {
            absBiddingActivity.r0();
        }
        absBiddingActivity.countDownTimes--;
        absBiddingActivity.J0();
    }

    private final com.transsion.player.orplayer.f getMOrPlayer() {
        return this.mOrPlayer;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a7  */
    private final void q0() {
        Object objM453constructorimpl;
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBean;
        List<AdMaterialList> adMaterialList;
        List<AdMaterialList> adMaterialList2;
        Unit unit;
        Set<String> setKeySet;
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intent = getIntent();
            AdMaterialList adMaterialList3 = null;
            this.mSceneId = intent != null ? intent.getStringExtra("scene_id") : null;
            Intent intent2 = getIntent();
            this.mAppLayoutId = intent2 != null ? intent2.getIntExtra("app_layout_id", 0) : 0;
            try {
                Intent intent3 = getIntent();
                Bundle extras = intent3 != null ? intent3.getExtras() : null;
                if (extras == null || (setKeySet = extras.keySet()) == null) {
                    unit = null;
                } else {
                    for (String str : setKeySet) {
                        Object obj = extras.get(str);
                        onLog(6, "处理 FM Parcelable 异常 --> Bundle key = " + str + ", valueClass = " + (obj != null ? obj.getClass().getName() : null), "parcelable", false);
                    }
                    unit = Unit.f64096a;
                }
                Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
            if (Build.VERSION.SDK_INT >= 33) {
                Intent intent4 = getIntent();
                if (intent4 != null) {
                    biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) intent4.getParcelableExtra("ad_max_ecpm_object", BiddingIntermediateMaterialBean.class);
                } else {
                    biddingIntermediateMaterialBean = null;
                }
            } else {
                Intent intent5 = getIntent();
                if (intent5 != null) {
                    biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) intent5.getParcelableExtra("ad_max_ecpm_object");
                } else {
                    biddingIntermediateMaterialBean = null;
                }
            }
            this.maxEcpmObject = biddingIntermediateMaterialBean;
            AdPlans plans = biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null;
            this.mAdPlan = plans;
            if (plans != null && (adMaterialList = plans.getAdMaterialList()) != null && (!adMaterialList.isEmpty())) {
                AdPlans adPlans = this.mAdPlan;
                if (adPlans != null && (adMaterialList2 = adPlans.getAdMaterialList()) != null) {
                    adMaterialList3 = adMaterialList2.get(0);
                }
                this.mAdMaterialList = adMaterialList3;
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th3) {
            Result.Companion companion3 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th3));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        xh.b.a.c(this, 6, "initExtData() --> it = " + thM456exceptionOrNullimpl.getMessage(), null, false, 12, null);
    }

    private final void s0() {
        getOnBackPressedDispatcher().i(this, new a());
    }

    public final void u0(final String errorMsg) {
        FrameLayout frameLayoutJ0 = j0();
        if (frameLayoutJ0 != null) {
            frameLayoutJ0.post(new Runnable() {
                @Override
                public final void run() {
                    AbsBiddingActivity.v0(this.f40868a, errorMsg);
                }
            });
        }
    }

    public static final void v0(AbsBiddingActivity absBiddingActivity, String str) {
        Intent intent = new Intent(absBiddingActivity.getIntent().getStringExtra("show_error"));
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = absBiddingActivity.maxEcpmObject;
        if (biddingIntermediateMaterialBean != null) {
            biddingIntermediateMaterialBean.setErrorMsg(str);
        }
        intent.putExtra("ad_max_ecpm_object", absBiddingActivity.maxEcpmObject);
        r1.a.b(absBiddingActivity).d(intent);
        absBiddingActivity.b0();
    }

    private final void w0() {
        this.mHandler.removeCallbacksAndMessages(null);
    }

    private final void x0() {
        AdMaterialList mAdMaterialList;
        MbAdVideo video;
        String path;
        AdMaterialList mAdMaterialList2;
        MbAdVideo video2;
        MbAdVideo video3;
        FrameLayout frameLayoutJ0 = j0();
        if (frameLayoutJ0 == null) {
            u0("视频广告容器为空");
            return;
        }
        TextureView textureView = new TextureView(this);
        int i10 = 0;
        com.transsion.player.orplayer.f fVarA = new com.transsion.player.orplayer.f.a(this).b(new hn.d(null, false, 0, 0, 0, 0, 0, 0, 0L, i10, i10, false, true, false, false, false, null, 94207, null)).a();
        fVarA.setMute(m0());
        fVarA.setTextureView(textureView);
        fVarA.setLooping(i0());
        fVarA.setPlayerListener(this);
        this.mOrPlayer = fVarA;
        AdMaterialList mAdMaterialList3 = getMAdMaterialList();
        String str = (!TextUtils.isEmpty((mAdMaterialList3 == null || (video3 = mAdMaterialList3.getVideo()) == null) ? null : video3.getPath()) ? !((mAdMaterialList = getMAdMaterialList()) == null || (video = mAdMaterialList.getVideo()) == null || (path = video.getPath()) == null) : !((mAdMaterialList2 = getMAdMaterialList()) == null || (video2 = mAdMaterialList2.getVideo()) == null || (path = video2.getUrl()) == null)) ? "" : path;
        com.transsion.player.orplayer.f fVar = this.mOrPlayer;
        if (fVar != null) {
            fVar.setDataSource(new gn.e(str, str, 0, null, null, 28, null));
        }
        com.transsion.player.orplayer.f fVar2 = this.mOrPlayer;
        if (fVar2 != null) {
            fVar2.prepare();
        }
        frameLayoutJ0.addView(textureView, new ViewGroup.LayoutParams(-1, -1));
    }

    private final void z0() {
        if (this.displayTimestamp > 0) {
            Intent intent = new Intent(getIntent().getStringExtra("action_display_timestamp"));
            intent.putExtra("ad_max_ecpm_object", this.maxEcpmObject);
            intent.putExtra("display_timestamp", SystemClock.elapsedRealtime() - this.displayTimestamp);
            r1.a.b(this).d(intent);
            this.displayTimestamp = 0L;
        }
    }

    public void B0() {
        if (Build.VERSION.SDK_INT != 26) {
            setRequestedOrientation(1);
        }
    }

    public final void C0(boolean isShow) {
        if (isShow) {
            com.transsion.player.orplayer.f mOrPlayer = getMOrPlayer();
            if (mOrPlayer != null) {
                mOrPlayer.pause();
            }
            w0();
            return;
        }
        com.transsion.player.orplayer.f mOrPlayer2 = getMOrPlayer();
        if (mOrPlayer2 != null) {
            mOrPlayer2.play();
        }
        J0();
    }

    public abstract void D0();

    public final void K0() {
        rh.a aVarD;
        MBAd.a aVarB = MBAd.f40749a.b();
        if (aVarB == null || (aVarD = aVarB.d()) == null) {
            return;
        }
        aVarD.c(getMSceneId());
    }

    public void L0(ImmersionBar with) {
        Intrinsics.h(with, "with");
    }

    public final void V() {
        Intent intent = new Intent(getIntent().getStringExtra("action_click"));
        intent.putExtra("ad_max_ecpm_object", this.maxEcpmObject);
        r1.a.b(this).d(intent);
    }

    public final void X() {
        Intent intent = new Intent(getIntent().getStringExtra("action_resume"));
        intent.putExtra("ad_max_ecpm_object", this.maxEcpmObject);
        r1.a.b(this).d(intent);
    }

    public final void Y() {
        Intent intent = new Intent(getIntent().getStringExtra("action_rewarded"));
        intent.putExtra("ad_max_ecpm_object", this.maxEcpmObject);
        r1.a.b(this).d(intent);
    }

    public final void a0() {
        Intent intent = new Intent(getIntent().getStringExtra("action_display"));
        intent.putExtra("ad_max_ecpm_object", this.maxEcpmObject);
        r1.a.b(this).d(intent);
    }

    public final void b0() {
        finish();
    }

    public abstract View c0();

    public final AdMaterialList getMAdMaterialList() {
        return this.mAdMaterialList;
    }

    public final AdPlans getMAdPlan() {
        return this.mAdPlan;
    }

    public final int getMAppLayoutId() {
        return this.mAppLayoutId;
    }

    public abstract int g0();

    @Override
    public String getClassTag() {
        return xh.b.a.a(this);
    }

    @Override
    public String getMSceneId() {
        String str = this.mSceneId;
        return str == null ? "" : str;
    }

    @Override
    public double getVisibilityThreshold() {
        return com.transsion.ad.strategy.t.a.C0570a.a(this);
    }

    @Override
    public View getVisibilityView() {
        return j0();
    }

    public final int h0() {
        return com.transsion.ad.scene.a.f41152a.e(getMSceneId());
    }

    public boolean i0() {
        return true;
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
    }

    public abstract FrameLayout j0();

    public abstract View k0();

    public abstract View l0();

    public boolean m0() {
        return true;
    }

    public abstract View o0();

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.player.orplayer.e.a.c(this, eVar);
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.e(this, mediaSource);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        B0();
        super.onCreate(savedInstanceState);
        ImmersionBar immersionBarWith = ImmersionBar.with(this);
        immersionBarWith.statusBarAlpha(0.0f);
        Intrinsics.e(immersionBarWith);
        L0(immersionBarWith);
        immersionBarWith.init();
        setContentView(o0());
        getWindow().setLayout(-1, -1);
        setFinishOnTouchOutside(false);
        q0();
        if (getMAdPlan() == null || TextUtils.isEmpty(getMSceneId())) {
            u0("onCreate() --> 开始展示广告 --> getAdPlan() == null || getSceneId() is empty");
            return;
        }
        xh.b.a.c(this, 3, "onCreate() --> 开始展示广告", null, false, 4, null);
        this.countDownTimes = g0();
        com.transsion.ad.strategy.t.f41188a.j(this);
        D0();
        F0();
        s0();
        Intent intent = getIntent();
        Boolean boolValueOf = intent != null ? Boolean.valueOf(intent.getBooleanExtra("is_show_member_btn", true)) : null;
        if (boolValueOf == null || !(!boolValueOf.booleanValue())) {
            return;
        }
        View viewK0 = k0();
        if (viewK0 != null) {
            viewK0.setVisibility(8);
        }
        View viewL0 = l0();
        if (viewL0 != null) {
            viewL0.setVisibility(8);
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
        com.transsion.ad.strategy.t.f41188a.v(this);
        com.transsion.player.orplayer.f mOrPlayer = getMOrPlayer();
        if (mOrPlayer != null) {
            mOrPlayer.release();
        }
        z0();
        W();
    }

    @Override
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.e.a.g(this, z10);
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.e.a.h(this, z10);
    }

    @Override
    public void onLoadingBegin(gn.e eVar) {
        com.transsion.player.orplayer.e.a.i(this, eVar);
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        com.transsion.player.orplayer.e.a.k(this, eVar);
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLog(int i10, String str, String str2, boolean z10) {
        xh.b.a.b(this, i10, str, str2, z10);
    }

    @Override
    public void onLoopingStart() {
        com.transsion.player.orplayer.e.a.o(this);
    }

    @Override
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.e.a.p(this, str);
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.e.a.q(this, errorInfo, mediaSource);
        u0(errorInfo.getErrorMessage());
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        com.transsion.player.orplayer.e.a.t(this, eVar);
    }

    @Override
    public void onPlayerReset() {
        com.transsion.player.orplayer.e.a.v(this);
    }

    @Override
    public void onPrepare(gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.w(this, mediaSource);
        com.transsion.player.orplayer.f mOrPlayer = getMOrPlayer();
        if (mOrPlayer != null) {
            mOrPlayer.play();
        }
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.y(this, j10, eVar);
    }

    @Override
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.e.a.A(this);
        this.isAdMaterialShow.set(true);
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (com.transsion.ad.scene.c.f41154a.d(this.mSceneId)) {
            xh.b.a.c(this, 0, "onResume() --> 重新进入页面的时候需要校验一下，isVipSkipAd == true", null, false, 13, null);
            finish();
        }
    }

    @Override
    public void onSetDataSource() {
        com.transsion.player.orplayer.e.a.B(this);
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.C(this, i10);
    }

    @Override
    public void onTracksChange(qn.c cVar) {
        com.transsion.player.orplayer.e.a.D(this, cVar);
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.E(this, i10);
    }

    @Override
    public void onVideoPause(gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.F(this, mediaSource);
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        com.transsion.player.orplayer.e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.I(this, mediaSource);
    }

    @Override
    public void onVisibilityChanged(boolean isVisible) {
        com.transsion.player.orplayer.f mOrPlayer;
        if (!this.isInScreen && isVisible) {
            X();
        }
        this.isInScreen = isVisible;
        if (!isVisible) {
            com.transsion.player.orplayer.f mOrPlayer2 = getMOrPlayer();
            if (mOrPlayer2 != null) {
                mOrPlayer2.pause();
            }
            z0();
            w0();
            return;
        }
        if (this.displayTimestamp == 0) {
            this.displayTimestamp = SystemClock.elapsedRealtime();
            J0();
        }
        com.transsion.player.orplayer.f mOrPlayer3 = getMOrPlayer();
        if (mOrPlayer3 != null && !mOrPlayer3.isPlaying() && (mOrPlayer = getMOrPlayer()) != null) {
            mOrPlayer.play();
        }
        if (this.isReportAdDisplay.get() || !this.isAdMaterialShow.get()) {
            return;
        }
        this.isReportAdDisplay.set(true);
        a0();
    }

    public abstract FrameLayout p0();

    public abstract void r0();

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
    }

    public void t0(AppCompatImageView imageView, Integer width, Integer height) {
    }

    public abstract void y0(int i10);
}
