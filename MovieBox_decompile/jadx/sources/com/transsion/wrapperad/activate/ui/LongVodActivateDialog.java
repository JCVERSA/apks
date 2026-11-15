package com.transsion.wrapperad.activate.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.ad.ps.activate.PSActivateManager;
import com.transsion.ad.ps.activate.PsActivateBean;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.memberapi.MemberSource;
import com.transsion.wrapperad.R$layout;
import com.transsion.wrapperad.R$style;
import com.transsion.wrapperad.activate.ui.LongVodActivateDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import im.c;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import nw.e;
import qi.h;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0003J\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010 \u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001a2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b \u0010!R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.¨\u00060"}, d2 = {"Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "s0", "w0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lnw/e;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "v0", "(Lnw/e;)V", "Lcom/transsion/memberapi/MemberSource;", "from", "", "pageName", "r0", "(Lcom/transsion/memberapi/MemberSource;Ljava/lang/String;)V", "moduleName", "packageName", "q0", "(Ljava/lang/String;Ljava/lang/String;)V", "c", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/memberapi/MemberSource;", "e", "Lnw/e;", "Lpw/a;", "f", "Lpw/a;", "bind", "", "g", "Z", "isReward", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LongVodActivateDialog extends BaseDialog {

    private String pageName;

    private MemberSource from;

    private e listener;

    private pw.a bind;

    private boolean isReward;

    public static final class a implements c {
        a() {
        }

        @Override
        public void a() {
            wf.a.C0922a.g(wf.a.f74274a, LongVodActivateDialog.this.getClassTag() + " --> onResolutionTipFailed() --> onFailed() --> 开通会员失败", false, 2, null);
        }

        @Override
        public void onSuccess() {
            LongVodActivateDialog.this.isReward = true;
            LongVodActivateDialog.this.dismissAllowingStateLoss();
        }
    }

    public static final class b implements e {
        b() {
        }

        @Override
        public void a(boolean z10) {
            wf.a.C0922a.g(wf.a.f74274a, LongVodActivateDialog.this.getClassTag() + " --> showAd() --> onActivate{open App 状态回调} --> isActivate = " + z10, false, 2, null);
            LongVodActivateDialog.this.isReward = z10;
            LongVodActivateDialog.this.dismissAllowingStateLoss();
        }
    }

    public LongVodActivateDialog() {
        super(R$layout.long_vod_dialog_ad_intercept_layout);
        this.from = MemberSource.SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR;
    }

    private final void s0() {
        AppCompatImageView appCompatImageView;
        ConstraintLayout constraintLayout;
        pw.a aVar = this.bind;
        if (aVar != null && (constraintLayout = aVar.f69271d) != null) {
            constraintLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    LongVodActivateDialog.t0(this.f67384a, view);
                }
            });
        }
        pw.a aVar2 = this.bind;
        if (aVar2 == null || (appCompatImageView = aVar2.f69272e) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodActivateDialog.u0(this.f67385a, view);
            }
        });
    }

    public static final void t0(LongVodActivateDialog longVodActivateDialog, View view) {
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            im.b.a.c(bVar, longVodActivateDialog.getActivity(), MemberSource.SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG, longVodActivateDialog.new a(), false, null, 24, null);
        }
        longVodActivateDialog.q0("vip", "vip");
    }

    public static final void u0(LongVodActivateDialog longVodActivateDialog, View view) {
        longVodActivateDialog.dismissAllowingStateLoss();
        longVodActivateDialog.q0("close", "close");
    }

    private final void w0() {
        LongVodActivateAdView longVodActivateAdView;
        PsActivateBean psActivateBeanB = PSActivateManager.f41122a.b();
        if (psActivateBeanB == null) {
            dismissAllowingStateLoss();
            return;
        }
        pw.a aVar = this.bind;
        if (aVar == null || (longVodActivateAdView = aVar.f69269b) == null) {
            return;
        }
        longVodActivateAdView.showAd(psActivateBeanB, this, new b());
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle_ad);
    }

    @Override
    public void onDismiss(DialogInterface dialog) {
        LongVodActivateAdView longVodActivateAdView;
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        pw.a aVar = this.bind;
        if (aVar != null && (longVodActivateAdView = aVar.f69269b) != null) {
            longVodActivateAdView.destroy();
        }
        e eVar = this.listener;
        if (eVar != null) {
            eVar.a(this.isReward);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.isReward) {
            dismissAllowingStateLoss();
        }
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        ConstraintLayout constraintLayout;
        ConstraintLayout constraintLayout2;
        Window window;
        Window window2;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setGravity(17);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null) {
            dialog3.setCancelable(false);
        }
        this.bind = pw.a.a(view);
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null ? bVar.z() : false) {
            pw.a aVar = this.bind;
            if (aVar != null && (constraintLayout = aVar.f69271d) != null) {
                constraintLayout.setVisibility(0);
            }
        } else {
            pw.a aVar2 = this.bind;
            if (aVar2 != null && (constraintLayout2 = aVar2.f69271d) != null) {
                constraintLayout2.setVisibility(8);
            }
        }
        s0();
        w0();
        HashMap map = new HashMap();
        map.put("dialog_name", "ad_active_hd");
        h hVar = h.f69682a;
        String str = this.pageName;
        if (str == null) {
            str = "LongVodActivateDialog";
        }
        hVar.q(str, "dialog_show", map);
    }

    public final void q0(String moduleName, String packageName) {
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        map.put("dialog_name", "ad_active_hd");
        map.put("module_name", moduleName);
        if (packageName == null) {
            packageName = "";
        }
        map.put("package_name", packageName);
        h hVar = h.f69682a;
        String str = this.pageName;
        if (str == null) {
            str = "LongVodActivateDialog";
        }
        hVar.q(str, "click", map);
    }

    public final void r0(MemberSource from, String pageName) {
        Intrinsics.h(from, "from");
        this.from = from;
        this.pageName = pageName;
    }

    public final void v0(e listener) {
        this.listener = listener;
    }
}
