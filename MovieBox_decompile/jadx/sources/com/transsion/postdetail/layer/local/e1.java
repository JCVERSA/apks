package com.transsion.postdetail.layer.local;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment;
import com.transsion.postdetail.ui.view.ImmSpeedView;
import kotlin.jvm.internal.Intrinsics;

public final class e1 extends a0 {

    private final Fragment f47009b0;

    private wn.y f47010c0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e1(Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f47009b0 = fragment;
    }

    private final void p3() {
        F(LayerFlag.LOCAL_UI_CHANGED, LocalUiType.MIDDLE);
    }

    public static final void q3(e1 e1Var) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String strM1 = e1Var.m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, strM1, "portrait onBackPressed", false, 4, null);
        e1Var.p3();
    }

    @Override
    public View A0() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74670u;
        }
        return null;
    }

    @Override
    public boolean C0() {
        return false;
    }

    @Override
    public ViewGroup D0() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74671v;
        }
        return null;
    }

    @Override
    public ViewGroup E0() {
        return null;
    }

    @Override
    public View F0() {
        wn.k0 k0Var;
        wn.y yVar = this.f47010c0;
        if (yVar == null || (k0Var = yVar.f74669t) == null) {
            return null;
        }
        return k0Var.f74436d;
    }

    @Override
    public TextView G0() {
        wn.k0 k0Var;
        wn.y yVar = this.f47010c0;
        if (yVar == null || (k0Var = yVar.f74669t) == null) {
            return null;
        }
        return k0Var.f74435c;
    }

    @Override
    public TextView H0() {
        wn.k0 k0Var;
        wn.y yVar = this.f47010c0;
        if (yVar == null || (k0Var = yVar.f74669t) == null) {
            return null;
        }
        return k0Var.f74434b;
    }

    @Override
    public TextView I0() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74672w;
        }
        return null;
    }

    @Override
    public ViewGroup N2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74651b;
        }
        return null;
    }

    @Override
    public ImageView O0() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74653d;
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
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74666q;
        }
        return null;
    }

    @Override
    public TextView Q2() {
        return null;
    }

    @Override
    public TextView R2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74660k;
        }
        return null;
    }

    @Override
    public SimpleSubtitleView S2() {
        return null;
    }

    @Override
    public SimpleSubtitleView T2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74667r;
        }
        return null;
    }

    @Override
    public ViewGroup U2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74651b;
        }
        return null;
    }

    @Override
    public void V1() {
        p3();
    }

    @Override
    public SimpleSubtitleView V2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74668s;
        }
        return null;
    }

    @Override
    public TextView W2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.A;
        }
        return null;
    }

    @Override
    public TextView X2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74664o;
        }
        return null;
    }

    @Override
    public void Y1() {
        F(LayerFlag.LOCAL_UI_CHANGED, LocalUiType.MIDDLE);
    }

    @Override
    public TextView Y2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74665p;
        }
        return null;
    }

    @Override
    public Group Z2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74673x;
        }
        return null;
    }

    @Override
    public void a(LocalUiType uiType) {
        Intrinsics.h(uiType, "uiType");
        LocalUiType localUiType = LocalUiType.PORTRAIT;
        if (uiType == localUiType) {
            z0();
        }
        T1(uiType == localUiType);
        super.a(uiType);
    }

    @Override
    public LocalUiType a3() {
        return LocalUiType.PORTRAIT;
    }

    @Override
    public ImageView f2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74674y;
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
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.B;
        }
        return null;
    }

    @Override
    public View i2() {
        return null;
    }

    @Override
    public View j1() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74663n;
        }
        return null;
    }

    @Override
    public FrameLayout j3() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.D;
        }
        return null;
    }

    @Override
    public View k2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74662m;
        }
        return null;
    }

    @Override
    public TextView k3() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.C;
        }
        return null;
    }

    @Override
    public void m(LocalUiType newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.m(newConfig);
        if (newConfig == LocalUiType.LAND) {
            Y1();
        }
    }

    @Override
    public ViewStub m3() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.E;
        }
        return null;
    }

    @Override
    public ConstraintLayout n2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74658i;
        }
        return null;
    }

    @Override
    public ViewStub n3() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.F;
        }
        return null;
    }

    @Override
    public void onBackPressed() {
        ConstraintLayout constraintLayout;
        wn.y yVar = this.f47010c0;
        if (yVar == null || (constraintLayout = yVar.f74658i) == null) {
            return;
        }
        constraintLayout.postDelayed(new Runnable() {
            @Override
            public final void run() {
                e1.q3(this.f47005a);
            }
        }, 30L);
    }

    @Override
    public void p(float f10) {
        ImmSpeedView immSpeedView;
        super.p(f10);
        wn.y yVar = this.f47010c0;
        if (yVar == null || (immSpeedView = yVar.f74661l) == null) {
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
        ImmSpeedView immSpeedView;
        Intrinsics.h(resourceId, "resourceId");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(postId, "postId");
        super.q(resourceId, subjectId, postId, z10, z11);
        Fragment fragment = this.f47009b0;
        Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment");
        qi.b logViewConfig = ((LocalVideoDetailFragment) fragment).getLogViewConfig();
        if (logViewConfig == null || (strF = logViewConfig.f()) == null) {
            strF = "";
        }
        wn.y yVar = this.f47010c0;
        if (yVar == null || (immSpeedView = yVar.f74661l) == null) {
            return;
        }
        immSpeedView.setPageParams(strF, subjectId);
    }

    @Override
    public View q1() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74655f;
        }
        return null;
    }

    @Override
    public SecondariesSeekBar q2() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74675z;
        }
        return null;
    }

    @Override
    public View r1() {
        wn.y yVar = this.f47010c0;
        if (yVar != null) {
            return yVar.f74654e;
        }
        return null;
    }

    @Override
    public void s(View rootView, LocalUiType uiType) {
        String strF;
        ImmSpeedView immSpeedView;
        ConstraintLayout root;
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(uiType, "uiType");
        if (uiType != LocalUiType.PORTRAIT) {
            return;
        }
        wn.y yVarA = wn.y.a(rootView);
        this.f47010c0 = yVarA;
        ViewGroup.LayoutParams layoutParams = (yVarA == null || (root = yVarA.getRoot()) == null) ? null : root.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = com.blankj.utilcode.util.d.c();
        super.s(rootView, uiType);
        Fragment fragment = this.f47009b0;
        Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment");
        qi.b logViewConfig = ((LocalVideoDetailFragment) fragment).getLogViewConfig();
        if (logViewConfig == null || (strF = logViewConfig.f()) == null) {
            strF = "";
        }
        wn.y yVar = this.f47010c0;
        if (yVar == null || (immSpeedView = yVar.f74661l) == null) {
            return;
        }
        immSpeedView.setPageParams(strF, k1());
        immSpeedView.updateSpeed(com.transsion.baselib.helper.d.f42124a.d(), true);
        immSpeedView.setPortrait(true);
    }
}
