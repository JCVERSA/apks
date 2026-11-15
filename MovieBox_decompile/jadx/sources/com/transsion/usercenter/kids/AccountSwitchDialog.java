package com.transsion.usercenter.kids;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.Glide;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.common.Scopes;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.noober.background.view.BLConstraintLayout;
import com.therouter.TheRouter;
import com.tn.lib.dialog.BaseDialog;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.baselib.kids.KidsProfile;
import com.transsion.usercenter.R$drawable;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.kids.AccountSwitchDialog;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.o;
import java.io.File;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ni.f;
import qi.h;
import qx.a;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 12\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\u0003J\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0019\u0010\u0003J!\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u001d\u0010!\u001a\u0004\u0018\u00010\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010'R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u00100\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010-¨\u00062"}, d2 = {"Lcom/transsion/usercenter/kids/AccountSwitchDialog;", "Lcom/tn/lib/dialog/BaseDialog;", "<init>", "()V", "", "p0", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "i0", "(Landroid/view/View;)V", "t0", "v0", "s0", "", "moduleName", "r0", "(Ljava/lang/String;)V", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", TmcConstants.NAVIGATION_ON_START, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lqx/a;", "a", "Lkotlin/Lazy;", "getMLoginApi", "()Lqx/a;", "mLoginApi", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "pageName", "", "c", "Z", "recordDismissOnClose", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "isAdultSelected", "Landroid/widget/FrameLayout;", "e", "Landroid/widget/FrameLayout;", "ringAdult", "f", "ringKids", "g", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AccountSwitchDialog extends BaseDialog {

    public static final Companion INSTANCE = new Companion(null);

    private final Lazy mLoginApi;

    private String pageName;

    private boolean recordDismissOnClose;

    private boolean isAdultSelected;

    private FrameLayout ringAdult;

    private FrameLayout ringKids;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static AccountSwitchDialog b(Companion companion, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            return companion.a(z10);
        }

        public final AccountSwitchDialog a(boolean z10) {
            AccountSwitchDialog accountSwitchDialog = new AccountSwitchDialog();
            Bundle bundle = new Bundle();
            bundle.putBoolean("arg_record_dismiss_on_close", z10);
            accountSwitchDialog.setArguments(bundle);
            return accountSwitchDialog;
        }

        private Companion() {
        }
    }

    public AccountSwitchDialog() {
        super(R$layout.dialog_account_switch);
        this.mLoginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return AccountSwitchDialog.mLoginApi_delegate$lambda$0();
            }
        });
        this.pageName = "";
        this.isAdultSelected = true;
    }

    private final a getMLoginApi() {
        return (a) this.mLoginApi.getValue();
    }

    private final void i0(View view) {
        ImageView imageView = (ImageView) view.findViewById(R$id.ivAdultAvatar);
        TnTextView tnTextView = (TnTextView) view.findViewById(R$id.tvAdultName);
        ImageView imageView2 = (ImageView) view.findViewById(R$id.ivAdultLoginArrow);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.layoutAdultAccount);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R$id.layoutKidsAccount);
        ImageView imageView3 = (ImageView) view.findViewById(R$id.ivKidsAvatar);
        TnTextView tnTextView2 = (TnTextView) view.findViewById(R$id.tvKidsName);
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R$id.layoutAddKids);
        BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) view.findViewById(R$id.layoutAddBtn);
        View viewFindViewById = view.findViewById(R$id.tvManageProfiles);
        a mLoginApi = getMLoginApi();
        UserInfo userInfoI = mLoginApi != null ? mLoginApi.i() : null;
        a mLoginApi2 = getMLoginApi();
        boolean zA = mLoginApi2 != null ? mLoginApi2.a() : false;
        final String nickname = userInfoI != null ? userInfoI.getNickname() : null;
        final String avatar = userInfoI != null ? userInfoI.getAvatar() : null;
        f.a aVar = f.f67269a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        f.b bVarI = aVar.m(contextRequireContext).g(avatar).i(R$drawable.ic_default_avatar);
        Intrinsics.e(imageView);
        bVarI.d(imageView);
        if (zA) {
            if (tnTextView != null) {
                tnTextView.setText(nickname == null ? "" : nickname);
            }
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
            if (linearLayout != null) {
                linearLayout.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        AccountSwitchDialog.j0(this.f59104a, view2);
                    }
                });
            }
        } else {
            if (tnTextView != null) {
                tnTextView.setText(getString(R$string.profile_setting_log_in));
            }
            if (imageView2 != null) {
                imageView2.setVisibility(0);
            }
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    AccountSwitchDialog.k0(this.f59106a, view2);
                }
            });
            if (tnTextView != null) {
                tnTextView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        AccountSwitchDialog.l0(this.f59108a, view2);
                    }
                });
            }
        }
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    AccountSwitchDialog.m0(this.f59110a, nickname, avatar, view2);
                }
            });
        }
        this.isAdultSelected = !o.f62115a.i();
        v0();
        final KidsProfile kidsProfileF = KidsAccountManager.f42144a.f();
        if (kidsProfileF == null) {
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(0);
            }
            if (bLConstraintLayout != null) {
                bLConstraintLayout.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        AccountSwitchDialog.o0(this.f59116a, view2);
                    }
                });
                return;
            }
            return;
        }
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(0);
        }
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        String avatarLocalPath = kidsProfileF.getAvatarLocalPath();
        if (avatarLocalPath != null && avatarLocalPath.length() != 0) {
            Glide.with(requireContext()).load2(new File(avatarLocalPath)).into(imageView3);
        } else if (imageView3 != null) {
            imageView3.setImageResource(kidsProfileF.getAvatarResId());
        }
        if (tnTextView2 != null) {
            tnTextView2.setText(kidsProfileF.getName());
        }
        linearLayout2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                AccountSwitchDialog.n0(this.f59113a, kidsProfileF, view2);
            }
        });
    }

    public static final void j0(AccountSwitchDialog accountSwitchDialog, View view) {
        accountSwitchDialog.t0();
    }

    public static final void k0(AccountSwitchDialog accountSwitchDialog, View view) {
        accountSwitchDialog.t0();
    }

    public static final void l0(AccountSwitchDialog accountSwitchDialog, View view) {
        Context contextRequireContext = accountSwitchDialog.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        accountSwitchDialog.dismissAllowingStateLoss();
        wf.a.C0922a.f(wf.a.f74274a, "AccountSwitchDialog", "login adult account.", false, 4, null);
        a aVar = (a) TheRouter.d(a.class, new Object[0]);
        if (aVar != null) {
            aVar.k(contextRequireContext);
        }
    }

    public static final void m0(AccountSwitchDialog accountSwitchDialog, String str, String str2, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "AccountSwitchDialog", "enter manage profile.", false, 4, null);
        accountSwitchDialog.dismissAllowingStateLoss();
        accountSwitchDialog.r0("manage_profile");
        ManageProfilesActivity.INSTANCE.a(str, str2);
    }

    public static final a mLoginApi_delegate$lambda$0() {
        return (a) TheRouter.d(a.class, new Object[0]);
    }

    public static final void n0(AccountSwitchDialog accountSwitchDialog, KidsProfile kidsProfile, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "AccountSwitchDialog", "switch to kids.", false, 4, null);
        if (o.f62115a.i()) {
            accountSwitchDialog.dismissAllowingStateLoss();
            return;
        }
        accountSwitchDialog.isAdultSelected = false;
        accountSwitchDialog.v0();
        KidsAccountManager.f42144a.c(kidsProfile);
        accountSwitchDialog.dismissAllowingStateLoss();
        accountSwitchDialog.r0(Scopes.PROFILE);
    }

    public static final void o0(AccountSwitchDialog accountSwitchDialog, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "AccountSwitchDialog", "start create kids account.", false, 4, null);
        FragmentActivity fragmentActivityRequireActivity = accountSwitchDialog.requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        accountSwitchDialog.dismissAllowingStateLoss();
        CreateKidsProfileDialog.Companion.b(CreateKidsProfileDialog.INSTANCE, false, false, false, 7, null).X(fragmentActivityRequireActivity, "CreateKidsProfileDialog");
    }

    private final void p0() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -2;
        window.setAttributes(attributes);
        window.setGravity(80);
    }

    public static final void q0(AccountSwitchDialog accountSwitchDialog, View view) {
        if (accountSwitchDialog.recordDismissOnClose) {
            KidsAccountManager.f42144a.l();
        }
        accountSwitchDialog.dismissAllowingStateLoss();
        accountSwitchDialog.r0("close");
    }

    private final void r0(String moduleName) {
        HashMap map = new HashMap();
        map.put("dialog_name", "profile_select");
        map.put("module_name", moduleName);
        h.f69682a.o(this.pageName, map);
    }

    private final void s0() {
        HashMap map = new HashMap();
        map.put("dialog_name", "profile_select");
        h.f69682a.q(this.pageName, "dialog_show", map);
    }

    private final void t0() {
        String kidsId;
        wf.a.C0922a.f(wf.a.f74274a, "AccountSwitchDialog", "switch to adult.", false, 4, null);
        r0(Scopes.PROFILE);
        if (!o.f62115a.i()) {
            dismissAllowingStateLoss();
            return;
        }
        this.isAdultSelected = true;
        v0();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        KidsAccountManager kidsAccountManager = KidsAccountManager.f42144a;
        KidsProfile kidsProfileF = kidsAccountManager.f();
        if (kidsProfileF == null || (kidsId = kidsProfileF.getKidsId()) == null) {
            return;
        }
        dismissAllowingStateLoss();
        if (kidsAccountManager.i()) {
            PinInputDialog.Companion.d(PinInputDialog.INSTANCE, kidsId, false, new Function0() {
                @Override
                public final Object invoke() {
                    return AccountSwitchDialog.u0();
                }
            }, 2, null).X(fragmentActivityRequireActivity, "PinInputDialog");
        } else {
            kidsAccountManager.d();
        }
    }

    public static final Unit u0() {
        KidsAccountManager.f42144a.d();
        return Unit.f64096a;
    }

    private final void v0() {
        FrameLayout frameLayout = this.ringAdult;
        if (frameLayout != null) {
            frameLayout.setSelected(this.isAdultSelected);
        }
        FrameLayout frameLayout2 = this.ringKids;
        if (frameLayout2 != null) {
            frameLayout2.setSelected(!this.isAdultSelected);
        }
    }

    @Override
    public void onAttach(Context context) {
        Intrinsics.h(context, "context");
        super.onAttach(context);
        String simpleName = requireActivity().getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        this.pageName = simpleName;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        wf.a.C0922a.f(wf.a.f74274a, "AccountSwitchDialog", "dialog show.", false, 4, null);
        setStyle(2, 0);
        Bundle arguments = getArguments();
        this.recordDismissOnClose = arguments != null ? arguments.getBoolean("arg_record_dismiss_on_close") : false;
        s0();
    }

    @Override
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setBackgroundDrawableResource(R.color.transparent);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.ringAdult = (FrameLayout) view.findViewById(R$id.ringAdult);
        this.ringKids = (FrameLayout) view.findViewById(R$id.ringKids);
        p0();
        i0(view);
        ImageView imageView = (ImageView) view.findViewById(R$id.ivClose);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    AccountSwitchDialog.q0(this.f59102a, view2);
                }
            });
        }
    }
}
