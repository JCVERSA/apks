package com.transsion.baseui.music;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.a0;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.therouter.TheRouter;
import com.transsion.baseui.R$anim;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.R$layout;
import com.transsion.baseui.activity.BaseMusicFloatActivity;
import com.transsion.player.mediasession.MediaItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0017\u0010\u0011J\u0017\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001c\u0010\u001bJ\u0015\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\u000f¢\u0006\u0004\b!\u0010\u0011R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010(\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00109\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108¨\u0006:"}, d2 = {"Lcom/transsion/baseui/music/MusicFloatView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "getClassTag", "()Ljava/lang/String;", "", "l", "()V", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/player/mediasession/MediaItem;", "mediaItem", "t", "(Lcom/transsion/player/mediasession/MediaItem;)V", "w", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "z", "(Landroid/view/View;)V", "y", "", "isExpand", "setExpand", "(Z)V", ToolBar.REFRESH, "Ljj/f;", "a", "Ljj/f;", "binding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "lastCoverUrl", "Ljava/lang/Runnable;", "c", "Ljava/lang/Runnable;", "refreshTimedTask", "Landroid/os/Handler;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "getMHandler", "()Landroid/os/Handler;", "mHandler", "", "e", "J", NotificationCompat.CATEGORY_PROGRESS, "f", "I", "count", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MusicFloatView extends FrameLayout {
    public static final int $stable = 8;

    private final jj.f binding;

    private String lastCoverUrl;

    private final Runnable refreshTimedTask;

    private final Lazy mHandler;

    private long progress;

    private int count;

    public static final class a implements androidx.p009lifecycle.f {
        a() {
        }

        @Override
        public void onCreate(u uVar) {
            androidx.p009lifecycle.e.a(this, uVar);
        }

        @Override
        public void onDestroy(u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.b(this, owner);
            owner.getLifecycle().d(this);
            MusicFloatView.this.getMHandler().removeCallbacksAndMessages(null);
        }

        @Override
        public void onPause(u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.c(this, owner);
            MusicFloatView.this.getMHandler().removeCallbacks(MusicFloatView.this.refreshTimedTask);
        }

        @Override
        public void onResume(u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.d(this, owner);
            MusicFloatView.this.refresh();
        }

        @Override
        public void onStart(u uVar) {
            androidx.p009lifecycle.e.e(this, uVar);
        }

        @Override
        public void onStop(u uVar) {
            androidx.p009lifecycle.e.f(this, uVar);
        }
    }

    public static final class b implements Animation.AnimationListener {

        final View f42299a;

        final MusicFloatView f42300b;

        b(View view, MusicFloatView musicFloatView) {
            this.f42299a = view;
            this.f42300b = musicFloatView;
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            this.f42299a.setVisibility(8);
            RoundedCornerLayout roundFold = this.f42300b.binding.f63160h;
            Intrinsics.g(roundFold, "roundFold");
            uf.c.k(roundFold);
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }

    public static final class c implements Animation.AnimationListener {
        c() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MusicFloatView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    private final String getClassTag() {
        String simpleName = MusicFloatView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final Handler getMHandler() {
        return (Handler) this.mHandler.getValue();
    }

    private final void k() {
        Lifecycle lifecycle;
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycle = appCompatActivity.getLifecycle()) == null) {
            return;
        }
        lifecycle.a(new a());
    }

    private final void l() {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        RoundedCornerLayout roundedCornerLayout;
        this.binding.f63160h.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MusicFloatView.m(this.f42311a, view);
            }
        });
        jj.f fVar = this.binding;
        if (fVar != null && (roundedCornerLayout = fVar.f63159g) != null) {
            roundedCornerLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MusicFloatView.n(view);
                }
            });
        }
        jj.f fVar2 = this.binding;
        if (fVar2 != null && (appCompatImageView2 = fVar2.f63154b) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MusicFloatView.o(this.f42312a, view);
                }
            });
        }
        jj.f fVar3 = this.binding;
        if (fVar3 == null || (appCompatImageView = fVar3.f63157e) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MusicFloatView.q(this.f42313a, view);
            }
        });
    }

    public static final void m(MusicFloatView musicFloatView, View view) {
        musicFloatView.setExpand(true);
        musicFloatView.w();
    }

    public static final void n(View view) {
        Intent clickIntent;
        MediaItem mediaItemQ = MusicFloatManager.f42282h.b().q();
        if (mediaItemQ == null || (clickIntent = mediaItemQ.getClickIntent()) == null) {
            return;
        }
        clickIntent.addFlags(ASTNode.DEOP);
        String stringExtra = clickIntent.getStringExtra("path");
        String stringExtra2 = clickIntent.getStringExtra("id");
        String stringExtra3 = clickIntent.getStringExtra("resource_id");
        String stringExtra4 = clickIntent.getStringExtra("collection_id");
        String stringExtra5 = clickIntent.getStringExtra("extra_local_path");
        boolean booleanExtra = clickIntent.getBooleanExtra("isMusicLikedFragment", false);
        Log.e("m_d_log", "initListener -->  path = " + stringExtra + " -- id = " + stringExtra2 + " -- isMusicLikedFragment = " + booleanExtra);
        ij.k.p(TheRouter.c(stringExtra).K("id", stringExtra2).z("is_music_liked_fragment", booleanExtra).K("resource_id", stringExtra3).K("extra_local_path", stringExtra5).K("collection_id", stringExtra4).z("isMusicFloatViewClick", true));
    }

    public static final void o(final MusicFloatView musicFloatView, View view) {
        MusicFloatManager.a aVar = MusicFloatManager.f42282h;
        com.transsion.player.orplayer.f fVarS = aVar.b().s();
        if (fVarS != null) {
            fVarS.pause();
        }
        aVar.b().B(null);
        musicFloatView.setVisibility(8);
        musicFloatView.lastCoverUrl = "";
        musicFloatView.post(new Runnable() {
            @Override
            public final void run() {
                MusicFloatView.p(this.f42316a);
            }
        });
        com.transsion.player.mediasession.h.f46423a.p();
    }

    public static final void p(MusicFloatView musicFloatView) {
        Context context = musicFloatView.getContext();
        BaseMusicFloatActivity baseMusicFloatActivity = context instanceof BaseMusicFloatActivity ? (BaseMusicFloatActivity) context : null;
        if (baseMusicFloatActivity != null) {
            baseMusicFloatActivity.onCloseMusicFloating();
        }
    }

    public static final void q(final MusicFloatView musicFloatView, View view) {
        com.transsion.baseui.util.d.b(0L, new Function0() {
            @Override
            public final Object invoke() {
                return MusicFloatView.r(this.f42315a);
            }
        }, 1, null);
    }

    public static final Unit r(final MusicFloatView musicFloatView) {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        musicFloatView.w();
        com.transsion.player.orplayer.f fVarS = MusicFloatManager.f42282h.b().s();
        if (fVarS == null || !fVarS.isPlaying()) {
            jj.f fVar = musicFloatView.binding;
            if (fVar != null && (appCompatImageView = fVar.f63157e) != null) {
                appCompatImageView.setImageResource(R$drawable.music_float_play);
            }
            if (fVarS != null && fVarS.isComplete()) {
                fVarS.seekTo(0L);
            }
            if (fVarS != null) {
                fVarS.play();
            }
        } else {
            jj.f fVar2 = musicFloatView.binding;
            if (fVar2 != null && (appCompatImageView2 = fVar2.f63157e) != null) {
                appCompatImageView2.setImageResource(R$drawable.music_float_pause);
            }
            fVarS.pause();
        }
        musicFloatView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                MusicFloatView.s(this.f42317a);
            }
        }, 200L);
        return Unit.f64096a;
    }

    public static final void s(MusicFloatView musicFloatView) {
        musicFloatView.refresh();
    }

    private final void t(MediaItem mediaItem) {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        jj.f fVar;
        AppCompatTextView appCompatTextView;
        Long position = mediaItem.getPosition();
        long jLongValue = position != null ? position.longValue() : 0L;
        if (jLongValue != this.progress) {
            this.progress = jLongValue;
            this.count = 0;
        } else {
            this.count++;
        }
        if (!TextUtils.isEmpty(mediaItem.getTitle()) && (fVar = this.binding) != null && (appCompatTextView = fVar.f63162j) != null) {
            appCompatTextView.setText(mediaItem.getTitle());
        }
        Long duration = mediaItem.getDuration();
        long jLongValue2 = duration != null ? duration.longValue() : 0L;
        Long position2 = mediaItem.getPosition();
        long jLongValue3 = position2 != null ? position2.longValue() : 0L;
        if (jLongValue2 > 0) {
            this.binding.f63158f.setProgress((int) ((jLongValue3 * 10000.0f) / jLongValue2));
        }
        if (!TextUtils.equals(this.lastCoverUrl, mediaItem.getCoverUrl())) {
            this.lastCoverUrl = mediaItem.getCoverUrl();
            AppCompatImageView appCompatImageView3 = this.binding.f63155c;
            ni.f.a aVar = ni.f.f67269a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            ni.f.b bVarM = aVar.m(context);
            String coverUrl = mediaItem.getCoverUrl();
            if (coverUrl == null) {
                coverUrl = "";
            }
            ni.f.b bVarM2 = bVarM.g(coverUrl).m(a0.a(44.0f));
            Intrinsics.e(appCompatImageView3);
            bVarM2.d(appCompatImageView3);
        }
        com.transsion.player.orplayer.f fVarS = MusicFloatManager.f42282h.b().s();
        if (fVarS == null || !fVarS.isPlaying()) {
            jj.f fVar2 = this.binding;
            if (fVar2 != null && (appCompatImageView = fVar2.f63157e) != null) {
                appCompatImageView.setImageResource(R$drawable.music_float_pause);
            }
        } else {
            jj.f fVar3 = this.binding;
            if (fVar3 != null && (appCompatImageView2 = fVar3.f63157e) != null) {
                appCompatImageView2.setImageResource(R$drawable.music_float_play);
            }
        }
        getMHandler().removeCallbacks(this.refreshTimedTask);
        getMHandler().postDelayed(this.refreshTimedTask, 1000L);
    }

    public static final Handler u() {
        return new Handler(Looper.getMainLooper());
    }

    public static final void v(MusicFloatView musicFloatView) {
        musicFloatView.refresh();
    }

    private final void w() {
        getMHandler().removeCallbacksAndMessages(null);
        getMHandler().postDelayed(new Runnable() {
            @Override
            public final void run() {
                MusicFloatView.x(this.f42314a);
            }
        }, 10000L);
    }

    public static final void x(MusicFloatView musicFloatView) {
        musicFloatView.setExpand(false);
    }

    private final void y(View view) {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R$anim.music_slide_left);
        animationLoadAnimation.setAnimationListener(new b(view, this));
        view.startAnimation(animationLoadAnimation);
    }

    private final void z(View view) {
        view.setVisibility(0);
        RoundedCornerLayout roundFold = this.binding.f63160h;
        Intrinsics.g(roundFold, "roundFold");
        uf.c.g(roundFold);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R$anim.music_slide_right);
        animationLoadAnimation.setAnimationListener(new c());
        view.startAnimation(animationLoadAnimation);
    }

    public final void refresh() {
        MediaItem mediaItemQ = MusicFloatManager.f42282h.b().q();
        if (mediaItemQ == null) {
            com.transsion.player.mediasession.i.f46432a.a(getClassTag() + " --> refresh() --> musicFloatBean == null --> 没有数据不展示UI");
            setVisibility(8);
            return;
        }
        if (!Intrinsics.c(mediaItemQ.isMusic(), Boolean.FALSE)) {
            mediaItemQ.setPageName("music_float");
            setVisibility(0);
            t(mediaItemQ);
            return;
        }
        com.transsion.player.mediasession.i.f46432a.a(getClassTag() + " --> refresh() --> musicFloatBean.isMusic == false --> 当前不是Music类型，不展示悬浮窗");
        setVisibility(8);
    }

    public final void setExpand(boolean isExpand) {
        MusicFloatManager.f42282h.b().A(isExpand);
        if (isExpand) {
            RoundedCornerLayout roundExpand = this.binding.f63159g;
            Intrinsics.g(roundExpand, "roundExpand");
            z(roundExpand);
        } else {
            RoundedCornerLayout roundExpand2 = this.binding.f63159g;
            Intrinsics.g(roundExpand2, "roundExpand");
            y(roundExpand2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MusicFloatView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MusicFloatView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.lastCoverUrl = "";
        this.refreshTimedTask = new Runnable() {
            @Override
            public final void run() {
                MusicFloatView.v(this.f42310a);
            }
        };
        this.mHandler = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MusicFloatView.u();
            }
        });
        jj.f fVarA = jj.f.a(LayoutInflater.from(getContext()).inflate(R$layout.music_float_layout, (ViewGroup) this, true));
        Intrinsics.g(fVarA, "bind(...)");
        this.binding = fVarA;
        setExpand(MusicFloatManager.f42282h.b().v());
        l();
        k();
        w();
    }
}
