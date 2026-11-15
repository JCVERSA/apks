package com.transsion.usercenter.kids;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.t;
import com.bumptech.glide.Glide;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLView;
import com.therouter.TheRouter;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.baselib.kids.KidsProfile;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.usercenter.R$drawable;
import com.transsion.usercenter.edit.ProfileEditCenterActivity;
import com.transsion.usercenter.kids.ManageProfilesFragment;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ni.f;
import wf.a;
import xu.g0;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004¨\u0006\u0018"}, d2 = {"Lcom/transsion/usercenter/kids/ManageProfilesFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lxu/g0;", "<init>", "()V", "", "h0", "", "dp", "k0", "(I)V", "Landroid/view/LayoutInflater;", "inflater", "e0", "(Landroid/view/LayoutInflater;)Lxu/g0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "onResume", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ManageProfilesFragment extends BaseFragment<g0> {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ManageProfilesFragment a() {
            return new ManageProfilesFragment();
        }

        private Companion() {
        }
    }

    public static final void f0(ManageProfilesFragment manageProfilesFragment, String str, Bundle bundle) {
        Intrinsics.h(str, "<unused var>");
        Intrinsics.h(bundle, "<unused var>");
        manageProfilesFragment.h0();
    }

    public static final void g0(ManageProfilesFragment manageProfilesFragment, View view) {
        a.C0922a.f(a.f74274a, "ManageProfilesFragment", "adult account edit.", false, 4, null);
        ProfileEditCenterActivity.Companion companion = ProfileEditCenterActivity.INSTANCE;
        Context contextRequireContext = manageProfilesFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        companion.a(contextRequireContext, null);
    }

    private final void h0() {
        LinearLayout linearLayout;
        BLLinearLayout bLLinearLayout;
        BLView bLView;
        LinearLayout linearLayout2;
        LinearLayout linearLayout3;
        ShapeableImageView shapeableImageView;
        LinearLayout linearLayout4;
        TnTextView tnTextView;
        ShapeableImageView shapeableImageView2;
        BLView bLView2;
        LinearLayout linearLayout5;
        LinearLayout linearLayout6;
        ShapeableImageView shapeableImageView3;
        TnTextView tnTextView2;
        LinearLayout linearLayout7;
        qx.a aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
        boolean zA = aVar != null ? aVar.a() : false;
        UserInfo userInfoI = aVar != null ? aVar.i() : null;
        if (zA) {
            g0 mViewBinding = getMViewBinding();
            if (mViewBinding != null && (linearLayout7 = mViewBinding.f75581i) != null) {
                linearLayout7.setVisibility(0);
            }
            g0 mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (tnTextView2 = mViewBinding2.f75583k) != null) {
                String nickname = userInfoI != null ? userInfoI.getNickname() : null;
                if (nickname == null) {
                    nickname = "";
                }
                tnTextView2.setText(nickname);
            }
            g0 mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (shapeableImageView3 = mViewBinding3.f75575c) != null) {
                f.a aVar2 = f.f67269a;
                Context contextRequireContext = requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                aVar2.m(contextRequireContext).g(userInfoI != null ? userInfoI.getAvatar() : null).i(R$drawable.ic_default_avatar).d(shapeableImageView3);
            }
            k0(72);
        } else {
            g0 mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (linearLayout = mViewBinding4.f75581i) != null) {
                linearLayout.setVisibility(8);
            }
            k0(0);
        }
        KidsProfile kidsProfileF = KidsAccountManager.f42144a.f();
        if (kidsProfileF == null) {
            g0 mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (linearLayout3 = mViewBinding5.f75582j) != null) {
                linearLayout3.setVisibility(8);
            }
            g0 mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (linearLayout2 = mViewBinding6.f75580h) != null) {
                linearLayout2.setVisibility(0);
            }
            g0 mViewBinding7 = getMViewBinding();
            if (mViewBinding7 != null && (bLView = mViewBinding7.f75586n) != null) {
                bLView.setVisibility(8);
            }
            g0 mViewBinding8 = getMViewBinding();
            if (mViewBinding8 == null || (bLLinearLayout = mViewBinding8.f75574b) == null) {
                return;
            }
            bLLinearLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ManageProfilesFragment.j0(this.f59138a, view);
                }
            });
            return;
        }
        g0 mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (linearLayout6 = mViewBinding9.f75582j) != null) {
            linearLayout6.setVisibility(0);
        }
        g0 mViewBinding10 = getMViewBinding();
        if (mViewBinding10 != null && (linearLayout5 = mViewBinding10.f75580h) != null) {
            linearLayout5.setVisibility(8);
        }
        g0 mViewBinding11 = getMViewBinding();
        if (mViewBinding11 != null && (bLView2 = mViewBinding11.f75586n) != null) {
            bLView2.setVisibility(0);
        }
        String avatarLocalPath = kidsProfileF.getAvatarLocalPath();
        if (avatarLocalPath == null || avatarLocalPath.length() == 0) {
            g0 mViewBinding12 = getMViewBinding();
            if (mViewBinding12 != null && (shapeableImageView = mViewBinding12.f75578f) != null) {
                shapeableImageView.setImageResource(kidsProfileF.getAvatarResId());
            }
        } else {
            g0 mViewBinding13 = getMViewBinding();
            if (mViewBinding13 != null && (shapeableImageView2 = mViewBinding13.f75578f) != null) {
                Glide.with(requireContext()).load2(new File(avatarLocalPath)).into(shapeableImageView2);
            }
        }
        g0 mViewBinding14 = getMViewBinding();
        if (mViewBinding14 != null && (tnTextView = mViewBinding14.f75584l) != null) {
            tnTextView.setText(kidsProfileF.getName());
        }
        g0 mViewBinding15 = getMViewBinding();
        if (mViewBinding15 == null || (linearLayout4 = mViewBinding15.f75582j) == null) {
            return;
        }
        linearLayout4.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ManageProfilesFragment.i0(this.f59137a, view);
            }
        });
    }

    public static final void i0(ManageProfilesFragment manageProfilesFragment, View view) {
        a.C0922a.f(a.f74274a, "ManageProfilesFragment", "kids account edit.", false, 4, null);
        KidsProfile kidsProfileF = KidsAccountManager.f42144a.f();
        if (kidsProfileF != null) {
            ProfileEditCenterActivity.Companion companion = ProfileEditCenterActivity.INSTANCE;
            Context contextRequireContext = manageProfilesFragment.requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            companion.b(contextRequireContext, kidsProfileF);
        }
    }

    public static final void j0(ManageProfilesFragment manageProfilesFragment, View view) {
        a.C0922a.f(a.f74274a, "ManageProfilesFragment", "adult account create.", false, 4, null);
        FragmentActivity fragmentActivityRequireActivity = manageProfilesFragment.requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        CreateKidsProfileDialog.Companion.b(CreateKidsProfileDialog.INSTANCE, false, false, false, 6, null).X(fragmentActivityRequireActivity, "CreateKidsProfileDialog");
    }

    private final void k0(int dp2) {
        int i10 = (int) ((dp2 * getResources().getDisplayMetrics().density) + 0.5f);
        g0 mViewBinding = getMViewBinding();
        LinearLayout linearLayout = mViewBinding != null ? mViewBinding.f75582j : null;
        g0 mViewBinding2 = getMViewBinding();
        for (LinearLayout linearLayout2 : CollectionsKt.p(linearLayout, mViewBinding2 != null ? mViewBinding2.f75580h : null)) {
            ViewGroup.LayoutParams layoutParams = linearLayout2.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null) {
                layoutParams2.setMarginStart(i10);
                linearLayout2.setLayoutParams(layoutParams2);
            }
        }
    }

    @Override
    public g0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        g0 g0VarC = g0.c(inflater);
        Intrinsics.g(g0VarC, "inflate(...)");
        return g0VarC;
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        LinearLayout linearLayout;
        Intrinsics.h(view, "view");
        getParentFragmentManager().G1("result_kids_created", getViewLifecycleOwner(), new t() {
            @Override
            public final void a(String str, Bundle bundle) {
                ManageProfilesFragment.f0(this.f59135a, str, bundle);
            }
        });
        g0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (linearLayout = mViewBinding.f75581i) == null) {
            return;
        }
        linearLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                ManageProfilesFragment.g0(this.f59136a, view2);
            }
        });
    }

    @Override
    public void lazyLoadData() {
        h0();
    }

    @Override
    public void onResume() {
        super.onResume();
        h0();
    }
}
