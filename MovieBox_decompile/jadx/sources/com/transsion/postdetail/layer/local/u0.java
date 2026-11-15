package com.transsion.postdetail.layer.local;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.SubtitleBean;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.R$string;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.longvideo.ui.dialog.PlayerSettingDialog;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.postdetail.layer.SystemTimeManager;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment;
import com.transsion.postdetail.ui.view.ImmScaleView;
import com.transsion.postdetail.ui.view.ImmSpeedView;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

public final class u0 extends a0 {

    private final Fragment f47084b0;

    private wn.u f47085c0;

    private int f47086d0;

    private int f47087e0;

    private final int f47088f0;

    private final int f47089g0;

    private final int f47090h0;

    private int f47091i0;

    private int f47092j0;

    private int f47093k0;

    private int f47094l0;

    private int f47095m0;

    private float f47096n0;

    private int f47097o0;

    private int f47098p0;

    private float f47099q0;

    private boolean f47100r0;

    private boolean f47101s0;

    private boolean f47102t0;

    private View f47103u0;

    private long f47104v0;

    private final Lazy f47105w0;

    private k0 f47106x0;

    private int f47107y0;

    private int f47108z0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u0(Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f47084b0 = fragment;
        this.f47088f0 = com.blankj.utilcode.util.a0.a(24.0f);
        this.f47089g0 = com.blankj.utilcode.util.a0.a(16.0f);
        this.f47090h0 = com.blankj.utilcode.util.a0.a(20.0f);
        this.f47099q0 = 1.0f;
        this.f47102t0 = true;
        this.f47105w0 = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Boolean.valueOf(u0.S3());
            }
        });
        this.f47107y0 = -1;
    }

    private final void A3(boolean z10, boolean z11) {
        k0 k0VarC3;
        Fragment fragment = this.f47084b0;
        LocalVideoDetailFragment localVideoDetailFragment = fragment instanceof LocalVideoDetailFragment ? (LocalVideoDetailFragment) fragment : null;
        if (localVideoDetailFragment != null) {
            localVideoDetailFragment.b2();
        }
        if (z11 && (k0VarC3 = C3()) != null) {
            k0VarC3.d(z10);
        }
        long jI = z10 ? RangesKt.i(this.f47104v0 + ((long) 10000), n1()) : RangesKt.f(this.f47104v0 - ((long) 10000), 0L);
        this.f47104v0 = jI;
        com.transsion.player.orplayer.f fVarH = H();
        if (fVarH != null) {
            fVarH.seekTo(jI);
        }
    }

    static void B3(u0 u0Var, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        u0Var.A3(z10, z11);
    }

    private final k0 C3() {
        wn.u uVar;
        ViewStub viewStub;
        View viewInflate;
        if (this.f47106x0 == null && (uVar = this.f47085c0) != null && (viewStub = uVar.S) != null && (viewInflate = viewStub.inflate()) != null) {
            wn.v vVarA = wn.v.a(viewInflate);
            Intrinsics.g(vVarA, "bind(...)");
            this.f47106x0 = new k0(vVarA);
        }
        return this.f47106x0;
    }

    private final boolean D3() {
        return ((Boolean) this.f47105w0.getValue()).booleanValue();
    }

    private final Map E3(String str) {
        Pair pair = new Pair("module_name", str);
        Pair pair2 = new Pair("subject_id", k1());
        DownloadBean downloadBeanS0 = S0();
        return MapsKt.l(pair, pair2, new Pair("ops", downloadBeanS0 != null ? downloadBeanS0.getOps() : null), new Pair("resource_id", i1()));
    }

    private final void F3() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            if (!D3()) {
                uVar.f74589h.setText((CharSequence) null);
                TextView tvPlayScale = uVar.f74603v;
                Intrinsics.g(tvPlayScale, "tvPlayScale");
                uf.c.g(tvPlayScale);
                uVar.f74601t.setText((CharSequence) null);
            }
            uVar.f74604w.updateSpeed(com.transsion.baselib.helper.d.f42124a.d(), true);
        }
    }

    private final void G3() {
        this.f47099q0 = 0.7222222f;
        int i10 = this.f47086d0;
        int i11 = (int) (i10 * 0.7222222f);
        this.f47092j0 = i11;
        this.f47091i0 = (i10 - i11) / 2;
        int i12 = this.f47088f0;
        int i13 = i11 + (i12 * 2);
        this.f47095m0 = i13;
        int i14 = (int) (((i13 * 9) * 1.0f) / 16);
        this.f47094l0 = i14;
        int i15 = this.f47087e0;
        int i16 = (int) (i15 * 0.7222222f);
        this.f47093k0 = i16;
        int i17 = (((i15 - i16) - (i12 / 3)) - i14) / 2;
        this.f47098p0 = i17;
        this.f47097o0 = (i12 / 3) + i14 + i17;
        this.f47096n0 = (((i15 - i16) * 1.0f) / 2) - i17;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String strM1 = m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, strM1, "initAdHW ,playerStartSpace = " + this.f47098p0 + ", playerEndSpace = " + this.f47097o0, false, 4, null);
    }

    private final void H3(int i10) {
        ViewGroup.LayoutParams bVar;
        ViewGroup.LayoutParams bVar2;
        View view;
        View view2;
        View view3;
        View view4;
        Log.e(m1(), "initSpace rotation:" + i10);
        if (this.f47107y0 == i10) {
            return;
        }
        this.f47107y0 = i10;
        if (this.f47108z0 == 0) {
            this.f47108z0 = com.blankj.utilcode.util.d.c();
        }
        wn.u uVar = this.f47085c0;
        if (uVar == null || (view4 = uVar.E) == null || (bVar = view4.getLayoutParams()) == null) {
            bVar = new ConstraintLayout.b(-2, -2);
        }
        bVar.width = i10 == 1 ? this.f47108z0 : 0;
        wn.u uVar2 = this.f47085c0;
        if (uVar2 != null && (view3 = uVar2.E) != null) {
            view3.setLayoutParams(bVar);
        }
        wn.u uVar3 = this.f47085c0;
        if (uVar3 == null || (view2 = uVar3.D) == null || (bVar2 = view2.getLayoutParams()) == null) {
            bVar2 = new ConstraintLayout.b(-2, -2);
        }
        bVar2.width = i10 == 3 ? this.f47108z0 : 0;
        wn.u uVar4 = this.f47085c0;
        if (uVar4 == null || (view = uVar4.D) == null) {
            return;
        }
        view.setLayoutParams(bVar2);
    }

    private final void I3(String str, boolean z10) {
    }

    public static final void J3(u0 u0Var, String str, LocalVideoDetailFragment localVideoDetailFragment, View view) {
        wn.u uVar;
        AppCompatTextView appCompatTextView;
        view.setSelected(!view.isSelected());
        if (view.isSelected()) {
            u0Var.v1(true);
            Intrinsics.e(view);
            uf.c.k(view);
            Context context = view.getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
            ((Activity) context).setRequestedOrientation(11);
        } else {
            Context context2 = view.getContext();
            Intrinsics.f(context2, "null cannot be cast to non-null type android.app.Activity");
            ((Activity) context2).setRequestedOrientation(6);
            u0Var.A2(true);
        }
        qi.h hVar = qi.h.f69682a;
        Pair pair = new Pair("module_name", "lock");
        Pair pair2 = new Pair("subject_id", u0Var.k1());
        DownloadBean downloadBeanS0 = u0Var.S0();
        hVar.o(str, MapsKt.m(pair, pair2, new Pair("ops", downloadBeanS0 != null ? downloadBeanS0.getOps() : null), new Pair(NativeComponentConstants.KEY_COMPONENT_TYPE, view.isSelected() ? "1" : "0")));
        localVideoDetailFragment.W2(view.isSelected());
        u0Var.W0().l(!view.isSelected());
        if (!u0Var.D3() || (uVar = u0Var.f47085c0) == null || (appCompatTextView = uVar.f74589h) == null) {
            return;
        }
        appCompatTextView.setText(view.isSelected() ? u0Var.f47084b0.getString(R$string.play_tap_unlock) : u0Var.f47084b0.getString(R$string.play_tap_lock));
    }

    public static final void K3(u0 u0Var, View view) {
        ImmScaleView immScaleView;
        wn.u uVar = u0Var.f47085c0;
        if (uVar == null || (immScaleView = uVar.f74590i) == null) {
            return;
        }
        immScaleView.performClick();
    }

    public static final void L3(u0 u0Var, ScaleMode scaleMode, String name) {
        TextView textView;
        Intrinsics.h(scaleMode, "scaleMode");
        Intrinsics.h(name, "name");
        com.transsion.player.orplayer.f fVarH = u0Var.H();
        if (fVarH != null) {
            fVarH.setScaleMode(scaleMode);
        }
        wn.u uVar = u0Var.f47085c0;
        if (uVar != null && (textView = uVar.f74603v) != null) {
            textView.setText(name);
        }
        a0.B2(u0Var, false, 1, null);
        wf.a.C0922a c0922a = wf.a.f74274a;
        String strM1 = u0Var.m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, strM1, "scaleMode:" + scaleMode, false, 4, null);
    }

    public static final void M3(u0 u0Var, View view) {
        qi.h.f69682a.o("local_video_detail", u0Var.E3(ToolBar.FORWARD));
        u0Var.v1(false);
        u0Var.A3(true, false);
    }

    public static final void N3(u0 u0Var, View view) {
        qi.h.f69682a.o("local_video_detail", u0Var.E3(ToolBar.BACKWARD));
        u0Var.v1(false);
        u0Var.A3(false, false);
    }

    public static final void O3(u0 u0Var, View view) {
        hn.c cVar = hn.c.f61413a;
        String strK1 = u0Var.k1();
        DownloadBean downloadBeanS0 = u0Var.S0();
        cVar.a("local_video_detail", strK1, downloadBeanS0 != null ? downloadBeanS0.getOps() : null, true);
        a0.e2(u0Var, null, false, 3, null);
    }

    public static final void P3(u0 u0Var, String str, View view) {
        new PlayerSettingDialog().l0(u0Var.f47084b0, "PlayerSettingDialog");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        DownloadBean downloadBeanS0 = u0Var.S0();
        linkedHashMap.put("subject_id", downloadBeanS0 != null ? downloadBeanS0.getSubjectId() : null);
        DownloadBean downloadBeanS1 = u0Var.S0();
        linkedHashMap.put("subject_ops", downloadBeanS1 != null ? downloadBeanS1.getOps() : null);
        DownloadBean downloadBeanS2 = u0Var.S0();
        linkedHashMap.put("ops", downloadBeanS2 != null ? downloadBeanS2.getOps() : null);
        DownloadBean downloadBeanS3 = u0Var.S0();
        linkedHashMap.put("subject_name", downloadBeanS3 != null ? downloadBeanS3.getSubjectName() : null);
        DownloadBean downloadBeanS4 = u0Var.S0();
        linkedHashMap.put("title_name", downloadBeanS4 != null ? downloadBeanS4.getTitleName() : null);
        DownloadBean downloadBeanS5 = u0Var.S0();
        linkedHashMap.put("subject_type", downloadBeanS5 != null ? Integer.valueOf(downloadBeanS5.getSubjectType()).toString() : null);
        linkedHashMap.put("module_name", "video_setting");
        qi.h.f69682a.o(str, linkedHashMap);
    }

    private final void Q3() {
    }

    public static final void R3(u0 u0Var) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String strM1 = u0Var.m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, strM1, "land onBackPressed", false, 4, null);
        u0Var.x3();
    }

    public static final boolean S3() {
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), LongVodPlayerView.PK_NEW_PLAYER_UI_KEY, false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        return value == null || value.length() == 0;
    }

    private final void x3() {
        FragmentActivity activity = this.f47084b0.getActivity();
        if (activity != null) {
            ImmersionBar.with(activity).hideBar(BarHide.FLAG_SHOW_BAR).init();
            activity.setRequestedOrientation(7);
        }
        F(LayerFlag.LOCAL_UI_CHANGED, LocalUiType.MIDDLE);
    }

    private final void y3() {
        DownloadBean downloadBeanS0 = S0();
        List<SubtitleBean> subtitleList = downloadBeanS0 != null ? downloadBeanS0.getSubtitleList() : null;
        if ((subtitleList == null || subtitleList.isEmpty()) && this.f47102t0) {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            if (bVar.b().getBoolean("subtitle_is_search_downloaded", false)) {
                this.f47102t0 = false;
                bVar.b().putBoolean("subtitle_land_guide", false);
            } else {
                this.f47102t0 = false;
                bVar.b().putBoolean("subtitle_land_guide", false);
                A2(false);
            }
        }
    }

    private final void z3(int i10, int i11) {
        if ((i10 <= 0 || p1() == i10) && (i11 <= 0 || Y0() == i11)) {
            return;
        }
        z2(i10);
        t2(i11);
    }

    @Override
    public View A0() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.K;
        }
        return null;
    }

    @Override
    public void C(int i10) {
        super.C(i10);
        H3(i10);
    }

    @Override
    public boolean C0() {
        return false;
    }

    @Override
    public ViewGroup D0() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.I;
        }
        return null;
    }

    @Override
    public ViewGroup E0() {
        jj.e eVar;
        wn.u uVar = this.f47085c0;
        if (uVar == null || (eVar = uVar.f74583b) == null) {
            return null;
        }
        return eVar.getRoot();
    }

    @Override
    public View F0() {
        jj.e eVar;
        wn.u uVar = this.f47085c0;
        if (uVar == null || (eVar = uVar.f74583b) == null) {
            return null;
        }
        return eVar.f63152f;
    }

    @Override
    public TextView G0() {
        return null;
    }

    @Override
    public TextView H0() {
        return null;
    }

    @Override
    public TextView I0() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.J;
        }
        return null;
    }

    @Override
    protected void J2(boolean z10) {
        jj.e eVar;
        AppCompatImageView appCompatImageView;
        super.J2(z10);
        wn.u uVar = this.f47085c0;
        if (uVar == null || (eVar = uVar.f74583b) == null || (appCompatImageView = eVar.f63150d) == null) {
            return;
        }
        View viewF0 = F0();
        appCompatImageView.setVisibility((viewF0 == null || viewF0.getVisibility() != 0) ? 0 : 4);
    }

    @Override
    public boolean M1() {
        return this.f47101s0;
    }

    @Override
    public ViewGroup N2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.f74585d;
        }
        return null;
    }

    @Override
    public ImageView O0() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.f74588g;
        }
        return null;
    }

    @Override
    public ImageView O2() {
        return null;
    }

    @Override
    public View P1() {
        return null;
    }

    @Override
    public ProgressBar P2() {
        return null;
    }

    @Override
    public View Q0() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.C;
        }
        return null;
    }

    @Override
    public TextView Q2() {
        return null;
    }

    @Override
    public TextView R2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.f74601t;
        }
        return null;
    }

    @Override
    public SimpleSubtitleView S2() {
        return null;
    }

    @Override
    public SimpleSubtitleView T2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.F;
        }
        return null;
    }

    @Override
    public ViewGroup U2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.f74585d;
        }
        return null;
    }

    @Override
    public void V1() {
        x3();
    }

    @Override
    public SimpleSubtitleView V2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.G;
        }
        return null;
    }

    @Override
    public void W1(boolean z10) {
    }

    @Override
    public TextView W2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.O;
        }
        return null;
    }

    @Override
    public TextView X2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.A;
        }
        return null;
    }

    @Override
    public void Y1() {
        V1();
    }

    @Override
    public TextView Y2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.B;
        }
        return null;
    }

    @Override
    public void Z1() {
        super.Z1();
        this.f47101s0 = false;
    }

    @Override
    public Group Z2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.L;
        }
        return null;
    }

    @Override
    public void a(LocalUiType uiType) {
        WindowManager windowManager;
        Display defaultDisplay;
        wn.k0 k0Var;
        LinearLayout root;
        Intrinsics.h(uiType, "uiType");
        LocalUiType localUiType = LocalUiType.LAND;
        if (uiType == localUiType) {
            this.f47100r0 = true;
            com.transsion.player.orplayer.f fVarH = H();
            int videoWidth = fVarH != null ? fVarH.getVideoWidth() : 0;
            com.transsion.player.orplayer.f fVarH2 = H();
            z3(videoWidth, fVarH2 != null ? fVarH2.getVideoHeight() : 0);
            wf.a.C0922a c0922a = wf.a.f74274a;
            String strM1 = m1();
            Intrinsics.g(strM1, "<get-TAG>(...)");
            wf.a.C0922a.f(c0922a, strM1, "onLocalUiChanged 2 land", false, 4, null);
            FragmentActivity activity = this.f47084b0.getActivity();
            if (activity != null) {
                ImmersionBar.with(activity).hideBar(BarHide.FLAG_HIDE_BAR).init();
            }
            z0();
            v1(false);
            SystemTimeManager systemTimeManagerL1 = l1();
            if (systemTimeManagerL1 != null) {
                systemTimeManagerL1.d();
            }
            wn.u uVar = this.f47085c0;
            if (uVar != null && (k0Var = uVar.H) != null && (root = k0Var.getRoot()) != null) {
                uf.c.g(root);
            }
            y3();
            FragmentActivity activity2 = this.f47084b0.getActivity();
            if (activity2 != null && (windowManager = activity2.getWindowManager()) != null && (defaultDisplay = windowManager.getDefaultDisplay()) != null) {
                C(defaultDisplay.getRotation());
            }
        } else if (this.f47101s0) {
            K0();
        }
        wf.a.f74274a.c("long_video_play", "land, onLocalUiChanged uiType = " + uiType, true);
        T1(uiType == localUiType);
        super.a(uiType);
    }

    @Override
    public void a2(View view) {
        Intrinsics.h(view, "view");
        super.a2(view);
        View view2 = this.f47103u0;
        if (view2 != null) {
            uf.c.g(view2);
        }
    }

    @Override
    public LocalUiType a3() {
        return LocalUiType.LAND;
    }

    @Override
    public View b1() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.f74589h;
        }
        return null;
    }

    @Override
    public void c() {
        super.c();
        this.f47100r0 = false;
    }

    @Override
    public ImageView f2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.M;
        }
        return null;
    }

    @Override
    public ViewGroup g2() {
        return null;
    }

    @Override
    public TextView h2() {
        return null;
    }

    @Override
    public TextView h3() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.P;
        }
        return null;
    }

    @Override
    public View i2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.f74602u;
        }
        return null;
    }

    @Override
    public void i3() {
        super.i3();
    }

    @Override
    public void initPlayer() {
        super.initPlayer();
        this.f47101s0 = false;
    }

    @Override
    public View j1() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.f74606y;
        }
        return null;
    }

    @Override
    public FrameLayout j3() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.R;
        }
        return null;
    }

    @Override
    public void k(DownloadBean downloadBean, String pageFrom, boolean z10) {
        String url;
        ImmScaleView immScaleView;
        ImmSpeedView immSpeedView;
        String path;
        Intrinsics.h(pageFrom, "pageFrom");
        super.k(downloadBean, pageFrom, z10);
        if (downloadBean == null || (url = downloadBean.getResourceId()) == null) {
            url = downloadBean != null ? downloadBean.getUrl() : "";
        }
        I3(url, downloadBean != null ? downloadBean.isSeries() : false);
        if (downloadBean != null && downloadBean.getType() == 6 && (path = downloadBean.getPath()) != null && StringsKt.c0(path, ".mp3", false, 2, null)) {
            s2(downloadBean.getCover());
        }
        wn.u uVar = this.f47085c0;
        if (uVar != null && (immSpeedView = uVar.f74604w) != null) {
            immSpeedView.setOps(downloadBean != null ? downloadBean.getOps() : null);
        }
        wn.u uVar2 = this.f47085c0;
        if (uVar2 == null || (immScaleView = uVar2.f74590i) == null) {
            return;
        }
        immScaleView.setOps(downloadBean != null ? downloadBean.getOps() : null);
    }

    @Override
    public View k2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.f74605x;
        }
        return null;
    }

    @Override
    public TextView k3() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.Q;
        }
        return null;
    }

    @Override
    public void m(LocalUiType newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.m(newConfig);
        if (newConfig == LocalUiType.MIDDLE) {
            x3();
        }
    }

    @Override
    public ViewStub m3() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.U;
        }
        return null;
    }

    @Override
    public ConstraintLayout n2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.f74593l;
        }
        return null;
    }

    @Override
    public ViewStub n3() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.V;
        }
        return null;
    }

    @Override
    public void onBackPressed() {
        ConstraintLayout constraintLayout;
        wn.u uVar = this.f47085c0;
        if (uVar == null || (constraintLayout = uVar.f74593l) == null) {
            return;
        }
        constraintLayout.postDelayed(new Runnable() {
            @Override
            public final void run() {
                u0.R3(this.f47081a);
            }
        }, 30L);
    }

    @Override
    public void onCompletion(gn.e eVar) {
        super.onCompletion(eVar);
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        super.onProgress(j10, eVar);
        if (isVisible()) {
            this.f47104v0 = j10;
        }
    }

    @Override
    public void onVideoPause(gn.e eVar) {
        super.onVideoPause(eVar);
        isVisible();
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        z3(i10, i11);
        super.onVideoSizeChanged(i10, i11);
        wf.a.C0922a c0922a = wf.a.f74274a;
        String strM1 = m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        c0922a.c(strM1, "onVideoSizeChanged, width = " + i10 + ", height = " + i11, true);
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        super.onVideoStart(eVar);
        isVisible();
    }

    @Override
    public void p(float f10) {
        ImmSpeedView immSpeedView;
        super.p(f10);
        wn.u uVar = this.f47085c0;
        if (uVar == null || (immSpeedView = uVar.f74604w) == null) {
            return;
        }
        ImmSpeedView.updateSpeed$default(immSpeedView, f10, false, 2, null);
    }

    @Override
    public View p2() {
        return null;
    }

    @Override
    public void q(String resourceId, String subjectId, String postId, boolean z10, boolean z11) {
        String strF;
        ImmScaleView immScaleView;
        ImmSpeedView immSpeedView;
        Intrinsics.h(resourceId, "resourceId");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(postId, "postId");
        super.q(resourceId, subjectId, postId, z10, z11);
        v2(subjectId);
        Fragment fragment = this.f47084b0;
        Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment");
        qi.b logViewConfig = ((LocalVideoDetailFragment) fragment).getLogViewConfig();
        if (logViewConfig == null || (strF = logViewConfig.f()) == null) {
            strF = "";
        }
        wn.u uVar = this.f47085c0;
        if (uVar != null && (immSpeedView = uVar.f74604w) != null) {
            immSpeedView.setPageParams(strF, subjectId);
        }
        wn.u uVar2 = this.f47085c0;
        if (uVar2 != null && (immScaleView = uVar2.f74590i) != null) {
            immScaleView.setPageParams(strF, subjectId);
        }
        I3(resourceId, z11);
    }

    @Override
    public View q1() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.f74595n;
        }
        return null;
    }

    @Override
    public SecondariesSeekBar q2() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.N;
        }
        return null;
    }

    @Override
    public void r(int i10, int i11) {
        super.r(i10, i11);
        wf.a.C0922a c0922a = wf.a.f74274a;
        String strM1 = m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, strM1, "addSurface, width = " + i10 + ", height = " + i11, false, 4, null);
    }

    @Override
    public View r1() {
        wn.u uVar = this.f47085c0;
        if (uVar != null) {
            return uVar.f74594m;
        }
        return null;
    }

    @Override
    public void s(View rootView, LocalUiType uiType) {
        final String strF;
        AppCompatTextView appCompatTextView;
        jj.e eVar;
        ImmScaleView immScaleView;
        LinearLayout linearLayout;
        AppCompatTextView appCompatTextView2;
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(uiType, "uiType");
        if (uiType != LocalUiType.LAND) {
            return;
        }
        this.f47085c0 = wn.u.a(rootView);
        super.s(rootView, uiType);
        this.f47086d0 = com.blankj.utilcode.util.y.c();
        int iE = com.blankj.utilcode.util.y.e();
        this.f47087e0 = iE;
        int i10 = this.f47086d0;
        if (iE < i10) {
            this.f47087e0 = i10;
            this.f47086d0 = iE;
        }
        int iA = com.blankj.utilcode.util.d.a();
        if (iA > 10) {
            this.f47087e0 -= iA;
        }
        Fragment fragment = this.f47084b0;
        Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment");
        final LocalVideoDetailFragment localVideoDetailFragment = (LocalVideoDetailFragment) fragment;
        qi.b logViewConfig = localVideoDetailFragment.getLogViewConfig();
        if (logViewConfig == null || (strF = logViewConfig.f()) == null) {
            strF = "";
        }
        wn.u uVar = this.f47085c0;
        if (uVar != null && (appCompatTextView2 = uVar.f74589h) != null) {
            appCompatTextView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    u0.J3(this.f47058a, strF, localVideoDetailFragment, view);
                }
            });
        }
        this.f47102t0 = com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("subtitle_land_guide", true);
        G3();
        Q3();
        wn.u uVar2 = this.f47085c0;
        if (uVar2 != null && (linearLayout = uVar2.f74598q) != null) {
            linearLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    u0.K3(this.f47063a, view);
                }
            });
        }
        wn.u uVar3 = this.f47085c0;
        if (uVar3 != null && (immScaleView = uVar3.f74590i) != null) {
            immScaleView.setOnModelChangeListener(new ImmScaleView.a() {
                @Override
                public final void a(ScaleMode scaleMode, String str) {
                    u0.L3(this.f47066a, scaleMode, str);
                }
            });
        }
        wn.u uVar4 = this.f47085c0;
        if (uVar4 != null && (eVar = uVar4.f74583b) != null) {
            eVar.f63151e.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    u0.M3(this.f47069a, view);
                }
            });
            eVar.f63149c.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    u0.N3(this.f47074a, view);
                }
            });
            eVar.f63150d.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    u0.O3(this.f47076a, view);
                }
            });
        }
        wn.u uVar5 = this.f47085c0;
        if (uVar5 != null && (appCompatTextView = uVar5.f74607z) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    u0.P3(this.f47078a, strF, view);
                }
            });
        }
        F3();
    }

    @Override
    public void s1(MotionEvent motionEvent, boolean z10) {
        if (!z10 || motionEvent == null) {
            super.s1(motionEvent, false);
            return;
        }
        int iE = com.blankj.utilcode.util.y.e() / 3;
        int rawX = (int) motionEvent.getRawX();
        if (rawX >= 0 && rawX <= iE) {
            B3(this, false, false, 2, null);
        } else if (rawX > iE * 2) {
            B3(this, true, false, 2, null);
        } else {
            super.s1(motionEvent, false);
        }
    }

    @Override
    public void u2(boolean z10) {
        jj.e eVar;
        AppCompatImageView appCompatImageView;
        super.u2(z10);
        wn.u uVar = this.f47085c0;
        if (uVar == null || (eVar = uVar.f74583b) == null || (appCompatImageView = eVar.f63150d) == null) {
            return;
        }
        appCompatImageView.setImageResource(z10 ? R$drawable.ic_player_pause : R$drawable.ic_player_play);
    }
}
