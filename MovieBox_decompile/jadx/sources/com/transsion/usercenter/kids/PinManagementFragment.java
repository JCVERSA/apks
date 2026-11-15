package com.transsion.usercenter.kids;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.noober.background.view.BLConstraintLayout;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.baseui.util.m;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.kids.PinManagementFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import wf.a;
import xu.i0;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/transsion/usercenter/kids/PinManagementFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lxu/i0;", "<init>", "()V", "", "h0", "Landroidx/fragment/app/FragmentActivity;", "g0", "()Landroidx/fragment/app/FragmentActivity;", "Landroid/view/LayoutInflater;", "inflater", "f0", "(Landroid/view/LayoutInflater;)Lxu/i0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "onResume", "", "a", "Ljava/lang/String;", "kidsId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PinManagementFragment extends BaseFragment<i0> {

    public static final Companion INSTANCE = new Companion(null);

    private String kidsId = "";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PinManagementFragment a(String kidsId) {
            Intrinsics.h(kidsId, "kidsId");
            PinManagementFragment pinManagementFragment = new PinManagementFragment();
            Bundle bundle = new Bundle();
            bundle.putString("arg_kids_id", kidsId);
            pinManagementFragment.setArguments(bundle);
            return pinManagementFragment;
        }

        private Companion() {
        }
    }

    private final FragmentActivity g0() {
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return null;
        }
        return activity;
    }

    private final void h0() {
        BLConstraintLayout bLConstraintLayout;
        BLConstraintLayout bLConstraintLayout2;
        i0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (bLConstraintLayout2 = mViewBinding.f75605e) != null) {
            bLConstraintLayout2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    PinManagementFragment.i0(this.f59118a, view);
                }
            });
        }
        i0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (bLConstraintLayout = mViewBinding2.f75606f) == null) {
            return;
        }
        bLConstraintLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                PinManagementFragment.l0(this.f59120a, view);
            }
        });
    }

    public static final void i0(PinManagementFragment pinManagementFragment, View view) {
        a.C0922a.f(a.f74274a, "PinManagementFragment", "click change.", false, 4, null);
        final FragmentActivity fragmentActivityG0 = pinManagementFragment.g0();
        if (fragmentActivityG0 == null) {
            return;
        }
        PinInputDialog.Companion.d(PinInputDialog.INSTANCE, pinManagementFragment.kidsId, false, new Function0() {
            @Override
            public final Object invoke() {
                return PinManagementFragment.j0(fragmentActivityG0);
            }
        }, 2, null).X(fragmentActivityG0, "PinInputDialog");
    }

    public static final Unit j0(FragmentActivity fragmentActivity) {
        PinInputDialog.Companion.b(PinInputDialog.INSTANCE, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PinManagementFragment.k0((String) obj);
            }
        }, null, 4, null).X(fragmentActivity, "PinInputDialog");
        return Unit.f64096a;
    }

    public static final Unit k0(String pin) {
        Intrinsics.h(pin, "pin");
        a.C0922a.f(a.f74274a, "PinManagementFragment", "change success.", false, 4, null);
        KidsAccountManager.f42144a.p(pin);
        return Unit.f64096a;
    }

    public static final void l0(final PinManagementFragment pinManagementFragment, View view) {
        a.C0922a.f(a.f74274a, "PinManagementFragment", "click delete.", false, 4, null);
        final FragmentActivity fragmentActivityG0 = pinManagementFragment.g0();
        if (fragmentActivityG0 == null) {
            return;
        }
        PinInputDialog.Companion.d(PinInputDialog.INSTANCE, pinManagementFragment.kidsId, false, new Function0() {
            @Override
            public final Object invoke() {
                return PinManagementFragment.m0(this.f59123a, fragmentActivityG0);
            }
        }, 2, null).X(fragmentActivityG0, "PinInputDialog");
    }

    public static final Unit m0(PinManagementFragment pinManagementFragment, FragmentActivity fragmentActivity) {
        a.C0922a.f(a.f74274a, "PinManagementFragment", "delete success.", false, 4, null);
        KidsAccountManager.f42144a.p("");
        String string = pinManagementFragment.getString(R$string.kids_pin_delete_finish);
        Intrinsics.g(string, "getString(...)");
        m.b(string);
        fragmentActivity.finish();
        return Unit.f64096a;
    }

    @Override
    public i0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        i0 i0VarC = i0.c(inflater);
        Intrinsics.g(i0VarC, "inflate(...)");
        return i0VarC;
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        String string;
        Intrinsics.h(view, "view");
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("arg_kids_id")) == null) {
            string = "";
        }
        this.kidsId = string;
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onResume() {
        super.onResume();
        h0();
    }
}
