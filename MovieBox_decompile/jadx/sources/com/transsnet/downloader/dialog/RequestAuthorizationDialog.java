package com.transsnet.downloader.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.FragmentManager;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.push.PushConstants;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 22\u00020\u0001:\u00013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0015\u001a\u00020\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0018\u001a\u00020\u00172\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J#\u0010\u001d\u001a\u00020\u00062\u0014\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001a¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010\"\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001f2\b\u0010!\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0006H\u0016¢\u0006\u0004\b$\u0010\u0003R \u0010'\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u001e\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010&R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100¨\u00064"}, d2 = {"Lcom/transsnet/downloader/dialog/RequestAuthorizationDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "p0", "(Landroid/view/View;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lkotlin/Function0;", "call", "t0", "(Lkotlin/jvm/functions/Function0;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "", "", "map", "s0", "(Ljava/util/Map;)V", "Landroidx/fragment/app/FragmentManager;", "manager", "tag", PushConstants.PUSH_SERVICE_TYPE_SHOW, "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V", "onDestroyView", "c", "Lkotlin/jvm/functions/Function0;", "dismissListener", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "callback", "Lbx/n;", "e", "Lbx/n;", "viewBinding", "", "f", "Z", "isReport", "g", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequestAuthorizationDialog extends BaseDialog {

    public static final Companion INSTANCE = new Companion(null);

    private Function0 dismissListener;

    private Function0 callback;

    private bx.n viewBinding;

    private boolean isReport;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RequestAuthorizationDialog a() {
            return new RequestAuthorizationDialog();
        }

        private Companion() {
        }
    }

    public RequestAuthorizationDialog() {
        super(R$layout.dialog_request_authorization);
    }

    private final void p0(View view) {
        AppCompatImageView appCompatImageView;
        View view2;
        bx.n nVarA = bx.n.a(view);
        this.viewBinding = nVarA;
        if (nVarA != null && (view2 = nVarA.f16175b) != null) {
            view2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    RequestAuthorizationDialog.q0(this.f56530a, view3);
                }
            });
        }
        bx.n nVar = this.viewBinding;
        if (nVar == null || (appCompatImageView = nVar.f16176c) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view3) {
                RequestAuthorizationDialog.r0(this.f56532a, view3);
            }
        });
    }

    public static final void q0(RequestAuthorizationDialog requestAuthorizationDialog, View view) {
        Function0 function0 = requestAuthorizationDialog.callback;
        if (function0 != null) {
            function0.invoke();
        }
        HashMap map = new HashMap();
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "allow");
        requestAuthorizationDialog.s0(map);
        requestAuthorizationDialog.isReport = true;
        requestAuthorizationDialog.dismissAllowingStateLoss();
    }

    public static final void r0(RequestAuthorizationDialog requestAuthorizationDialog, View view) {
        HashMap map = new HashMap();
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "back");
        requestAuthorizationDialog.s0(map);
        requestAuthorizationDialog.isReport = true;
        requestAuthorizationDialog.dismissAllowingStateLoss();
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
            attributes.width = com.transsion.baseui.util.a.f42330a.b(contextRequireContext);
            window2.setBackgroundDrawable(null);
            window2.setAttributes(attributes);
        }
        return cVar;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        HashMap map = new HashMap();
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "others");
        s0(map);
        this.isReport = false;
    }

    @Override
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        Function0 function0 = this.dismissListener;
        if (function0 != null) {
        }
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        p0(view);
    }

    public final void s0(Map map) {
        Intrinsics.h(map, "map");
        if (this.isReport) {
            return;
        }
        qi.h.f69682a.o("download_authorization", map);
    }

    @Override
    public void show(FragmentManager manager, String tag) {
        Intrinsics.h(manager, "manager");
        super.show(manager, tag);
        HashMap map = new HashMap();
        map.put(EventConstants.KEY_ACTION, PushConstants.PUSH_SERVICE_TYPE_SHOW);
        qi.h.f69682a.z("download_authorization", map);
        com.transsnet.downloader.util.d.f57712a.d();
    }

    public final void t0(Function0 call) {
        Intrinsics.h(call, "call");
        this.callback = call;
    }
}
