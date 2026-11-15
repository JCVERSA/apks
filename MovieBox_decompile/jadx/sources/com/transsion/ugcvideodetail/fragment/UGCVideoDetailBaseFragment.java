package com.transsion.ugcvideodetail.fragment;

import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.play.detail.fragment.BaseBottomDialogFragment;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailPlayListView;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.wrapperad.view.cardpage.NativeCardPageAdHelper;
import com.transsion.wrapperad.view.cardpage.NativeCardPageView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0006H$¢\u0006\u0004\b\u0016\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0006H$¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0006H$¢\u0006\u0004\b\u0018\u0010\u0005J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0019\u0010\u0012J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0010H\u0014¢\u0006\u0004\b\u001a\u0010\u0012J\u001f\u0010\u001e\u001a\u00020\u00062\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0016¢\u0006\u0004\b#\u0010\u0005J\u000f\u0010$\u001a\u00020\u0006H\u0004¢\u0006\u0004\b$\u0010\u0005J\u000f\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b%\u0010\u0005J\u000f\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010\u0005J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u001cH\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\u0005J\r\u0010+\u001a\u00020\u0006¢\u0006\u0004\b+\u0010\u0005J\u001b\u0010.\u001a\u00020\u00062\n\b\u0002\u0010-\u001a\u0004\u0018\u00010,H\u0014¢\u0006\u0004\b.\u0010/J\u0017\u00101\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u001cH\u0016¢\u0006\u0004\b1\u0010)J\u000f\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b2\u0010\u0005J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\u0005J\u0017\u00106\u001a\u00020\u001c2\u0006\u00105\u001a\u000204H\u0014¢\u0006\u0004\b6\u00107J\u0011\u00109\u001a\u0004\u0018\u000108H$¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0006H\u0016¢\u0006\u0004\b;\u0010\u0005J\u0019\u0010=\u001a\u00020\u00062\b\u0010<\u001a\u0004\u0018\u00010\u0010H\u0004¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u0006H\u0004¢\u0006\u0004\b?\u0010\u0005R$\u0010D\u001a\u0004\u0018\u00010\u00108\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010\u0012\"\u0004\bC\u0010>R$\u0010H\u001a\u0004\u0018\u00010\u00108\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bE\u0010A\u001a\u0004\bF\u0010\u0012\"\u0004\bG\u0010>R$\u0010L\u001a\u0004\u0018\u00010\u00108\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bI\u0010A\u001a\u0004\bJ\u0010\u0012\"\u0004\bK\u0010>R\"\u0010T\u001a\u00020M8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bN\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR$\u0010\\\u001a\u0004\u0018\u00010U8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[R$\u0010d\u001a\u0004\u0018\u00010]8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b^\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR*\u0010j\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\be\u0010f\u001a\u0004\bg\u0010h\"\u0004\bi\u0010\u001fR\"\u0010n\u001a\u00020\u00108\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bk\u0010A\u001a\u0004\bl\u0010\u0012\"\u0004\bm\u0010>R$\u0010r\u001a\u0004\u0018\u00010\u00108\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bo\u0010A\u001a\u0004\bp\u0010\u0012\"\u0004\bq\u0010>R$\u0010v\u001a\u0004\u0018\u00010\u00108\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bs\u0010A\u001a\u0004\bt\u0010\u0012\"\u0004\bu\u0010>R\u0016\u0010z\u001a\u00020w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0018\u0010~\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u0018\u0010\u0081\u0001\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u0016\u0010\u0083\u0001\u001a\u00020\u00108&X¦\u0004¢\u0006\u0007\u001a\u0005\b\u0082\u0001\u0010\u0012R\u0016\u0010\u0085\u0001\u001a\u00020\u00108&X¦\u0004¢\u0006\u0007\u001a\u0005\b\u0084\u0001\u0010\u0012¨\u0006\u0086\u0001"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Liu/i;", "Len/a;", "<init>", "()V", "", "I0", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "n0", "(Landroidx/fragment/app/FragmentManager;)V", "Landroid/view/LayoutInflater;", "inflater", "E0", "(Landroid/view/LayoutInflater;)Liu/i;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "receiveArguments", "initViewData", "initListener", "F0", "H0", "q0", "w0", "B0", "Lkotlin/Function0;", "", "callback", "S", "(Lkotlin/jvm/functions/Function0;)V", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "M0", "l0", "onResume", "onPause", "hidden", "onHiddenChanged", "(Z)V", "onStop", "L0", "Lln/a;", "bean", "o0", "(Lln/a;)V", "isInPictureInPictureMode", "onPictureInPictureModeChanged", "onHomeClick", "onRecentClick", "Lcom/transsion/videofloat/bean/FloatActionType;", "actionType", "V0", "(Lcom/transsion/videofloat/bean/FloatActionType;)Z", "Ldw/a;", "u0", "()Ldw/a;", "onDestroy", "genre", "K0", "(Ljava/lang/String;)V", "m0", "a", "Ljava/lang/String;", "v0", "setLastPageFrom", "lastPageFrom", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "D0", "T0", "ugcVideoId", "c", "getUgcVideoType", "U0", "ugcVideoType", "Lcom/transsion/player/longvideo/ui/LongVodUiType;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "t0", "()Lcom/transsion/player/longvideo/ui/LongVodUiType;", "O0", "(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V", "curPlayerUiType", "Lkn/a;", "e", "Lkn/a;", "y0", "()Lkn/a;", "P0", "(Lkn/a;)V", "playerControl", "Lcom/transsion/ugcvideodetail/hepler/e;", "f", "Lcom/transsion/ugcvideodetail/hepler/e;", "s0", "()Lcom/transsion/ugcvideodetail/hepler/e;", "N0", "(Lcom/transsion/ugcvideodetail/hepler/e;)V", "bottomRecHelper", "g", "Lkotlin/jvm/functions/Function0;", "r0", "()Lkotlin/jvm/functions/Function0;", "setBackCallback", "backCallback", "h", "C0", "S0", "trackId", "i", "A0", "R0", "previousTrackId", "j", "z0", "Q0", "previousPageVideoId", "", CampaignEx.JSON_KEY_AD_K, "J", "pageLoadStartTime", "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;", "l", "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;", "adHelper", "m", "Z", "isLoadedAd", "x0", "PAGE_NAME", "getTAG", "TAG", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class UGCVideoDetailBaseFragment extends PageStatusFragment<iu.i> implements en.a {

    private String lastPageFrom;

    private String ugcVideoId;

    private String ugcVideoType;

    private LongVodUiType curPlayerUiType = LongVodUiType.MIDDLE;

    private kn.a playerControl;

    private com.transsion.ugcvideodetail.hepler.e bottomRecHelper;

    private Function0 backCallback;

    private String trackId;

    private String previousTrackId;

    private String previousPageVideoId;

    private long pageLoadStartTime;

    private NativeCardPageAdHelper adHelper;

    private boolean isLoadedAd;

    public static final class a extends androidx.activity.u {
        a() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            Function0 backCallback = UGCVideoDetailBaseFragment.this.getBackCallback();
            if (backCallback == null || !((Boolean) backCallback.invoke()).booleanValue()) {
                if (UGCVideoDetailBaseFragment.this.getPlayerControl() != null) {
                    kn.a playerControl = UGCVideoDetailBaseFragment.this.getPlayerControl();
                    if (playerControl != null) {
                        playerControl.onBackPressed();
                        return;
                    }
                    return;
                }
                FragmentActivity activity = UGCVideoDetailBaseFragment.this.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            }
        }
    }

    public UGCVideoDetailBaseFragment() {
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        this.trackId = string;
    }

    public static final void G0(UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        FragmentActivity activity;
        if (uGCVideoDetailBaseFragment.playerControl != null) {
            if (uGCVideoDetailBaseFragment.V0(FloatActionType.BACK) || (activity = uGCVideoDetailBaseFragment.getActivity()) == null) {
                return;
            }
            activity.finish();
            return;
        }
        FragmentActivity activity2 = uGCVideoDetailBaseFragment.getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
    }

    private final void I0() {
        ConstraintLayout constraintLayoutB;
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayoutB = mViewBinding.getRoot()) == null) {
            return;
        }
        constraintLayoutB.post(new Runnable() {
            @Override
            public final void run() {
                UGCVideoDetailBaseFragment.J0(this.f54158a);
            }
        });
    }

    public static final void J0(UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment) {
        FragmentActivity activity = uGCVideoDetailBaseFragment.getActivity();
        if (activity != null) {
            cw.b.f58659a.c().f(activity, uGCVideoDetailBaseFragment.getSubjectId(), uGCVideoDetailBaseFragment.ugcVideoId, uGCVideoDetailBaseFragment.getPAGE_NAME(), uGCVideoDetailBaseFragment.getOps());
        }
    }

    private final void n0(FragmentManager fragmentManager) {
        try {
            List<Fragment> listY0 = fragmentManager.y0();
            Intrinsics.g(listY0, "getFragments(...)");
            for (Fragment fragment : listY0) {
                if (fragment instanceof BaseBottomDialogFragment) {
                    BaseBottomDialogFragment.m0((BaseBottomDialogFragment) fragment, false, 1, null);
                } else if ((fragment instanceof DialogFragment) && ((DialogFragment) fragment).isAdded()) {
                    ((DialogFragment) fragment).dismissAllowingStateLoss();
                }
            }
        } catch (Exception e10) {
            wf.a.C0922a.k(wf.a.f74274a, getTAG(), "dismissDialogsInFragmentManager error: " + e10.getMessage(), e10, false, 8, null);
        }
    }

    public static void p0(UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, ln.a aVar, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: feedback");
        }
        if ((i10 & 1) != 0) {
            aVar = null;
        }
        uGCVideoDetailBaseFragment.o0(aVar);
    }

    public String getPreviousTrackId() {
        return this.previousTrackId;
    }

    protected String getSubjectId() {
        return null;
    }

    public String getTrackId() {
        return this.trackId;
    }

    protected final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    @Override
    public iu.i getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        iu.i iVarC = iu.i.c(inflater);
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }

    protected abstract void F0();

    protected abstract void H0();

    protected final void K0(String genre) {
        iu.i mViewBinding;
        NativeCardPageView nativeCardPageView;
        NativeCardPageAdHelper nativeCardPageAdHelperG;
        NativeCardPageAdHelper nativeCardPageAdHelperF;
        if (this.isLoadedAd || (mViewBinding = getMViewBinding()) == null || (nativeCardPageView = mViewBinding.f62691m) == null) {
            return;
        }
        this.isLoadedAd = true;
        uf.c.g(nativeCardPageView);
        NativeCardPageAdHelper nativeCardPageAdHelper = this.adHelper;
        if (nativeCardPageAdHelper == null || (nativeCardPageAdHelperG = nativeCardPageAdHelper.G("StreamingMediaContentScene")) == null || (nativeCardPageAdHelperF = nativeCardPageAdHelperG.F(com.transsion.ad.strategy.c.f41178a.a(genre))) == null) {
            return;
        }
        nativeCardPageAdHelperF.u(nativeCardPageView);
    }

    public final void L0() {
        kn.a aVar;
        cw.c cVar = cw.c.f58664a;
        kn.a aVar2 = this.playerControl;
        if (!cVar.c(aVar2 != null ? aVar2.getPlayer() : null) && (aVar = this.playerControl) != null) {
            aVar.release();
        }
        kn.a aVar3 = this.playerControl;
        if (aVar3 != null) {
            aVar3.onPageDestroy();
        }
    }

    public void M0() {
        this.pageLoadStartTime = System.currentTimeMillis();
        wf.a.C0922a.f(wf.a.f74274a, getTAG(), "resetPageLoadStartTime: " + this.pageLoadStartTime, false, 4, null);
    }

    protected final void N0(com.transsion.ugcvideodetail.hepler.e eVar) {
        this.bottomRecHelper = eVar;
    }

    protected final void O0(LongVodUiType longVodUiType) {
        Intrinsics.h(longVodUiType, "<set-?>");
        this.curPlayerUiType = longVodUiType;
    }

    protected final void P0(kn.a aVar) {
        this.playerControl = aVar;
    }

    public void Q0(String str) {
        this.previousPageVideoId = str;
    }

    public void R0(String str) {
        this.previousTrackId = str;
    }

    @Override
    public void S(Function0 callback) {
        this.backCallback = callback;
    }

    public void S0(String str) {
        Intrinsics.h(str, "<set-?>");
        this.trackId = str;
    }

    protected final void T0(String str) {
        this.ugcVideoId = str;
    }

    protected final void U0(String str) {
        this.ugcVideoType = str;
    }

    protected boolean V0(FloatActionType actionType) {
        Intrinsics.h(actionType, "actionType");
        return false;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    public abstract String getTAG();

    @Override
    public void initListener() {
        AppCompatImageView appCompatImageView;
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatImageView = mViewBinding.f62687i) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailBaseFragment.G0(this.f54155a, view);
            }
        });
    }

    @Override
    public void initViewData() {
        View view;
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (view = mViewBinding.f62696r) != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = com.blankj.utilcode.util.d.c();
            view.setLayoutParams(bVar);
        }
        this.adHelper = new NativeCardPageAdHelper(androidx.p009lifecycle.v.a(this));
        requireActivity().getOnBackPressedDispatcher().i(this, new a());
        F0();
        H0();
        q0();
        I0();
    }

    protected final void l0() {
        HashMap mapG;
        if (this.pageLoadStartTime > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.pageLoadStartTime;
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            }
            wf.a.C0922a.f(wf.a.f74274a, getTAG(), "load_duration: " + jCurrentTimeMillis + " ms", false, 4, null);
        }
    }

    protected final void m0() {
        FragmentManager supportFragmentManager;
        try {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            n0(childFragmentManager);
            FragmentActivity activity = getActivity();
            if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
                return;
            }
            n0(supportFragmentManager);
        } catch (Exception e10) {
            wf.a.C0922a.k(wf.a.f74274a, getTAG(), "dismissAllDialogs error: " + e10.getMessage(), e10, false, 8, null);
        }
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPAGE_NAME(), false, 2, null);
    }

    protected void o0(ln.a bean) {
        Navigator.x(TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_PLAY").K("ugc_video_id", this.ugcVideoId), requireContext(), null, 2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        setMViewBinding(null);
        NativeCardPageAdHelper nativeCardPageAdHelper = this.adHelper;
        if (nativeCardPageAdHelper != null) {
            nativeCardPageAdHelper.x();
        }
        this.adHelper = null;
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        iu.i mViewBinding;
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        super.onHiddenChanged(hidden);
        if (!hidden || (mViewBinding = getMViewBinding()) == null || (uGCVideoDetailPlayListView = mViewBinding.f62692n) == null) {
            return;
        }
        uGCVideoDetailPlayListView.clearExposureCache();
    }

    @Override
    public void onHomeClick() {
        super.onHomeClick();
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "StreamDetail onHomeClick", false, 4, null);
        V0(FloatActionType.HOME);
    }

    @Override
    public void onPause() {
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        super.onPause();
        NativeCardPageAdHelper nativeCardPageAdHelper = this.adHelper;
        if (nativeCardPageAdHelper != null) {
            nativeCardPageAdHelper.C();
        }
        iu.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f62692n) == null) {
            return;
        }
        uGCVideoDetailPlayListView.clearExposureCache();
    }

    @Override
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        kn.a aVar;
        super.onPictureInPictureModeChanged(isInPictureInPictureMode);
        if (isInPictureInPictureMode) {
            FragmentActivity activity = getActivity();
            if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
                return;
            }
            dw.a aVarU0 = u0();
            if (aVarU0 != null && Build.VERSION.SDK_INT >= 31) {
                wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", "onPictureInPictureModeChanged stream--- updateData==2", false, 4, null);
                cw.e.f58665a.b().h(activity, aVarU0);
            }
        }
        cw.e.f58665a.b().onPipModeChanged(isInPictureInPictureMode);
        kn.a aVar2 = this.playerControl;
        if (aVar2 != null) {
            aVar2.onPipModeChanged(isInPictureInPictureMode);
        }
        if (isInPictureInPictureMode || (aVar = this.playerControl) == null) {
            return;
        }
        aVar.exitFullScreen();
    }

    @Override
    public void onRecentClick() {
        super.onRecentClick();
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "StreamDetail onRecentClick", false, 4, null);
        V0(FloatActionType.HOME);
    }

    @Override
    public void onResume() {
        super.onResume();
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onViewResume();
        }
    }

    @Override
    public void onStop() {
        kn.a aVar;
        super.onStop();
        kn.a aVar2 = this.playerControl;
        if (aVar2 != null) {
            aVar2.onSaveHistory();
        }
        cw.c cVar = cw.c.f58664a;
        kn.a aVar3 = this.playerControl;
        if (cVar.c(aVar3 != null ? aVar3.getPlayer() : null) || (aVar = this.playerControl) == null) {
            return;
        }
        aVar.onViewPause();
    }

    protected abstract void q0();

    protected final Function0 getBackCallback() {
        return this.backCallback;
    }

    @Override
    public void receiveArguments() {
        qi.b logViewConfig;
        HashMap mapG;
        HashMap mapG2;
        super.receiveArguments();
        this.pageLoadStartTime = System.currentTimeMillis();
        this.lastPageFrom = qi.h.f69682a.h();
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null) {
            logViewConfig2.j(this.lastPageFrom);
        }
        Bundle arguments = getArguments();
        R0(arguments != null ? arguments.getString("parent_track_id") : null);
        qi.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG2 = logViewConfig3.g()) != null) {
        }
        String previousTrackId = getPreviousTrackId();
        if (previousTrackId == null || (logViewConfig = getLogViewConfig()) == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    protected final com.transsion.ugcvideodetail.hepler.e getBottomRecHelper() {
        return this.bottomRecHelper;
    }

    protected final LongVodUiType getCurPlayerUiType() {
        return this.curPlayerUiType;
    }

    protected abstract dw.a u0();

    protected final String getLastPageFrom() {
        return this.lastPageFrom;
    }

    public String getOps() {
        return null;
    }

    public abstract String getPAGE_NAME();

    protected final kn.a getPlayerControl() {
        return this.playerControl;
    }

    public String getPreviousPageVideoId() {
        return this.previousPageVideoId;
    }
}
