package com.transsion.member.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.member.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u0000 '2\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B'\b\u0016\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0002\u0010\tJ\u0019\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0014\u0010\u000eJ\u0019\u0010\u0016\u001a\u00020\u00152\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\f2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u001c\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006)"}, d2 = {"Lcom/transsion/member/dialog/PurchaseSucceedDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", CampaignEx.JSON_KEY_TITLE, "buttonTitle", "Lim/j;", "callback", "(Ljava/lang/String;Ljava/lang/String;Lim/j;)V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "s0", "(Lim/j;)V", "t0", "(Ljava/lang/String;)V", "r0", "Lgm/d;", "c", "Lgm/d;", "bind", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "e", "f", "Lim/j;", "mCallback", "g", "a", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PurchaseSucceedDialog extends BaseDialog {

    public static final int f45064h = 8;

    private gm.d bind;

    private String title;

    private String buttonTitle;

    private im.j mCallback;

    public PurchaseSucceedDialog() {
        super(R$layout.dialog_fragment_purchase_succeed);
    }

    public static final void p0(PurchaseSucceedDialog purchaseSucceedDialog, View view) {
        purchaseSucceedDialog.dismissAllowingStateLoss();
    }

    public static final void q0(PurchaseSucceedDialog purchaseSucceedDialog, View view) {
        purchaseSucceedDialog.dismissAllowingStateLoss();
        im.j jVar = purchaseSucceedDialog.mCallback;
        if (jVar != null) {
            jVar.a();
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
        com.transsion.member.a.f45001a.a(getClassTag() + " --> onCreate()");
        if (savedInstanceState != null) {
            dismissAllowingStateLoss();
        }
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
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString(CampaignEx.JSON_KEY_TITLE, this.title);
        outState.putString("buttonTitle", this.buttonTitle);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        LinearLayoutCompat linearLayoutCompat;
        AppCompatTextView appCompatTextView;
        TextView textView;
        ImageView imageView;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(true);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(false);
        }
        gm.d dVarA = gm.d.a(view);
        this.bind = dVarA;
        if (dVarA != null && (imageView = dVarA.f61102e) != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    PurchaseSucceedDialog.p0(this.f45092a, view2);
                }
            });
        }
        gm.d dVar = this.bind;
        if (dVar != null && (textView = dVar.f61105h) != null) {
            textView.setText(this.title);
        }
        gm.d dVar2 = this.bind;
        if (dVar2 != null && (appCompatTextView = dVar2.f61101d) != null) {
            appCompatTextView.setText(this.buttonTitle);
        }
        gm.d dVar3 = this.bind;
        if (dVar3 == null || (linearLayoutCompat = dVar3.f61100c) == null) {
            return;
        }
        linearLayoutCompat.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                PurchaseSucceedDialog.q0(this.f45093a, view2);
            }
        });
    }

    public final void r0(String buttonTitle) {
        this.buttonTitle = buttonTitle;
    }

    public final void s0(im.j callback) {
        this.mCallback = callback;
    }

    public final void t0(String title) {
        this.title = title;
    }

    public PurchaseSucceedDialog(String str, String str2, im.j jVar) {
        this();
        this.title = str;
        this.buttonTitle = str2;
        this.mCallback = jVar;
    }
}
