package com.transsnet.downloader.dialog;

import android.app.Application;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import bx.z0;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.view.BLFrameLayout;
import com.tn.lib.view.CircleProgressBar;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.util.DocumentsUtils;
import com.transsnet.downloader.util.DownloadSDCardUtil;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 c2\u00020\u0001:\u0001dB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u0003J\u001f\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0019\u0010\u0003J\u0019\u0010\u001c\u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010\u001f\u001a\u00020\u001e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001f\u0010 J!\u0010!\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\t¢\u0006\u0004\b#\u0010\u0003J\r\u0010$\u001a\u00020\t¢\u0006\u0004\b$\u0010\u0003J!\u0010'\u001a\u00020\t2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0%¢\u0006\u0004\b'\u0010(J\u001b\u0010*\u001a\u00020\t2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\t0)¢\u0006\u0004\b*\u0010+J\u0015\u0010-\u001a\u00020\t2\u0006\u0010,\u001a\u00020\u0004¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\tH\u0016¢\u0006\u0004\b/\u0010\u0003R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u00109\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00106R\u0016\u0010;\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00106R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010B\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010E\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010G\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010AR$\u0010J\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u001e\u0010M\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010P\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0016\u0010R\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010OR\u0018\u0010V\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010X\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010OR\u0016\u0010Z\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010OR\u0016\u0010\\\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u00106R\"\u0010b\u001a\u0010\u0012\f\u0012\n _*\u0004\u0018\u00010^0^0]8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b`\u0010a¨\u0006e"}, d2 = {"Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "x0", "()I", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "E0", "(Landroid/view/View;)V", "C0", "Lyw/b;", "info", RequestParameters.POSITION, "y0", "(Lyw/b;I)V", "u0", "K0", "w0", "v0", "", "N0", "()Z", "M0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initViewModel", "initListener", "Lkotlin/Function1;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "I0", "(Lkotlin/jvm/functions/Function1;)V", "Lkotlin/Function0;", "H0", "(Lkotlin/jvm/functions/Function0;)V", "percent", "J0", "(I)V", "onResume", "Lbx/c0;", "c", "Lbx/c0;", "mViewBinding", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "downloadBtnSaveText", "e", "downloadTitleText", "f", "savedRootPath", "Lcom/transsnet/downloader/adapter/n;", "g", "Lcom/transsnet/downloader/adapter/n;", "listAdapter", "h", "I", "selectedPosition", "i", "Lyw/b;", "selectedInfo", "j", "savedPosition", CampaignEx.JSON_KEY_AD_K, "Lkotlin/jvm/functions/Function1;", "saveListener", "l", "Lkotlin/jvm/functions/Function0;", "cancelListener", "m", "Z", "isTransferring", "n", "checkTransferFailed", "Lbx/j;", "o", "Lbx/j;", "downloadResPathSaveAllowAccessBinding", TtmlNode.TAG_P, "isDocumentTreePermissionChecked", CampaignEx.JSON_KEY_AD_Q, "isDocumentTreePermissionGranted", CampaignEx.JSON_KEY_AD_R, "curSDRootPath", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "s", "Landroidx/activity/result/b;", "permissionDocumentBeforeQ", "t", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadReDetectorSaveDialog extends BaseDialog {

    public static final Companion INSTANCE = new Companion(null);

    private bx.c0 mViewBinding;

    private String downloadBtnSaveText;

    private String downloadTitleText;

    private String savedRootPath;

    private com.transsnet.downloader.adapter.n listAdapter;

    private int selectedPosition;

    private yw.b selectedInfo;

    private int savedPosition;

    private Function1 saveListener;

    private Function0 cancelListener;

    private boolean isTransferring;

    private boolean checkTransferFailed;

    private bx.j downloadResPathSaveAllowAccessBinding;

    private boolean isDocumentTreePermissionChecked;

    private boolean isDocumentTreePermissionGranted;

    private String curSDRootPath;

    private final androidx.activity.result.b permissionDocumentBeforeQ;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadReDetectorSaveDialog a(String str, boolean z10) {
            DownloadReDetectorSaveDialog downloadReDetectorSaveDialog = new DownloadReDetectorSaveDialog();
            downloadReDetectorSaveDialog.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_download_save_path", str), TuplesKt.a("extra_check_transfer_failed", Boolean.valueOf(z10))));
            return downloadReDetectorSaveDialog;
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56485a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56485a = function;
        }

        @Override
        public final Function a() {
            return this.f56485a;
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
            this.f56485a.invoke(obj);
        }
    }

    public DownloadReDetectorSaveDialog() {
        super(R$layout.fragment_download_res_path_save);
        String string = Utils.a().getString(R$string.download_save_to);
        Intrinsics.g(string, "getString(...)");
        this.downloadBtnSaveText = string;
        String string2 = Utils.a().getString(R$string.download_move_to);
        Intrinsics.g(string2, "getString(...)");
        this.downloadTitleText = string2;
        this.savedRootPath = ui.b.f73084a.e();
        this.selectedPosition = -1;
        this.savedPosition = -1;
        this.curSDRootPath = "";
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                DownloadReDetectorSaveDialog.G0(this.f56541a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.permissionDocumentBeforeQ = bVarRegisterForActivityResult;
    }

    public static final void A0(DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, View view) {
        yw.b bVar;
        z0 z0Var;
        AppCompatTextView appCompatTextView;
        z0 z0Var2;
        AppCompatTextView appCompatTextView2;
        z0 z0Var3;
        BLFrameLayout bLFrameLayout;
        z0 z0Var4;
        View view2;
        z0 z0Var5;
        AppCompatTextView appCompatTextView3;
        bx.c0 c0Var = downloadReDetectorSaveDialog.mViewBinding;
        if (!Intrinsics.b((c0Var == null || (z0Var5 = c0Var.f15960b) == null || (appCompatTextView3 = z0Var5.f16334h) == null) ? null : Float.valueOf(appCompatTextView3.getAlpha()), 1.0f) || downloadReDetectorSaveDialog.isTransferring || (bVar = downloadReDetectorSaveDialog.selectedInfo) == null) {
            return;
        }
        downloadReDetectorSaveDialog.isTransferring = true;
        downloadReDetectorSaveDialog.setCancelable(false);
        Function1 function1 = downloadReDetectorSaveDialog.saveListener;
        if (function1 != null) {
            function1.invoke(bVar);
        }
        bx.c0 c0Var2 = downloadReDetectorSaveDialog.mViewBinding;
        if (c0Var2 != null && (z0Var4 = c0Var2.f15960b) != null && (view2 = z0Var4.f16339m) != null) {
            view2.setVisibility(0);
        }
        bx.c0 c0Var3 = downloadReDetectorSaveDialog.mViewBinding;
        if (c0Var3 != null && (z0Var3 = c0Var3.f15960b) != null && (bLFrameLayout = z0Var3.f16328b) != null) {
            bLFrameLayout.setVisibility(0);
        }
        if (downloadReDetectorSaveDialog.checkTransferFailed) {
            bx.c0 c0Var4 = downloadReDetectorSaveDialog.mViewBinding;
            if (c0Var4 == null || (z0Var2 = c0Var4.f15960b) == null || (appCompatTextView2 = z0Var2.f16336j) == null) {
                return;
            }
            appCompatTextView2.setText(downloadReDetectorSaveDialog.getString(R$string.download_moving));
            return;
        }
        bx.c0 c0Var5 = downloadReDetectorSaveDialog.mViewBinding;
        if (c0Var5 == null || (z0Var = c0Var5.f15960b) == null || (appCompatTextView = z0Var.f16336j) == null) {
            return;
        }
        appCompatTextView.setText(downloadReDetectorSaveDialog.getString(R$string.download_saving));
    }

    public static final void B0(DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, View view) {
        z0 z0Var;
        View view2;
        z0 z0Var2;
        BLFrameLayout bLFrameLayout;
        downloadReDetectorSaveDialog.isTransferring = false;
        downloadReDetectorSaveDialog.setCancelable(true);
        bx.c0 c0Var = downloadReDetectorSaveDialog.mViewBinding;
        if (c0Var != null && (z0Var2 = c0Var.f15960b) != null && (bLFrameLayout = z0Var2.f16328b) != null) {
            bLFrameLayout.setVisibility(8);
        }
        bx.c0 c0Var2 = downloadReDetectorSaveDialog.mViewBinding;
        if (c0Var2 != null && (z0Var = c0Var2.f15960b) != null && (view2 = z0Var.f16339m) != null) {
            view2.setVisibility(8);
        }
        Function0 function0 = downloadReDetectorSaveDialog.cancelListener;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final void C0() {
        z0 z0Var;
        RecyclerView recyclerView;
        com.transsnet.downloader.adapter.n nVar = new com.transsnet.downloader.adapter.n(true, new ArrayList());
        nVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                DownloadReDetectorSaveDialog.D0(this.f56543a, baseQuickAdapter, view, i10);
            }
        });
        this.listAdapter = nVar;
        bx.c0 c0Var = this.mViewBinding;
        if (c0Var == null || (z0Var = c0Var.f15960b) == null || (recyclerView = z0Var.f16333g) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = x0();
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.listAdapter);
    }

    public static final void D0(DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object objF0 = adapter.f0(i10);
        Intrinsics.f(objF0, "null cannot be cast to non-null type com.transsnet.downloader.bean.DownloadSDCardPathInfo");
        downloadReDetectorSaveDialog.y0((yw.b) objF0, i10);
    }

    private final void E0(View view) {
        String strE;
        z0 z0Var;
        AppCompatTextView appCompatTextView;
        z0 z0Var2;
        AppCompatTextView appCompatTextView2;
        Bundle arguments = getArguments();
        if (arguments == null || (strE = arguments.getString("extra_download_save_path")) == null) {
            strE = ui.b.f73084a.e();
        }
        this.savedRootPath = strE;
        this.mViewBinding = bx.c0.a(view);
        Bundle arguments2 = getArguments();
        boolean z10 = arguments2 != null ? arguments2.getBoolean("extra_check_transfer_failed") : false;
        this.checkTransferFailed = z10;
        if (z10) {
            bx.c0 c0Var = this.mViewBinding;
            if (c0Var == null || (z0Var2 = c0Var.f15960b) == null || (appCompatTextView2 = z0Var2.f16337k) == null) {
                return;
            }
            appCompatTextView2.setText(this.downloadTitleText + "…");
            return;
        }
        bx.c0 c0Var2 = this.mViewBinding;
        if (c0Var2 == null || (z0Var = c0Var2.f15960b) == null || (appCompatTextView = z0Var.f16337k) == null) {
            return;
        }
        appCompatTextView.setText(this.downloadBtnSaveText + "…");
    }

    public static final Unit F0(DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, List list) {
        z0 z0Var;
        AppCompatTextView appCompatTextView;
        z0 z0Var2;
        AppCompatTextView appCompatTextView2;
        wf.a.C0922a.v(wf.a.f74274a, "DownloadReDetectorSaveDialog", "path size = " + list.size() + " ", false, 4, null);
        bx.c0 c0Var = downloadReDetectorSaveDialog.mViewBinding;
        if (c0Var != null && (z0Var2 = c0Var.f15960b) != null && (appCompatTextView2 = z0Var2.f16334h) != null) {
            appCompatTextView2.setAlpha(0.5f);
        }
        Intrinsics.e(list);
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            yw.b bVar = (yw.b) obj;
            if (bVar.f()) {
                downloadReDetectorSaveDialog.selectedPosition = i10;
                downloadReDetectorSaveDialog.savedPosition = i10;
                bx.c0 c0Var2 = downloadReDetectorSaveDialog.mViewBinding;
                if (c0Var2 != null && (z0Var = c0Var2.f15960b) != null && (appCompatTextView = z0Var.f16334h) != null) {
                    appCompatTextView.setAlpha(1.0f);
                }
                downloadReDetectorSaveDialog.selectedInfo = bVar;
            }
            i10 = i11;
        }
        com.transsnet.downloader.adapter.n nVar = downloadReDetectorSaveDialog.listAdapter;
        if (nVar != null) {
            nVar.n1(list);
        }
        return Unit.f64096a;
    }

    public static final void G0(DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            if (it.getData() != null) {
                Intent data = it.getData();
                Intrinsics.e(data);
                if (data.getData() != null) {
                    wf.a.C0922a c0922a = wf.a.f74274a;
                    Intent data2 = it.getData();
                    Intrinsics.e(data2);
                    wf.a.C0922a.f(c0922a, "DownloadReDetectorSaveDialog", "onStoragePermissionGranted------- uri = " + data2.getData(), false, 4, null);
                    DocumentsUtils documentsUtils = DocumentsUtils.f57670a;
                    Application applicationA = Utils.a();
                    String str = downloadReDetectorSaveDialog.curSDRootPath;
                    Intent data3 = it.getData();
                    Intrinsics.e(data3);
                    Uri data4 = data3.getData();
                    Intrinsics.e(data4);
                    documentsUtils.m(applicationA, str, data4);
                    FragmentActivity fragmentActivityRequireActivity = downloadReDetectorSaveDialog.requireActivity();
                    String packageName = downloadReDetectorSaveDialog.requireActivity().getPackageName();
                    Intent data5 = it.getData();
                    Intrinsics.e(data5);
                    Uri data6 = data5.getData();
                    Intrinsics.e(data6);
                    fragmentActivityRequireActivity.grantUriPermission(packageName, data6, 3);
                    ContentResolver contentResolver = downloadReDetectorSaveDialog.requireActivity().getContentResolver();
                    Intent data7 = it.getData();
                    Intrinsics.e(data7);
                    Uri data8 = data7.getData();
                    Intrinsics.e(data8);
                    contentResolver.takePersistableUriPermission(data8, 3);
                    downloadReDetectorSaveDialog.isDocumentTreePermissionGranted = true;
                    downloadReDetectorSaveDialog.v0();
                    return;
                }
            }
            downloadReDetectorSaveDialog.isDocumentTreePermissionGranted = false;
        }
    }

    private final void K0() {
        ConstraintLayout root;
        bx.c0 c0Var;
        ViewStub viewStub;
        View viewInflate;
        if (this.downloadResPathSaveAllowAccessBinding == null && (c0Var = this.mViewBinding) != null && (viewStub = c0Var.f15961c) != null && (viewInflate = viewStub.inflate()) != null && (viewInflate.getParent() instanceof ViewGroup)) {
            bx.j jVarA = bx.j.a(viewInflate);
            jVarA.f16097d.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadReDetectorSaveDialog.L0(this.f56542a, view);
                }
            });
            jVarA.f16096c.setText(getString(this.checkTransferFailed ? R$string.download_allow_access_to_move_tips : R$string.download_allow_access_to_save_tips));
            this.downloadResPathSaveAllowAccessBinding = jVarA;
        }
        bx.j jVar = this.downloadResPathSaveAllowAccessBinding;
        if (jVar == null || (root = jVar.getRoot()) == null) {
            return;
        }
        uf.c.k(root);
    }

    public static final void L0(DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, View view) {
        downloadReDetectorSaveDialog.w0();
    }

    private final void M0() {
        try {
            Intent intent = null;
            if (Build.VERSION.SDK_INT >= 24) {
                FragmentActivity activity = getActivity();
                Intrinsics.e(activity);
                StorageVolume storageVolume = ((StorageManager) activity.getSystemService(StorageManager.class)).getStorageVolume(new File(this.curSDRootPath));
                if (storageVolume != null) {
                    intent = storageVolume.createAccessIntent(null);
                }
            }
            if (intent == null) {
                intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
            }
            this.permissionDocumentBeforeQ.a(intent);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private final boolean N0() {
        int i10 = Build.VERSION.SDK_INT;
        if (this.isDocumentTreePermissionChecked) {
            return !this.isDocumentTreePermissionGranted;
        }
        this.isDocumentTreePermissionChecked = true;
        if (i10 <= 28) {
            String strB = "";
            for (yw.f fVar : DownloadSDCardUtil.f57674a.b()) {
                if (fVar.c()) {
                    strB = fVar.b();
                    this.curSDRootPath = strB;
                }
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, "DownloadReDetectorSaveDialog", "onStoragePermissionGranted，1  sdRootPath = " + strB, false, 4, null);
            if (strB.length() > 0) {
                DocumentsUtils documentsUtils = DocumentsUtils.f57670a;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                boolean zD = documentsUtils.d(applicationA, strB);
                wf.a.C0922a.f(c0922a, "DownloadReDetectorSaveDialog", " check other permission, showOpenDocumentTree = " + zD, false, 4, null);
                if (zD) {
                    this.isDocumentTreePermissionGranted = false;
                    return true;
                }
            }
        }
        this.isDocumentTreePermissionGranted = true;
        return false;
    }

    private final void u0() {
        if (!DownloadUtil.f57680a.D() || N0()) {
            K0();
        } else {
            v0();
        }
    }

    private final void v0() {
        ConstraintLayout root;
        bx.j jVar = this.downloadResPathSaveAllowAccessBinding;
        if (jVar == null || (root = jVar.getRoot()) == null) {
            return;
        }
        uf.c.g(root);
    }

    private final void w0() {
        if (!DownloadUtil.f57680a.D()) {
            com.transsnet.downloader.viewmodel.a0.f57862a.x();
        } else if (N0()) {
            M0();
        }
    }

    private final int x0() {
        int i10 = getResources().getDisplayMetrics().heightPixels;
        return (i10 - (i10 / 3)) - com.blankj.utilcode.util.a0.a(116.0f);
    }

    private final void y0(yw.b info, int position) {
        z0 z0Var;
        AppCompatTextView appCompatTextView;
        if (this.isTransferring) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "DownloadReDetectorSaveDialog", StringsKt.n("\n            path， handleItemClick, position = " + position + ", selectedPosition = " + this.selectedPosition + " \n                pathName =  " + info.d() + " ,downloadPath =  " + info.b() + " ,downloadShowPath =  " + info.c() + "\n        "), false, 4, null);
        int i10 = this.selectedPosition;
        if (i10 == position) {
            return;
        }
        if (i10 >= 0) {
            com.transsnet.downloader.adapter.n nVar = this.listAdapter;
            yw.b bVar = nVar != null ? (yw.b) nVar.f0(i10) : null;
            if (bVar != null) {
                bVar.g(false);
            }
            com.transsnet.downloader.adapter.n nVar2 = this.listAdapter;
            if (nVar2 != null) {
                nVar2.notifyItemChanged(this.selectedPosition, Boolean.FALSE);
            }
        }
        this.selectedPosition = position;
        info.g(true);
        com.transsnet.downloader.adapter.n nVar3 = this.listAdapter;
        if (nVar3 != null) {
            nVar3.notifyItemChanged(position, Boolean.TRUE);
        }
        this.selectedInfo = info;
        bx.c0 c0Var = this.mViewBinding;
        if (c0Var == null || (z0Var = c0Var.f15960b) == null || (appCompatTextView = z0Var.f16334h) == null) {
            return;
        }
        appCompatTextView.setAlpha(1.0f);
    }

    public static final void z0(DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, View view) {
        if (downloadReDetectorSaveDialog.isTransferring) {
            return;
        }
        downloadReDetectorSaveDialog.dismissAllowingStateLoss();
    }

    public final void H0(Function0 listener) {
        Intrinsics.h(listener, "listener");
        this.cancelListener = listener;
    }

    public final void I0(Function1 listener) {
        Intrinsics.h(listener, "listener");
        this.saveListener = listener;
    }

    public final void J0(int percent) {
        z0 z0Var;
        AppCompatTextView appCompatTextView;
        z0 z0Var2;
        CircleProgressBar circleProgressBar;
        bx.c0 c0Var = this.mViewBinding;
        if (c0Var != null && (z0Var2 = c0Var.f15960b) != null && (circleProgressBar = z0Var2.f16332f) != null) {
            circleProgressBar.setProgress(percent);
        }
        bx.c0 c0Var2 = this.mViewBinding;
        if (c0Var2 == null || (z0Var = c0Var2.f15960b) == null || (appCompatTextView = z0Var.f16335i) == null) {
            return;
        }
        appCompatTextView.setText(percent + "%");
    }

    public final void initListener() {
        z0 z0Var;
        AppCompatImageView appCompatImageView;
        z0 z0Var2;
        AppCompatTextView appCompatTextView;
        z0 z0Var3;
        ImageView imageView;
        bx.c0 c0Var = this.mViewBinding;
        if (c0Var != null && (z0Var3 = c0Var.f15960b) != null && (imageView = z0Var3.f16329c) != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadReDetectorSaveDialog.z0(this.f56544a, view);
                }
            });
        }
        bx.c0 c0Var2 = this.mViewBinding;
        if (c0Var2 != null && (z0Var2 = c0Var2.f15960b) != null && (appCompatTextView = z0Var2.f16334h) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadReDetectorSaveDialog.A0(this.f56545a, view);
                }
            });
        }
        bx.c0 c0Var3 = this.mViewBinding;
        if (c0Var3 == null || (z0Var = c0Var3.f15960b) == null || (appCompatImageView = z0Var.f16330d) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DownloadReDetectorSaveDialog.B0(this.f56546a, view);
            }
        });
    }

    public final void initViewModel() {
        wf.a.C0922a.r(wf.a.f74274a, "DownloadReDetectorSaveDialog", new String[]{"initViewModel "}, false, 4, null);
        DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModel = (DownloadResourcesDetectorViewModel) new v0(this).a(DownloadResourcesDetectorViewModel.class);
        downloadResourcesDetectorViewModel.x().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadReDetectorSaveDialog.F0(this.f56547a, (List) obj);
            }
        }));
        downloadResourcesDetectorViewModel.l(this.savedRootPath);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(contextRequireContext, getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.BaseBottomDialogAnimation);
        }
        Window window2 = cVar.getWindow();
        if (window2 != null) {
            window2.setGravity(80);
            window2.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window2.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = -1;
            window2.setBackgroundDrawable(null);
            window2.setAttributes(attributes);
        }
        return cVar;
    }

    @Override
    public void onResume() {
        super.onResume();
        u0();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        E0(view);
        initListener();
        C0();
        initViewModel();
    }
}
