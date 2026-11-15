package com.transsnet.downloader.dialog;

import android.app.Application;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.memberapi.MemberSceneType;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0016¢\u0006\u0004\b\u0005\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\u0007J!\u0010\u0010\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0014\u001a\u00020\b2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0012¢\u0006\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0017\u001a\u0004\b\u0004\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001e\u0010\"\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "", "haveBatteryPermission", "isEnableMember", "<init>", "(ZZ)V", "()V", "", "initView", "t0", "r0", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lkotlin/Function0;", "callback", "s0", "(Lkotlin/jvm/functions/Function0;)V", "c", "Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Z", "setEnableMember", "(Z)V", "Lbx/l;", "e", "Lbx/l;", "bind", "f", "Lkotlin/jvm/functions/Function0;", "batteryPermissionCallback", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadTaskControlManagerDialog extends BaseDialog {

    private boolean haveBatteryPermission;

    private boolean isEnableMember;

    private bx.l bind;

    private Function0 batteryPermissionCallback;

    public static final class a implements wj.g {
        a() {
        }

        @Override
        public void a(boolean z10) {
            wj.g.a.a(this, z10);
        }

        @Override
        public void onFail() {
            wj.h.f74282a.a(DownloadTaskControlManagerDialog.this.getClassTag() + " --> interception() --> onFail() --> 失败了");
        }

        @Override
        public void onSuccess() {
            wj.h.f74282a.a(DownloadTaskControlManagerDialog.this.getClassTag() + " --> checkRights --> onSuccess() --> 成功了");
            ax.b bVar = new ax.b();
            im.b bVar2 = (im.b) TheRouter.d(im.b.class, new Object[0]);
            bVar.i(bVar2 != null ? bVar2.B() : 1);
            com.transsnet.downloader.manager.p.a aVar = com.transsnet.downloader.manager.p.f57282a;
            com.transsnet.downloader.manager.p.a.b(aVar, null, 1, null).G(bVar);
            com.transsnet.downloader.manager.p.a.b(aVar, null, 1, null).v();
            fh.b.f60176a.d(R$string.download_task_control_manager_start_mul);
            DownloadTaskControlManagerDialog.this.dismissAllowingStateLoss();
        }
    }

    public DownloadTaskControlManagerDialog(boolean z10, boolean z11) {
        super(R$layout.dialog_download_task_control_manager_layout);
        this.haveBatteryPermission = z10;
        this.isEnableMember = z11;
    }

    private final void initView() {
        Group group;
        Group group2;
        bx.l lVar = this.bind;
        if (lVar != null && (group2 = lVar.f16148c) != null) {
            group2.setVisibility(this.isEnableMember ? 0 : 8);
        }
        bx.l lVar2 = this.bind;
        if (lVar2 == null || (group = lVar2.f16147b) == null) {
            return;
        }
        group.setVisibility(this.haveBatteryPermission ? 8 : 0);
    }

    private final void r0() {
        wj.f fVar = (wj.f) TheRouter.d(wj.f.class, new Object[0]);
        if (fVar != null) {
            fVar.e(0, "", new a(), MemberSceneType.SCENE_MULTIDL);
        }
    }

    private final void t0() {
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        bx.l lVar = this.bind;
        if (lVar != null && (textView4 = lVar.f16151f) != null) {
            textView4.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadTaskControlManagerDialog.u0(this.f56550a, view);
                }
            });
        }
        bx.l lVar2 = this.bind;
        if (lVar2 != null && (textView3 = lVar2.f16154i) != null) {
            textView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadTaskControlManagerDialog.v0(this.f56517a, view);
                }
            });
            textView3.setText(com.transsnet.downloader.manager.p.a.b(com.transsnet.downloader.manager.p.f57282a, null, 1, null).i() ? getString(R$string.download_pause_all) : getString(R$string.download_resume_all));
        }
        bx.l lVar3 = this.bind;
        if (lVar3 != null && (textView2 = lVar3.f16152g) != null) {
            Application applicationA = Utils.a();
            int i10 = R$string.download_xx_size_at_once;
            im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
            String string = applicationA.getString(i10, String.valueOf(bVar != null ? Integer.valueOf(bVar.B()) : null));
            Intrinsics.g(string, "getString(...)");
            textView2.setText(string);
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadTaskControlManagerDialog.w0(this.f56519a, view);
                }
            });
        }
        bx.l lVar4 = this.bind;
        if (lVar4 == null || (textView = lVar4.f16150e) == null) {
            return;
        }
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DownloadTaskControlManagerDialog.x0(this.f56521a, view);
            }
        });
    }

    public static final void u0(DownloadTaskControlManagerDialog downloadTaskControlManagerDialog, View view) {
        downloadTaskControlManagerDialog.dismissAllowingStateLoss();
    }

    public static final void v0(DownloadTaskControlManagerDialog downloadTaskControlManagerDialog, View view) {
        com.transsnet.downloader.manager.p.a aVar = com.transsnet.downloader.manager.p.f57282a;
        if (com.transsnet.downloader.manager.p.a.b(aVar, null, 1, null).i()) {
            com.transsnet.downloader.manager.p.a.b(aVar, null, 1, null).n();
            wj.d dVar = (wj.d) TheRouter.d(wj.d.class, new Object[0]);
            if (dVar != null) {
                dVar.f();
            }
        } else {
            com.transsnet.downloader.manager.p.a.b(aVar, null, 1, null).v();
            wj.d dVar2 = (wj.d) TheRouter.d(wj.d.class, new Object[0]);
            if (dVar2 != null) {
                dVar2.e();
            }
            im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
            if (bVar != null ? bVar.e() : false) {
                fh.b.f60176a.d(R$string.download_task_control_manager_start_mul);
            } else {
                fh.b.f60176a.d(R$string.download_task_control_manager_start);
            }
        }
        downloadTaskControlManagerDialog.dismissAllowingStateLoss();
    }

    public static final void w0(DownloadTaskControlManagerDialog downloadTaskControlManagerDialog, View view) {
        wj.d dVar = (wj.d) TheRouter.d(wj.d.class, new Object[0]);
        if (dVar != null) {
            dVar.g();
        }
        downloadTaskControlManagerDialog.r0();
    }

    public static final void x0(DownloadTaskControlManagerDialog downloadTaskControlManagerDialog, View view) {
        FragmentActivity activity = downloadTaskControlManagerDialog.getActivity();
        if (activity != null && !activity.isFinishing() && !activity.isDestroyed()) {
            com.transsnet.downloader.util.d.f57712a.l(activity, "download_manager_dialog", downloadTaskControlManagerDialog.batteryPermissionCallback);
        }
        downloadTaskControlManagerDialog.dismissAllowingStateLoss();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setGravity(80);
            window.setDimAmount(0.5f);
            window.setBackgroundDrawable(null);
            window.setWindowAnimations(R$style.BaseBottomDialogAnimation);
            window.setLayout(-1, -2);
        }
        this.bind = bx.l.a(view);
        initView();
        t0();
    }

    public final void s0(Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.batteryPermissionCallback = callback;
    }

    public DownloadTaskControlManagerDialog() {
        this(false, false);
    }
}
