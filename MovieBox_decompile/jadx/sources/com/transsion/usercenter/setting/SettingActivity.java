package com.transsion.usercenter.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.core.view.PointerIconCompat;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.util.networkinfo.NetworkType;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.R$string;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.usercenter.laboratory.LaboratoryActivity;
import com.transsion.usercenter.profile.ProfileViewModel;
import com.transsion.usercenter.profile.bean.FissionState;
import com.transsion.usercenter.profile.bean.ProfileInfo;
import com.transsion.usercenter.setting.bean.UserSettingType;
import com.transsion.usercenter.setting.dialog.LocaleLanguageListDialog;
import com.transsion.usercenterapi.UpdateResultEvent;
import com.transsion.version.update.UpdateManager;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebPageIdentity;
import com.transsnet.downloader.dialog.DownloadConfirmDialog;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;
import xu.w0;

@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018\u0000 \u0084\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001CB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0005J\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u0019\u0010\u0016\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0002¢\u0006\u0004\b \u0010\u0005J\u000f\u0010!\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\u0005J\u000f\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u0005J\u000f\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0004\b$\u0010\u0005J\u000f\u0010%\u001a\u00020\u0006H\u0002¢\u0006\u0004\b%\u0010\u0005J\u000f\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b'\u0010(J\u0019\u0010+\u001a\u00020\u00062\b\u0010*\u001a\u0004\u0018\u00010)H\u0014¢\u0006\u0004\b+\u0010,J\r\u0010-\u001a\u00020\u0006¢\u0006\u0004\b-\u0010\u0005J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020.H\u0016¢\u0006\u0004\b1\u00100J\u000f\u00102\u001a\u00020\u0006H\u0014¢\u0006\u0004\b2\u0010\u0005J\u0017\u00104\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u0014H\u0016¢\u0006\u0004\b4\u0010\u0017J\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\u0005J\u000f\u00106\u001a\u00020\u0002H\u0016¢\u0006\u0004\b6\u00107J)\u0010=\u001a\u00020\u00062\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u0002082\b\u0010<\u001a\u0004\u0018\u00010;H\u0014¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u0006H\u0016¢\u0006\u0004\b?\u0010\u0005J\u000f\u0010@\u001a\u00020\rH\u0016¢\u0006\u0004\b@\u0010AR\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u001c\u0010M\u001a\b\u0012\u0004\u0012\u00020\u001b0J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010Q\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010T\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u001b\u0010Z\u001a\u00020U8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR\u0016\u0010\\\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010SR\u0016\u0010^\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010SR\u001d\u0010c\u001a\u0004\u0018\u00010_8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b`\u0010W\u001a\u0004\ba\u0010bR\u001b\u0010g\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u0010W\u001a\u0004\be\u0010fR\u001b\u0010j\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bh\u0010W\u001a\u0004\bi\u0010fR\u001b\u0010m\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bk\u0010W\u001a\u0004\bl\u0010fR\u001b\u0010r\u001a\u00020n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bo\u0010W\u001a\u0004\bp\u0010qR\u0016\u0010t\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010SR\u001b\u0010w\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bu\u0010W\u001a\u0004\bv\u0010fR\u0014\u0010z\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bx\u0010yR\u001b\u0010}\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b{\u0010W\u001a\u0004\b|\u0010fR\u001c\u0010\u0080\u0001\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b~\u0010W\u001a\u0004\b\u007f\u0010fR\u001e\u0010\u0083\u0001\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u0081\u0001\u0010W\u001a\u0005\b\u0082\u0001\u0010f¨\u0006\u0085\u0001"}, d2 = {"Lcom/transsion/usercenter/setting/SettingActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/w0;", "Lqx/b;", "<init>", "()V", "", "e1", "Y0", "z0", "initData", "", "size", "", "K0", "(J)Ljava/lang/String;", "o1", "n1", "showLoading", "E0", "Lcom/transsnet/loginapi/bean/UserInfo;", "userInfo", "y0", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "X0", "B0", "x0", "Ljv/b;", WebConstants.FIELD_ITEM, "q1", "(Ljv/b;)V", "W0", "A0", "a1", "D0", "U0", "T0", "Z0", "Lkotlinx/coroutines/t1;", "C0", "()Lkotlinx/coroutines/t1;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initView", "", "isStatusDark", "()Z", "isTranslucent", "onDestroy", "user", "onLogin", "onLogout", "S0", "()Lxu/w0;", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "onResume", "getPageName", "()Ljava/lang/String;", "Lcom/transsion/usercenter/setting/adapter/d;", "a", "Lcom/transsion/usercenter/setting/adapter/d;", "mAdapter", "Lcom/transsion/usercenter/setting/b0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/usercenter/setting/b0;", "mUserSettingViewModel", "", "c", "Ljava/util/List;", "mDataList", "Lkj/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkj/h;", "mBaseLoadingDialog", "e", "Z", "darkModeFollowSys", "Lcom/transsion/usercenter/profile/ProfileViewModel;", "f", "Lkotlin/Lazy;", "O0", "()Lcom/transsion/usercenter/profile/ProfileViewModel;", "mProfileViewModel", "g", "isRequestBatteryPermission", "h", "isOpenPip", "Lqx/a;", "i", "M0", "()Lqx/a;", "loginApi", "j", "N0", "()Ljv/b;", "logoutEntity", CampaignEx.JSON_KEY_AD_K, "R0", "userAgreement", "l", "J0", "fissionStateEntity", "Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;", "m", "P0", "()Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;", "mUserSettingLogoutDialog", "n", "haveBatteryPermission", "o", "I0", "familyModeItem", TtmlNode.TAG_P, "Ljv/b;", "downItem", CampaignEx.JSON_KEY_AD_Q, "H0", "autoplayItem", CampaignEx.JSON_KEY_AD_R, "Q0", "pipItem", "s", "L0", "idleDataShareItem", "t", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SettingActivity extends BaseActivity<w0> implements qx.b {

    public static final Companion INSTANCE = new Companion(null);

    private com.transsion.usercenter.setting.adapter.d mAdapter;

    private b0 mUserSettingViewModel;

    private kj.h mBaseLoadingDialog;

    private boolean darkModeFollowSys;

    private final Lazy mProfileViewModel;

    private boolean isRequestBatteryPermission;

    private boolean haveBatteryPermission;

    private List mDataList = new ArrayList();

    private boolean isOpenPip = true;

    private final Lazy loginApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SettingActivity.j1();
        }
    });

    private final Lazy logoutEntity = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SettingActivity.k1();
        }
    });

    private final Lazy userAgreement = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SettingActivity.r1();
        }
    });

    private final Lazy fissionStateEntity = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SettingActivity.G0();
        }
    });

    private final Lazy mUserSettingLogoutDialog = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SettingActivity.l1(this.f55328a);
        }
    });

    private final Lazy familyModeItem = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SettingActivity.F0(this.f55329a);
        }
    });

    private final jv.b downItem = new jv.b(R$string.download_in_background, UserSettingType.DOWNLOAD_SWITCH, null, Integer.valueOf(R$color.white_6), 3, null, false, false, false, false, 996, null);

    private final Lazy autoplayItem = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SettingActivity.w0(this.f55330a);
        }
    });

    private final Lazy pipItem = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SettingActivity.m1(this.f55331a);
        }
    });

    private final Lazy idleDataShareItem = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SettingActivity.V0();
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, FissionState fissionState) {
            Intrinsics.h(context, "context");
            Intent intent = new Intent(context, (Class<?>) SettingActivity.class);
            intent.setFlags(ASTNode.DEOP);
            intent.putExtra("fissionState", fissionState);
            context.startActivity(intent);
        }

        private Companion() {
        }
    }

    public class b {

        public static final int[] f55217a;

        static {
            int[] iArr = new int[UserSettingType.values().length];
            try {
                iArr[UserSettingType.UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UserSettingType.ABOUT_US.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UserSettingType.PRIVACY_POLICY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[UserSettingType.USER_AGREEMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[UserSettingType.LOGOUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[UserSettingType.LANGUAGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[UserSettingType.INVITATION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[UserSettingType.DEBUG.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[UserSettingType.NOTIFICATION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[UserSettingType.FAMILY_MODE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[UserSettingType.DOWNLOAD_SWITCH.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[UserSettingType.PIP_SWITCH.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[UserSettingType.AUTOPLAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[UserSettingType.WATCH_OPTION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[UserSettingType.PRIVACY_DATA_SETTING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            f55217a = iArr;
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f55218a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55218a = function;
        }

        @Override
        public final Function a() {
            return this.f55218a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f55218a.invoke(obj);
        }
    }

    public SettingActivity() {
        final Function0 function0 = null;
        this.mProfileViewModel = new ViewModelLazy(Reflection.b(ProfileViewModel.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<v0.c>() {
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<p1.a>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final p1.a invoke() {
                p1.a aVar;
                Function0 function1 = function0;
                return (function1 == null || (aVar = (p1.a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
            }
        });
    }

    private final void A0() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        boolean z10 = !bVar.b().getBoolean("k_UGC_VIDEO_AUTO_PLAY", false);
        H0().p(z10);
        bVar.b().putBoolean("k_UGC_VIDEO_AUTO_PLAY", z10);
        q1(H0());
    }

    private final void B0() {
        this.isRequestBatteryPermission = true;
        if (this.haveBatteryPermission) {
            com.transsnet.downloader.util.d.f57712a.k(this);
        } else {
            com.transsnet.downloader.util.d.m(com.transsnet.downloader.util.d.f57712a, this, getPageName(), null, 4, null);
        }
    }

    private final t1 C0() {
        return kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new SettingActivity$clickFamilyMode$1(this, null), 3, null);
    }

    private final void D0() {
        this.isOpenPip = !this.isOpenPip;
        Q0().p(this.isOpenPip);
        com.transsion.baselib.report.launch.b.f42221a.b().putBoolean("k_pip_enable", this.isOpenPip);
        q1(Q0());
    }

    public final void E0() {
        kj.h hVar;
        try {
            kj.h hVar2 = this.mBaseLoadingDialog;
            if (hVar2 == null || !hVar2.isShowing() || (hVar = this.mBaseLoadingDialog) == null) {
                return;
            }
            hVar.dismiss();
        } catch (Exception e10) {
            Log.e("error", "e " + e10.getMessage());
        }
    }

    public static final jv.b F0(SettingActivity settingActivity) {
        return new jv.b(R$string.family_mode, UserSettingType.FAMILY_MODE, settingActivity.getString(R$string.family_mode_tips), Integer.valueOf(R$color.white_6), 3, null, false, false, false, false, 992, null);
    }

    public static final jv.b G0() {
        return new jv.b(com.transsion.usercenter.R$string.user_setting_invitation_code, UserSettingType.INVITATION, null, Integer.valueOf(R$color.white_6), 0, null, false, false, false, false, 1012, null);
    }

    private final jv.b H0() {
        return (jv.b) this.autoplayItem.getValue();
    }

    public final jv.b I0() {
        return (jv.b) this.familyModeItem.getValue();
    }

    private final jv.b J0() {
        return (jv.b) this.fissionStateEntity.getValue();
    }

    private final String K0(long size) {
        double d10 = size / 1024.0d;
        if (d10 < 0.0d) {
            d10 = 0.0d;
        }
        String[] strArr = {" KB", " MB", " GB"};
        for (int i10 = 0; i10 < 3; i10++) {
            String str = strArr[i10];
            if (d10 < 1024.0d) {
                return MathKt.c(d10) + str;
            }
            d10 /= 1024.0d;
        }
        return MathKt.c(d10) + " GB";
    }

    private final jv.b L0() {
        return (jv.b) this.idleDataShareItem.getValue();
    }

    private final qx.a M0() {
        return (qx.a) this.loginApi.getValue();
    }

    private final jv.b N0() {
        return (jv.b) this.logoutEntity.getValue();
    }

    private final ProfileViewModel O0() {
        return (ProfileViewModel) this.mProfileViewModel.getValue();
    }

    private final DownloadConfirmDialog P0() {
        return (DownloadConfirmDialog) this.mUserSettingLogoutDialog.getValue();
    }

    private final jv.b Q0() {
        return (jv.b) this.pipItem.getValue();
    }

    private final jv.b R0() {
        return (jv.b) this.userAgreement.getValue();
    }

    private final void T0() {
        Navigator.x(TheRouter.c("/profile/setting_privacy_data"), this, null, 2, null);
    }

    private final void U0() {
        Navigator.x(TheRouter.c("/profile/watch_option"), this, null, 2, null);
    }

    public static final jv.b V0() {
        return new jv.b(com.transsion.usercenter.R$string.privacy_settings, UserSettingType.PRIVACY_DATA_SETTING, null, Integer.valueOf(R$drawable.bg_radius_bottom_6_color_white_6p), 0, null, false, false, false, false, 1012, null);
    }

    private final void W0() {
        H0().p(com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_UGC_VIDEO_AUTO_PLAY", false));
    }

    private final void X0() {
        boolean zJ = com.transsnet.downloader.util.d.f57712a.j(this);
        this.haveBatteryPermission = zJ;
        this.downItem.p(zJ);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void Y0() {
        UserInfo userInfoI;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.blankj.utilcode.util.c.h() + "-" + com.blankj.utilcode.util.c.f());
        qx.a aVarM0 = M0();
        sb2.append(" | " + ((aVarM0 == null || (userInfoI = aVarM0.i()) == null) ? null : userInfoI.getUserId()));
        sb2.append(" | " + Build.VERSION.RELEASE);
        sb2.append(" | " + Build.MODEL);
        NetworkType networkTypeC = yg.l.f76264a.c();
        sb2.append(" | " + (networkTypeC != null ? networkTypeC.name() : null));
        com.transsion.transfer.wifi.util.c cVar = com.transsion.transfer.wifi.util.c.f53892a;
        sb2.append(" | " + cVar.c(this));
        sb2.append(" | " + cVar.b());
        ((w0) getMViewBinding()).f75807c.setText(sb2.toString());
    }

    private final void Z0() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        boolean z10 = bVar.b().getBoolean("k_is_family_mode_badge", true);
        I0().o(z10);
        if (z10) {
            bVar.b().putBoolean("k_is_family_mode_badge", false);
            qv.b bVar2 = new qv.b();
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = qv.b.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, bVar2, 0L);
        }
        I0().p(bVar.b().getBoolean("k_is_family_mode", false));
        qi.h.f69682a.z(getPageName(), MapsKt.f(TuplesKt.a("opt_type", "family_mode_switch")));
    }

    private final void a1() {
        this.isOpenPip = com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_pip_enable", true);
        Q0().p(this.isOpenPip);
    }

    public static final void b1(SettingActivity settingActivity, View view) {
        qx.a aVarM0 = settingActivity.M0();
        if (aVarM0 != null) {
            aVarM0.k(settingActivity);
        }
    }

    public static final Unit c1(SettingActivity settingActivity, UpdateResultEvent it) {
        Object next;
        Intrinsics.h(it, "it");
        if (it.getHasUpdate()) {
            Iterator it2 = settingActivity.mDataList.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (((jv.b) next).j() != UserSettingType.UPDATE);
            jv.b bVar = (jv.b) next;
            if (bVar != null) {
                bVar.q(settingActivity.getString(com.transsion.usercenter.R$string.text_diff_new_version_ready));
            }
            com.transsion.usercenter.setting.adapter.d dVar = settingActivity.mAdapter;
            if (dVar != null) {
                dVar.notifyItemChanged(0);
            }
        }
        return Unit.f64096a;
    }

    public static final void d1(SettingActivity settingActivity, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof jv.b) {
            UserSettingType userSettingTypeJ = ((jv.b) item).j();
            switch (userSettingTypeJ == null ? -1 : b.f55217a[userSettingTypeJ.ordinal()]) {
                case 1:
                    if (!yg.l.f76264a.e()) {
                        fh.b.f60176a.d(com.transsion.usercenter.R$string.base_net_err);
                    } else {
                        settingActivity.showLoading();
                        settingActivity.z0();
                    }
                    break;
                case 2:
                    settingActivity.startActivity(new Intent(settingActivity, (Class<?>) SettingAboutUsActivity.class));
                    break;
                case 3:
                    Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", "https://h5-static.aoneroom.com/spa/html/moviebox-privacy-policy.html"), settingActivity, null, 2, null);
                    break;
                case 4:
                    Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", "https://h5-static.aoneroom.com/spa/html/moviebox-terms-of-use.html"), settingActivity, null, 2, null);
                    break;
                case 5:
                    settingActivity.o1();
                    break;
                case 6:
                    settingActivity.n1();
                    break;
                case 7:
                    Navigator.w(TheRouter.c("/fission/invitation_code").K("url", "https://h5-static.aoneroom.com/spa/html/moviebox-privacy-policy.html"), settingActivity, 4097, null, 4, null);
                    break;
                case 8:
                    settingActivity.startActivity(new Intent(settingActivity, (Class<?>) LaboratoryActivity.class));
                    break;
                case 9:
                    Navigator.x(TheRouter.c("/profile/setting_notice"), settingActivity, null, 2, null);
                    break;
                case 10:
                    settingActivity.C0();
                    break;
                case 11:
                    settingActivity.B0();
                    break;
                case 12:
                    settingActivity.D0();
                    break;
                case 13:
                    settingActivity.A0();
                    break;
                case 14:
                    settingActivity.U0();
                    break;
                case 15:
                    settingActivity.T0();
                    break;
            }
        }
    }

    private final void e1() {
        b0 b0Var = (b0) new v0(this).a(b0.class);
        b0Var.f().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SettingActivity.f1(this.f55332a, (Long) obj);
            }
        }));
        b0Var.g().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SettingActivity.g1(this.f55257a, (String) obj);
            }
        }));
        b0Var.h().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SettingActivity.h1((Boolean) obj);
            }
        }));
        this.mUserSettingViewModel = b0Var;
        O0().p().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SettingActivity.i1(this.f55268a, (ProfileInfo) obj);
            }
        }));
    }

    public static final Unit f1(SettingActivity settingActivity, Long l10) {
        jv.b bVar = (jv.b) settingActivity.mDataList.get(1);
        Intrinsics.e(l10);
        bVar.m(settingActivity.K0(l10.longValue()));
        bVar.n(false);
        com.transsion.usercenter.setting.adapter.d dVar = settingActivity.mAdapter;
        if (dVar != null) {
            dVar.notifyItemChanged(1);
        }
        return Unit.f64096a;
    }

    public static final Unit g1(SettingActivity settingActivity, String str) {
        settingActivity.E0();
        return Unit.f64096a;
    }

    public static final Unit h1(Boolean bool) {
        fh.b.f60176a.d(com.transsion.usercenter.R$string.user_setting_clear_cache_success);
        return Unit.f64096a;
    }

    public static final Unit i1(SettingActivity settingActivity, ProfileInfo profileInfo) {
        String boundInviteCode;
        FissionState fissionState = profileInfo != null ? profileInfo.getFissionState() : null;
        qx.a aVarM0 = settingActivity.M0();
        if (aVarM0 != null && aVarM0.a() && fissionState != null && fissionState.isNew() && (((boundInviteCode = fissionState.getBoundInviteCode()) == null || boundInviteCode.length() == 0) && settingActivity.mDataList.size() > 1 && !Intrinsics.c(settingActivity.mDataList.get(1), settingActivity.J0()))) {
            settingActivity.mDataList.add(1, settingActivity.J0());
            com.transsion.usercenter.setting.adapter.d dVar = settingActivity.mAdapter;
            if (dVar != null) {
                dVar.notifyItemInserted(1);
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x017e  */
    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
        boolean z10;
        String boundInviteCode;
        this.mDataList.add(new jv.b(com.transsion.usercenter.R$string.user_setting_title_app, null, null, null, 2, null, false, false, false, false, PointerIconCompat.TYPE_CELL, null));
        this.mDataList.add(new jv.b(com.transsion.usercenter.R$string.notifications, UserSettingType.NOTIFICATION, null, Integer.valueOf(R$drawable.bg_radius_top_6_color_white_6p), 0, null, false, false, false, false, 756, null));
        this.mDataList.add(new jv.b(com.transsion.usercenter.R$string.language, UserSettingType.LANGUAGE, null, Integer.valueOf(R$color.white_6), 0, null, false, false, false, false, 1012, null));
        ij.g gVar = ij.g.f62108a;
        if (gVar.b()) {
            this.mDataList.add(H0());
        }
        if (!gVar.b()) {
            this.mDataList.add(new jv.b(R$string.watch_options, UserSettingType.WATCH_OPTION, null, Integer.valueOf(R$color.white_6), 0, ij.t.f62121a.b() ? getString(R$string.streaming_txt) : getString(com.transsion.usercenter.R$string.feedback_download), false, false, false, false, 980, null));
        }
        this.mDataList.add(I0());
        this.mDataList.add(this.downItem);
        this.mDataList.add(Q0());
        this.mDataList.add(L0());
        this.mDataList.add(new jv.b(com.transsion.usercenter.R$string.user_setting_title_more, null, null, null, 2, null, false, false, false, false, PointerIconCompat.TYPE_CELL, null));
        this.mDataList.add(new jv.b(com.transsion.usercenter.R$string.user_setting_update, UserSettingType.UPDATE, null, Integer.valueOf(R$drawable.bg_radius_top_6_color_white_6p), 0, UpdateManager.f55354f.a().g() ? getString(com.transsion.usercenter.R$string.text_diff_new_version_ready) : "", true, false, false, false, 660, null));
        FissionState fissionState = (FissionState) getIntent().getSerializableExtra("fissionState");
        if (fissionState != null && fissionState.isNew() && ((boundInviteCode = fissionState.getBoundInviteCode()) == null || boundInviteCode.length() == 0)) {
            this.mDataList.add(J0());
        }
        this.mDataList.add(new jv.b(com.transsion.usercenter.R$string.user_setting_About_us, UserSettingType.ABOUT_US, null, Integer.valueOf(R$color.white_6), 0, null, false, false, false, false, 1012, null));
        this.mDataList.add(new jv.b(com.transsion.usercenter.R$string.login_privacy, UserSettingType.PRIVACY_POLICY, null, Integer.valueOf(R$color.white_6), 0, null, false, false, false, false, 1012, null));
        qx.a aVarM0 = M0();
        if (aVarM0 != null) {
            z10 = aVarM0.a();
        }
        this.mDataList.add(R0());
        qx.a aVarM1 = M0();
        if (aVarM1 != null) {
            aVarM1.e(this);
        }
        if (z10) {
            R0().l(Integer.valueOf(R$color.white_6));
            ((w0) getMViewBinding()).f75806b.setVisibility(8);
            this.mDataList.add(N0());
        } else {
            R0().l(Integer.valueOf(R$drawable.bg_radius_bottom_6_color_white_6p));
            ((w0) getMViewBinding()).f75806b.setVisibility(0);
        }
        com.transsion.usercenter.setting.adapter.d dVar = this.mAdapter;
        if (dVar != null) {
            dVar.q1(this.mDataList);
        }
    }

    public static final qx.a j1() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final jv.b k1() {
        return new jv.b(com.transsion.usercenter.R$string.logout, UserSettingType.LOGOUT, null, Integer.valueOf(R$drawable.bg_radius_bottom_6_color_white_6p), 0, null, false, false, false, false, 1012, null);
    }

    public static final DownloadConfirmDialog l1(SettingActivity settingActivity) {
        return DownloadConfirmDialog.Companion.b(DownloadConfirmDialog.INSTANCE, null, null, settingActivity.getString(com.transsion.usercenter.R$string.logout_tips), null, 11, null);
    }

    public static final jv.b m1(SettingActivity settingActivity) {
        return new jv.b(com.transsion.usercenter.R$string.auto_activate_miniplayer, UserSettingType.PIP_SWITCH, settingActivity.getString(com.transsion.usercenter.R$string.auto_activate_miniplayer_tips), Integer.valueOf(R$color.white_6), 3, null, false, false, false, false, 992, null);
    }

    private final void n1() {
        new LocaleLanguageListDialog().k0(this, "LocaleLanguageListDialog");
    }

    private final void o1() {
        P0().s0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SettingActivity.p1(this.f55272a, ((Boolean) obj).booleanValue());
            }
        });
        P0().k0(this, "LogoutDialog");
    }

    public static final Unit p1(SettingActivity settingActivity, boolean z10) {
        qx.a aVarM0;
        if (z10 && (aVarM0 = settingActivity.M0()) != null) {
            aVarM0.d();
        }
        return Unit.f64096a;
    }

    public final void q1(jv.b item) {
        com.transsion.usercenter.setting.adapter.d dVar;
        int iIndexOf = this.mDataList.indexOf(item);
        if (iIndexOf == -1 || (dVar = this.mAdapter) == null) {
            return;
        }
        dVar.notifyItemChanged(iIndexOf, ClientABTestDTOKt.SWITCH);
    }

    public static final jv.b r1() {
        return new jv.b(com.transsion.usercenter.R$string.login_user_agreement, UserSettingType.USER_AGREEMENT, null, Integer.valueOf(R$drawable.bg_radius_bottom_6_color_white_6p), 0, null, false, false, false, false, 1012, null);
    }

    public final void showLoading() {
        if (this.mBaseLoadingDialog == null) {
            this.mBaseLoadingDialog = new kj.h(this);
        }
        kj.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.show();
        }
    }

    public static final jv.b w0(SettingActivity settingActivity) {
        return new jv.b(com.transsion.usercenter.R$string.autoplay, UserSettingType.AUTOPLAY, settingActivity.getString(com.transsion.usercenter.R$string.autoplay_tips), Integer.valueOf(R$color.white_6), 3, null, false, false, false, false, 992, null);
    }

    private final void x0() {
        if (this.isRequestBatteryPermission) {
            this.isRequestBatteryPermission = false;
            boolean zJ = com.transsnet.downloader.util.d.f57712a.j(this);
            this.haveBatteryPermission = zJ;
            this.downItem.p(zJ);
            q1(this.downItem);
            hx.a aVar = new hx.a();
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = hx.a.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, aVar, 0L);
        }
    }

    private final void y0(UserInfo userInfo) {
        O0().k(userInfo != null ? userInfo.getUserId() : null);
    }

    private final void z0() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new SettingActivity$checkUpdateByUser$1(this, null), 3, null);
    }

    @Override
    public w0 getViewBinding() {
        w0 w0VarC = w0.c(getLayoutInflater());
        Intrinsics.g(w0VarC, "inflate(...)");
        return w0VarC;
    }

    @Override
    public String getPageName() {
        return "setting";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void initView() {
        TitleLayout toolBar = ((w0) getMViewBinding()).f75809e;
        Intrinsics.g(toolBar, "toolBar");
        uf.c.e(toolBar);
        Y0();
        com.transsion.usercenter.setting.adapter.d dVar = new com.transsion.usercenter.setting.adapter.d(null, 1, null);
        dVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                SettingActivity.d1(this.f55269a, baseQuickAdapter, view, i10);
            }
        });
        this.mAdapter = dVar;
        RecyclerView recyclerView = ((w0) getMViewBinding()).f75808d;
        recyclerView.setAdapter(this.mAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        ((w0) getMViewBinding()).f75809e.setTitleText(com.transsion.usercenter.R$string.user_setting);
        ((w0) getMViewBinding()).f75806b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SettingActivity.b1(this.f55270a, view);
            }
        });
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SettingActivity.c1(this.f55271a, (UpdateResultEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = UpdateResultEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().r(), false, function1);
        X0();
        a1();
        Z0();
        if (ij.g.f62108a.b()) {
            W0();
        }
    }

    @Override
    public boolean isStatusDark() {
        return this.darkModeFollowSys && !ij.y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 4097 && resultCode == -1) {
            int iIndexOf = this.mDataList.indexOf(J0());
            if (iIndexOf >= 0) {
                this.mDataList.remove(iIndexOf);
            }
            com.transsion.usercenter.setting.adapter.d dVar = this.mAdapter;
            if (dVar != null) {
                dVar.notifyItemRemoved(iIndexOf);
            }
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        initData();
        e1();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        qx.a aVarM0 = M0();
        if (aVarM0 != null) {
            aVarM0.j(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        ((w0) getMViewBinding()).f75806b.setVisibility(8);
        com.transsion.usercenter.setting.adapter.d dVar = this.mAdapter;
        if (dVar != null) {
            dVar.p(N0());
        }
        y0(user);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onLogout() {
        ((w0) getMViewBinding()).f75806b.setVisibility(0);
        this.mDataList.remove(N0());
        this.mDataList.remove(J0());
        com.transsion.usercenter.setting.adapter.d dVar = this.mAdapter;
        if (dVar != null) {
            dVar.notifyDataSetChanged();
        }
        onBackPressed();
    }

    @Override
    public void onResume() {
        super.onResume();
        x0();
    }

    @Override
    public void onUpdateUserInfo(UserInfo userInfo) {
        qx.b.a.c(this, userInfo);
    }
}
