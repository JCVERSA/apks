package com.transsion.videofloat.manager;

import android.R;
import android.app.Application;
import android.app.PendingIntent;
import android.app.PictureInPictureParams;
import android.app.RemoteAction;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.PowerManager;
import android.util.Rational;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.permissionx.guolindev.callback.PermissionDialogClickType;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.videofloat.R$mipmap;
import com.transsion.videofloat.R$string;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsion.videofloat.dialog.VideoFloatPermissionDialog;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class VideoPipManagerImp implements cw.e {

    public static final a f55737v = new a(null);

    private FragmentActivity f55739c;

    private dw.a f55740d;

    private PowerManager.WakeLock f55741e;

    private com.transsion.player.orplayer.f f55742f;

    private ORPlayerView f55743g;

    private ViewGroup f55744h;

    private ViewGroup f55745i;

    private ViewGroup f55746j;

    private Rect f55748l;

    private int f55749m;

    private boolean f55750n;

    private boolean f55751o;

    private b f55752p;

    private boolean f55753q;

    private boolean f55754r;

    private boolean f55756t;

    private final String f55738b = VideoPipManagerImp.class.getSimpleName();

    private float f55747k = 16.0f;

    private final VideoPipManagerImp$pipActionReceiver$1 f55755s = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.v(c0922a, "VideoFloat-pip", this.f55762a.f55738b + " --pipActionReceiver action:" + (intent != null ? intent.getAction() : null), false, 4, null);
            if (intent == null || !Intrinsics.c(intent.getAction(), "pip_action_control")) {
                return;
            }
            int intExtra = intent.getIntExtra("control_type", 0);
            wf.a.C0922a.r(c0922a, "VideoFloat-pip", new String[]{this.f55762a.f55738b + " --pipActionReceiver controlType:" + intExtra}, false, 4, null);
            if (intExtra == 1) {
                this.f55762a.M();
            } else if (intExtra == 2) {
                this.f55762a.H(true);
            } else {
                if (intExtra != 3) {
                    return;
                }
                this.f55762a.H(false);
            }
        }
    };

    private boolean f55757u = true;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final class b extends BroadcastReceiver {

        private final Function1 f55758a;

        private boolean f55759b;

        final VideoPipManagerImp f55760c;

        public b(VideoPipManagerImp videoPipManagerImp, Function1 callback) {
            Intrinsics.h(callback, "callback");
            this.f55760c = videoPipManagerImp;
            this.f55758a = callback;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            Intrinsics.h(context, "context");
            Intrinsics.h(intent, "intent");
            String action = intent.getAction();
            if (action != null) {
                int iHashCode = action.hashCode();
                if (iHashCode == -2128145023) {
                    if (action.equals("android.intent.action.SCREEN_OFF")) {
                        this.f55759b = true;
                        this.f55758a.invoke(Boolean.TRUE);
                        wf.a.C0922a.f(wf.a.f74274a, "CommonInfo", "Screen off", false, 4, null);
                        return;
                    }
                    return;
                }
                if (iHashCode == 823795052 && action.equals("android.intent.action.USER_PRESENT")) {
                    this.f55759b = false;
                    this.f55758a.invoke(Boolean.FALSE);
                    wf.a.C0922a.f(wf.a.f74274a, "CommonInfo", "User present", false, 4, null);
                }
            }
        }
    }

    public class c {

        public static final int[] f55761a;

        static {
            int[] iArr = new int[FloatActionType.values().length];
            try {
                iArr[FloatActionType.ICON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FloatActionType.BACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FloatActionType.HOME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f55761a = iArr;
        }
    }

    private final RemoteAction D(Context context, int i10, int i11, int i12, int i13) {
        n.a();
        return m.a(Icon.createWithResource(context, i10), Utils.a().getString(i11), Utils.a().getString(i11), PendingIntent.getBroadcast(context, i12, new Intent("pip_action_control").putExtra("control_type", i13), 67108864));
    }

    public static final Unit E(VideoPipManagerImp videoPipManagerImp, FragmentActivity fragmentActivity, dw.a aVar, FloatActionType floatActionType, boolean z10) {
        if (z10) {
            videoPipManagerImp.F(fragmentActivity, aVar, floatActionType);
        }
        return Unit.f64096a;
    }

    private final void F(FragmentActivity fragmentActivity, dw.a aVar, FloatActionType floatActionType) {
        Object objM453constructorimpl;
        FragmentActivity fragmentActivity2;
        this.f55754r = false;
        if (this.f55750n && fragmentActivity.isInPictureInPictureMode()) {
            wf.a.f74274a.u("VideoFloat-pip", this.f55738b + " enterPip--- 已经进入，无需重复调用}", true);
            return;
        }
        if (floatActionType != FloatActionType.ICON && !Intrinsics.c(fragmentActivity, this.f55739c)) {
            String simpleName = fragmentActivity.getClass().getSimpleName();
            FragmentActivity fragmentActivity3 = this.f55739c;
            if (Intrinsics.c(simpleName, fragmentActivity3 != null ? fragmentActivity3.getClass().getSimpleName() : null)) {
                wf.a.f74274a.u("VideoFloat-pip", this.f55738b + " 不是相同页面, pip activity:" + this.f55739c + ", cur activity:" + fragmentActivity, true);
                if (floatActionType == FloatActionType.BACK) {
                    aVar.f().release();
                    fragmentActivity.finish();
                    return;
                }
                return;
            }
        }
        FloatActionType floatActionType2 = FloatActionType.HOME;
        if (floatActionType != floatActionType2 && (fragmentActivity2 = this.f55739c) != null && !Intrinsics.c(fragmentActivity, fragmentActivity2)) {
            wf.a.f74274a.u("VideoFloat-pip", this.f55738b + " 主动进入的，不是同一个activity，需要关闭上一个pip", true);
            this.f55750n = false;
            cw.e.b.b(this, null, 1, null);
            com.transsion.player.orplayer.f fVar = this.f55742f;
            if (fVar != null) {
                fVar.release();
            }
            this.f55742f = null;
            G();
        }
        this.f55742f = null;
        this.f55743g = null;
        this.f55744h = null;
        this.f55739c = fragmentActivity;
        this.f55740d = aVar;
        N();
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.u("VideoFloat-pip", this.f55738b + " enterPip---, isPlaying:" + aVar.f().isPlaying(), true);
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f55742f = aVar.f();
            this.f55743g = aVar.l();
            c0922a.c("VideoFloat-pip", "1------enterPictureInPictureMode ----", true);
            this.f55744h = aVar.u();
            if (!this.f55751o) {
                this.f55751o = true;
                ViewGroup viewGroupU = aVar.u();
                ViewParent parent = viewGroupU != null ? viewGroupU.getParent() : null;
                this.f55745i = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                ViewParent parent2 = aVar.l().getParent();
                this.f55746j = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
            }
            if (Build.VERSION.SDK_INT < 31 || floatActionType != floatActionType2) {
                PictureInPictureParams pictureInPictureParamsA = a(fragmentActivity, aVar.i() == FloatPlayType.SHORT_TV, aVar.f().isPlaying(), this.f55746j);
                if (pictureInPictureParamsA != null) {
                    fragmentActivity.enterPictureInPictureMode(pictureInPictureParamsA);
                }
                c0922a.i("VideoFloat-pip", "enterPipNext ----", true);
                K(fragmentActivity);
            } else {
                c0922a.i("VideoFloat-pip", " >=android12 ---2 wait auto into", true);
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.f74274a.i("VideoFloat-pip", this.f55738b + " error:" + thM456exceptionOrNullimpl + "}", true);
            L();
        }
    }

    public final void G() {
        KeyEventDispatcher.Component component = this.f55739c;
        if (component instanceof com.transsion.videofloat.manager.c) {
            Intrinsics.f(component, "null cannot be cast to non-null type com.transsion.videofloat.manager.IVideoPipView");
            ((com.transsion.videofloat.manager.c) component).h();
        }
        PowerManager.WakeLock wakeLock = this.f55741e;
        if (wakeLock != null) {
            wakeLock.release();
        }
        this.f55741e = null;
        FragmentActivity fragmentActivity = this.f55739c;
        if (fragmentActivity != null) {
            fragmentActivity.finish();
        }
        this.f55739c = null;
        this.f55751o = false;
    }

    public final void H(boolean z10) {
        long jF;
        wf.a.f74274a.u("VideoFloat-pip", this.f55738b + " -- forward :" + z10, true);
        if (z10) {
            com.transsion.player.orplayer.f fVar = this.f55742f;
            long currentPosition = (fVar != null ? fVar.getCurrentPosition() : 0L) + ((long) 10000);
            com.transsion.player.orplayer.f fVar2 = this.f55742f;
            jF = RangesKt.i(currentPosition, fVar2 != null ? fVar2.getDuration() : 0L);
        } else {
            com.transsion.player.orplayer.f fVar3 = this.f55742f;
            jF = RangesKt.f(0L, (fVar3 != null ? fVar3.getCurrentPosition() : 0L) - ((long) 10000));
        }
        com.transsion.player.orplayer.f fVar4 = this.f55742f;
        if (fVar4 != null) {
            fVar4.seekTo(jF);
        }
    }

    private final List I(FragmentActivity fragmentActivity, boolean z10) {
        RemoteAction[] remoteActionArr = new RemoteAction[3];
        remoteActionArr[0] = D(fragmentActivity, R$mipmap.video_float_ic_backward, R$string.video_pip_action_rewind, 13, 3);
        remoteActionArr[1] = z10 ? D(fragmentActivity, R$mipmap.video_float_ic_pause, R$string.video_pip_action_play, 11, 1) : D(fragmentActivity, R$mipmap.video_float_ic_play, R$string.video_pip_action_pause, 11, 1);
        remoteActionArr[2] = D(fragmentActivity, R$mipmap.video_float_ic_forward, R$string.video_pip_action_fast_forword, 12, 2);
        return CollectionsKt.o(remoteActionArr);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    private final boolean J() {
        boolean z10;
        String value;
        Integer numV;
        if (!this.f55756t) {
            ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "sa_pip_enable_memory", false, 2, null);
            int iIntValue = (configBeanD == null || (value = configBeanD.getValue()) == null || (numV = StringsKt.v(value)) == null) ? 4 : numV.intValue();
            if (iIntValue > 0) {
                tg.b bVar = tg.b.f72740a;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                z10 = ((double) bVar.k(applicationA).totalMem) > ((double) 1073741824) * ((double) iIntValue);
            }
            this.f55757u = z10;
        }
        return this.f55757u;
    }

    private final void K(FragmentActivity fragmentActivity) {
        View childAt;
        Unit unit;
        this.f55754r = false;
        if (this.f55750n) {
            return;
        }
        com.transsion.player.orplayer.f fVar = this.f55742f;
        if (fVar != null) {
            fVar.play();
        }
        this.f55750n = true;
        FrameLayout frameLayout = (FrameLayout) fragmentActivity.findViewById(R.id.content);
        R();
        if (this.f55743g == null) {
            wf.a.f74274a.i("VideoFloat-pip", "onEnterPip playerView is null", true);
            return;
        }
        Q(fragmentActivity);
        try {
            Result.Companion companion = Result.INSTANCE;
            wf.a.f74274a.c("VideoFloat-pip", "onEnterPip childCount：" + frameLayout.getChildCount(), true);
            View childAt2 = frameLayout.getChildAt(0);
            if (childAt2 != null) {
                uf.c.g(childAt2);
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        frameLayout.addView(this.f55743g, new FrameLayout.LayoutParams(-1, -1));
        ViewGroup viewGroup = this.f55744h;
        if (viewGroup != null) {
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            this.f55749m = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                ViewGroup viewGroup2 = this.f55744h;
                if (viewGroup2 != null && (childAt = viewGroup2.getChildAt(i10)) != null) {
                    SimpleSubtitleView simpleSubtitleView = childAt instanceof SimpleSubtitleView ? (SimpleSubtitleView) childAt : null;
                    if (simpleSubtitleView != null) {
                        this.f55747k = com.blankj.utilcode.util.a0.c(simpleSubtitleView.getTextSize());
                        this.f55748l = new Rect(simpleSubtitleView.getPaddingLeft(), simpleSubtitleView.getPaddingTop(), simpleSubtitleView.getPaddingRight(), simpleSubtitleView.getPaddingBottom());
                        ViewGroup.LayoutParams layoutParams2 = simpleSubtitleView.getLayoutParams();
                        layoutParams2.width = -1;
                        simpleSubtitleView.setLayoutParams(layoutParams2);
                        if (i10 == 1) {
                            simpleSubtitleView.setTextSize(0.0f);
                            simpleSubtitleView.setPadding(0, 0, 0, 0);
                        } else {
                            simpleSubtitleView.setTextSize(12.0f);
                            int iA = com.blankj.utilcode.util.a0.a(6.0f);
                            simpleSubtitleView.setPadding(iA, 0, iA, iA);
                        }
                    }
                }
            }
        }
        ViewGroup viewGroup3 = this.f55744h;
        if (viewGroup3 != null) {
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams3.gravity = 81;
            frameLayout.addView(viewGroup3, layoutParams3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d3  */
    /* JADX WARN: Instruction removed from duplicated block: B:42:0x00b3, please report this as an issue */
    private final void L() {
        dw.a aVar;
        Unit unit;
        View childAt;
        View childAt2;
        this.f55750n = false;
        this.f55751o = false;
        ViewGroup viewGroup = this.f55744h;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                ViewGroup viewGroup2 = this.f55744h;
                if (viewGroup2 != null && (childAt2 = viewGroup2.getChildAt(i10)) != null) {
                    SimpleSubtitleView simpleSubtitleView = childAt2 instanceof SimpleSubtitleView ? (SimpleSubtitleView) childAt2 : null;
                    if (simpleSubtitleView != null) {
                        simpleSubtitleView.setTextSize(this.f55747k);
                        Rect rect = this.f55748l;
                        if (rect != null) {
                            simpleSubtitleView.setPadding(rect.left, rect.top, rect.right, rect.bottom);
                        }
                    }
                }
            }
        }
        R();
        try {
            Result.Companion companion = Result.INSTANCE;
            FragmentActivity fragmentActivity = this.f55739c;
            FrameLayout frameLayout = fragmentActivity != null ? (FrameLayout) fragmentActivity.findViewById(R.id.content) : null;
            if (frameLayout == null || (childAt = frameLayout.getChildAt(0)) == null) {
                unit = null;
            } else {
                uf.c.k(childAt);
                unit = Unit.f64096a;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        cw.e.b.b(this, null, 1, null);
        FragmentActivity fragmentActivity2 = this.f55739c;
        if (fragmentActivity2 != null) {
            Intrinsics.e(fragmentActivity2);
            if (fragmentActivity2.getLifecycle().b().compareTo(Lifecycle.State.STARTED) < 0) {
                wf.a.f74274a.p("VideoFloat-pip", new String[]{this.f55738b + ", 用户主动关闭pip----关闭页面，释放播放器"}, true);
                com.transsion.player.orplayer.f fVar = this.f55742f;
                if (fVar != null) {
                    fVar.release();
                }
                this.f55742f = null;
                G();
            } else {
                wf.a.f74274a.p("VideoFloat-pip", new String[]{this.f55738b + ", 退出画中画返回页面"}, true);
                aVar = this.f55740d;
                if (aVar != null) {
                    S(aVar.r(), aVar.e(), aVar.h());
                }
            }
        } else {
            wf.a.f74274a.p("VideoFloat-pip", new String[]{this.f55738b + ", 退出画中画返回页面"}, true);
            aVar = this.f55740d;
            if (aVar != null) {
                S(aVar.r(), aVar.e(), aVar.h());
            }
        }
        wf.a.f74274a.p("VideoFloat-pip", new String[]{this.f55738b + ", onExitPip----" + this.f55746j}, true);
        ViewGroup viewGroup3 = this.f55746j;
        if (viewGroup3 != null) {
            viewGroup3.addView(this.f55743g);
        }
        if (this.f55744h != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = this.f55749m;
            ViewGroup viewGroup4 = this.f55745i;
            if (viewGroup4 != null) {
                viewGroup4.addView(this.f55744h, layoutParams);
            }
        }
        this.f55739c = null;
        this.f55742f = null;
        this.f55743g = null;
        this.f55744h = null;
        this.f55745i = null;
        this.f55746j = null;
        this.f55740d = null;
    }

    public final void M() {
        com.transsion.player.orplayer.f fVar;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.f55738b;
        com.transsion.player.orplayer.f fVar2 = this.f55742f;
        c0922a.u("VideoFloat-pip", str + " --onPlayOrPauseClick isPlaying:" + (fVar2 != null ? Boolean.valueOf(fVar2.isPlaying()) : null), true);
        com.transsion.player.orplayer.f fVar3 = this.f55742f;
        if (fVar3 != null && fVar3.isPlaying()) {
            this.f55753q = true;
            com.transsion.player.orplayer.f fVar4 = this.f55742f;
            if (fVar4 != null) {
                fVar4.pause();
                return;
            }
            return;
        }
        com.transsion.player.orplayer.f fVar5 = this.f55742f;
        if (fVar5 != null && fVar5.isComplete() && (fVar = this.f55742f) != null) {
            fVar.seekTo(0L);
        }
        this.f55753q = false;
        com.transsion.player.orplayer.f fVar6 = this.f55742f;
        if (fVar6 != null) {
            fVar6.play();
        }
    }

    private final void N() {
        try {
            Result.Companion companion = Result.INSTANCE;
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", this.f55738b + " start--registerReceiver", false, 4, null);
            Result.m453constructorimpl(Build.VERSION.SDK_INT >= 33 ? Utils.a().registerReceiver(this.f55755s, new IntentFilter("pip_action_control"), 2) : Utils.a().registerReceiver(this.f55755s, new IntentFilter("pip_action_control")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        O();
    }

    private final void O() {
        this.f55752p = new b(this, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoPipManagerImp.P(this.f55822a, ((Boolean) obj).booleanValue());
            }
        });
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m453constructorimpl(Build.VERSION.SDK_INT >= 33 ? Utils.a().registerReceiver(this.f55752p, intentFilter, 2) : Utils.a().registerReceiver(this.f55752p, intentFilter));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final Unit P(VideoPipManagerImp videoPipManagerImp, boolean z10) {
        com.transsion.player.orplayer.f fVar;
        if (z10) {
            com.transsion.player.orplayer.f fVar2 = videoPipManagerImp.f55742f;
            if (fVar2 != null) {
                fVar2.pause();
            }
        } else if (!videoPipManagerImp.f55753q && (fVar = videoPipManagerImp.f55742f) != null) {
            fVar.play();
        }
        return Unit.f64096a;
    }

    private final void Q(FragmentActivity fragmentActivity) {
        try {
            Result.Companion companion = Result.INSTANCE;
            List<Fragment> listY0 = fragmentActivity.getSupportFragmentManager().y0();
            Intrinsics.g(listY0, "getFragments(...)");
            for (Fragment fragment : listY0) {
                if (fragment instanceof DialogFragment) {
                    ((DialogFragment) fragment).dismissAllowingStateLoss();
                }
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void R() {
        ORPlayerView oRPlayerView = this.f55743g;
        ViewParent parent = oRPlayerView != null ? oRPlayerView.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.f55743g);
        }
        ViewGroup viewGroup2 = this.f55744h;
        ViewParent parent2 = viewGroup2 != null ? viewGroup2.getParent() : null;
        ViewGroup viewGroup3 = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
        if (viewGroup3 != null) {
            viewGroup3.removeView(this.f55744h);
        }
    }

    private final void S(String str, String str2, String str3) {
        HashMap map = new HashMap();
        map.put("subject_id", str);
        map.put(EventConstants.KEY_ACTION, "float_back_page");
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "pip_float_back");
        if (str2 == null) {
            str2 = "";
        }
        map.put("ops", str2);
        qi.h.f69682a.o(str3, map);
    }

    private final void T(boolean z10, String str, String str2, String str3) {
        HashMap map = new HashMap();
        map.put("subject_id", str);
        map.put(EventConstants.KEY_ACTION, z10 ? "allow" : "cancel");
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "pip_permission_dialog");
        map.put(WebConstants.PAGE_FROM, str3);
        if (str2 == null) {
            str2 = "";
        }
        map.put("ops", str2);
        qi.h.f69682a.o("pip_permission_dialog_pip", map);
    }

    private final void U(String str, String str2, String str3) {
        HashMap map = new HashMap();
        map.put("subject_id", str);
        map.put(WebConstants.PAGE_FROM, str3);
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "pip_permission_dialog");
        if (str2 == null) {
            str2 = "";
        }
        map.put("ops", str2);
        qi.h.f69682a.q("pip_permission_dialog_pip", "dialog_show", map);
    }

    private final void V(boolean z10) {
        HashMap map = new HashMap();
        map.put("has_permission", String.valueOf(z10));
        qi.h.f69682a.q("pip_opt", "app_perf", map);
    }

    private final void W(FragmentActivity fragmentActivity, final boolean z10, final String str, final String str2, final Function1 function1) {
        cf.c.f16930a.e(fragmentActivity).b("android.permission.PICTURE_IN_PICTURE").b().a(new df.b() {
            @Override
            public final void a(gf.f fVar, List list, boolean z11, boolean z12) {
                VideoPipManagerImp.X(z10, this, str2, str, fVar, list, z11, z12);
            }
        }).c(new df.a() {
            @Override
            public final void a(BaseDialog baseDialog, Boolean bool, PermissionDialogClickType permissionDialogClickType) {
                VideoPipManagerImp.Y(this.f55817a, str2, str, baseDialog, bool, permissionDialogClickType);
            }
        }).d(new df.c() {
            @Override
            public final void a(boolean z11, List list, List list2) {
                VideoPipManagerImp.Z(this.f55820a, function1, z11, list, list2);
            }
        });
    }

    public static final void X(boolean z10, VideoPipManagerImp videoPipManagerImp, String str, String str2, gf.f scope, List deniedList, boolean z11, boolean z12) {
        Intrinsics.h(scope, "scope");
        Intrinsics.h(deniedList, "deniedList");
        if (!z11) {
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", "pip 请求权限之后，", false, 4, null);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "pip 请求权限前，提示弹窗，isFullLand：" + z10, false, 4, null);
        if (z10) {
            scope.d(new VideoFloatPermissionDialog(true, deniedList));
        } else {
            scope.e(deniedList, new ff.a(null, Utils.a().getString(R$string.video_float_tips_pip), Utils.a().getString(R$string.video_float_enable), Integer.valueOf(R$mipmap.video_float_ic_permission_img), Integer.valueOf(R$color.white_20), 1, null));
        }
        dw.a aVar = videoPipManagerImp.f55740d;
        videoPipManagerImp.U(str, aVar != null ? aVar.e() : null, str2);
    }

    public static final void Y(VideoPipManagerImp videoPipManagerImp, String str, String str2, BaseDialog baseDialog, Boolean bool, PermissionDialogClickType permissionDialogClickType) {
        boolean z10 = permissionDialogClickType == PermissionDialogClickType.POSITIVE;
        dw.a aVar = videoPipManagerImp.f55740d;
        videoPipManagerImp.T(z10, str, aVar != null ? aVar.e() : null, str2);
    }

    public static final void Z(VideoPipManagerImp videoPipManagerImp, Function1 function1, boolean z10, List grantedList, List deniedList) {
        Intrinsics.h(grantedList, "grantedList");
        Intrinsics.h(deniedList, "deniedList");
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", "pip 请求权限结果:" + z10, false, 4, null);
        videoPipManagerImp.V(z10);
        if (z10) {
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
        } else if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    @Override
    public PictureInPictureParams a(FragmentActivity activity, boolean z10, boolean z11, ViewGroup viewGroup) {
        Intrinsics.h(activity, "activity");
        if (activity.isFinishing() || activity.isDestroyed()) {
            return null;
        }
        if (this.f55754r && !z11) {
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", this.f55738b + " updatePictureInPictureParams isEntering return", false, 4, null);
            return null;
        }
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", this.f55738b + " updatePictureInPictureParams AutoEnterEnabled:" + z11 + "}", false, 4, null);
        Rational rational = new Rational(z10 ? 9 : 16, z10 ? 16 : 9);
        PictureInPictureParams.Builder builderA = l.a();
        builderA.setAspectRatio(rational);
        builderA.setActions(I(activity, z11));
        if (viewGroup != null) {
            Rect rect = new Rect();
            viewGroup.getGlobalVisibleRect(rect);
            builderA.setSourceRectHint(rect);
        }
        if (Build.VERSION.SDK_INT >= 31) {
            builderA.setAutoEnterEnabled(z11);
        }
        PictureInPictureParams pictureInPictureParamsBuild = builderA.build();
        try {
            activity.setPictureInPictureParams(pictureInPictureParamsBuild);
        } catch (Throwable unused) {
        }
        return pictureInPictureParamsBuild;
    }

    @Override
    public boolean b(String tag) {
        Intrinsics.h(tag, "tag");
        dw.a aVar = this.f55740d;
        if (aVar == null) {
            return false;
        }
        return Intrinsics.c(tag, aVar.r() + aVar.q() + aVar.c());
    }

    @Override
    public boolean c() {
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        boolean zHasSystemFeature = Utils.a().getPackageManager().hasSystemFeature("android.software.picture_in_picture");
        boolean zJ = J();
        wf.a.f74274a.u("VideoFloat-pip", this.f55738b + " --hasPipFeature:" + zHasSystemFeature + ", isMemoryEnable:" + zJ + " ", true);
        return zHasSystemFeature && zJ;
    }

    @Override
    public void d(final FragmentActivity activity, final dw.a bean, final FloatActionType actionType, boolean z10) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(bean, "bean");
        Intrinsics.h(actionType, "actionType");
        this.f55754r = true;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 26) {
            return;
        }
        if (i10 >= 31 && actionType == FloatActionType.HOME) {
            this.f55754r = false;
            wf.a.f74274a.p("VideoFloat-pip", new String[]{">=android12，触发home键，使用自动模式，不使用home键监听"}, true);
            return;
        }
        if (cf.c.f16930a.c(activity)) {
            F(activity, bean, actionType);
            return;
        }
        wf.a.f74274a.c("VideoFloat-pip", "画中画 没权限", true);
        int i11 = c.f55761a[actionType.ordinal()];
        if (i11 == 1) {
            W(activity, z10, bean.h(), bean.r(), new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return VideoPipManagerImp.E(this.f55809a, activity, bean, actionType, ((Boolean) obj).booleanValue());
                }
            });
        } else if (i11 == 2) {
            activity.finish();
        } else if (i11 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        this.f55754r = false;
    }

    @Override
    public void e(boolean z10) {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new VideoPipManagerImp$closePip$1$1(this, z10, null), 3, null));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.f74274a.i("VideoFloat-pip", "closePip error:" + thM456exceptionOrNullimpl, true);
        }
    }

    @Override
    public void f() {
        boolean zHasSystemFeature = Build.VERSION.SDK_INT >= 26 ? Utils.a().getPackageManager().hasSystemFeature("android.software.picture_in_picture") : true;
        HashMap map = new HashMap();
        map.put("pip_opt", String.valueOf(zHasSystemFeature));
        map.put("pip_enable", String.valueOf(c()));
        qi.h.f69682a.q("pip", "app_perf", map);
    }

    @Override
    public boolean g(com.transsion.player.orplayer.f fVar) {
        wf.a.C0922a.v(wf.a.f74274a, "VideoFloat-pip", "2-isEnterPip：" + this.f55750n + ", " + this.f55742f + ", " + fVar + " ", false, 4, null);
        if (!this.f55750n) {
            return false;
        }
        com.transsion.player.orplayer.f fVar2 = this.f55742f;
        return fVar2 == null ? false : Intrinsics.c(fVar2, fVar);
    }

    @Override
    public void h(FragmentActivity activity, dw.a bean) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(bean, "bean");
        this.f55739c = activity;
        this.f55740d = bean;
        N();
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.p("VideoFloat-pip", new String[]{">=android12  " + this.f55738b + " =====updateData---, isPlaying:" + bean.f().isPlaying() + ", isSetData:" + this.f55751o}, true);
        this.f55744h = bean.u();
        if (!this.f55751o) {
            this.f55751o = true;
            ViewGroup viewGroupU = bean.u();
            ViewParent parent = viewGroupU != null ? viewGroupU.getParent() : null;
            this.f55745i = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            ViewParent parent2 = bean.l().getParent();
            ViewGroup viewGroup = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
            this.f55746j = viewGroup;
            c0922a.c("VideoFloat-pip", ">=android12  " + this.f55738b + " =====updateData---, playerOriginalContainer:" + viewGroup, true);
        }
        this.f55742f = bean.f();
        this.f55743g = bean.l();
    }

    @Override
    public boolean i() {
        if (Build.VERSION.SDK_INT >= 26) {
            return Utils.a().getPackageManager().hasSystemFeature("android.software.picture_in_picture");
        }
        return true;
    }

    @Override
    public boolean isPlaying() {
        com.transsion.player.orplayer.f fVar;
        if (this.f55750n && (fVar = this.f55742f) != null) {
            return fVar.isPlaying();
        }
        return false;
    }

    @Override
    public void j(FragmentActivity fragmentActivity) {
        FragmentActivity fragmentActivity2;
        if (fragmentActivity == null || (fragmentActivity2 = this.f55739c) == null || Intrinsics.c(fragmentActivity, fragmentActivity2)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                wf.a.C0922a.r(wf.a.f74274a, "VideoFloat-pip", new String[]{this.f55738b + " --unregisterReceiver"}, false, 4, null);
                Utils.a().unregisterReceiver(this.f55755s);
                Utils.a().unregisterReceiver(this.f55752p);
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    @Override
    public boolean k() {
        return this.f55750n;
    }

    @Override
    public void onPipModeChanged(boolean z10) {
        FragmentActivity fragmentActivity = this.f55739c;
        Object obj = null;
        if (fragmentActivity == null || fragmentActivity.isFinishing() || fragmentActivity.isDestroyed()) {
            wf.a.C0922a.l(wf.a.f74274a, "CommonInfo", "onPipModeChanged, activity:" + fragmentActivity + " isFinishing:" + (fragmentActivity != null ? Boolean.valueOf(fragmentActivity.isFinishing()) : null) + ", " + (fragmentActivity != null ? Boolean.valueOf(fragmentActivity.isDestroyed()) : null), false, 4, null);
            return;
        }
        wf.a.f74274a.p("VideoFloat-pip", new String[]{"onPipModeChanged " + this.f55738b + ", activity:" + fragmentActivity.getClass().getSimpleName() + " onPictureInPictureModeChanged 2， isInPipMode:" + z10}, true);
        if (z10) {
            K(fragmentActivity);
            try {
                Result.Companion companion = Result.INSTANCE;
                PowerManager powerManager = (PowerManager) fragmentActivity.getSystemService("power");
                PowerManager.WakeLock wakeLockNewWakeLock = powerManager != null ? powerManager.newWakeLock(26, "MB::PlayerPip") : null;
                this.f55741e = wakeLockNewWakeLock;
                if (wakeLockNewWakeLock != null) {
                    wakeLockNewWakeLock.acquire();
                    obj = Unit.f64096a;
                }
                Result.m453constructorimpl(obj);
                return;
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
                return;
            }
        }
        ORPlayerView oRPlayerView = this.f55743g;
        if (oRPlayerView != null) {
            oRPlayerView.getKeepScreenOn();
        }
        L();
        try {
            Result.Companion companion3 = Result.INSTANCE;
            PowerManager.WakeLock wakeLock = this.f55741e;
            if (wakeLock != null) {
                wakeLock.release();
            }
            this.f55741e = null;
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th3));
        }
    }
}
