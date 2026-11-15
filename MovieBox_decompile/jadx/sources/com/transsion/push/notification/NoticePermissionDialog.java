package com.transsion.push.notification;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.tn.lib.dialog.BaseDialog;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.util.q;
import com.transsion.lib.push.R$id;
import com.transsion.lib.push.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J-\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\u0003¨\u0006\u0014"}, d2 = {"Lcom/transsion/push/notification/NoticePermissionDialog;", "Lcom/tn/lib/dialog/BaseDialog;", "<init>", "()V", "", "b0", "e0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", TmcConstants.NAVIGATION_ON_START, "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NoticePermissionDialog extends BaseDialog {
    private final void b0() {
        dismiss();
    }

    public static final void c0(NoticePermissionDialog noticePermissionDialog, View view) {
        noticePermissionDialog.b0();
    }

    public static final void d0(NoticePermissionDialog noticePermissionDialog, View view) {
        noticePermissionDialog.e0();
    }

    private final void e0() {
        Activity activity;
        Context context = getContext();
        if (context instanceof Activity) {
            activity = (Activity) context;
        } else if (context instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            Intrinsics.f(baseContext, "null cannot be cast to non-null type android.app.Activity");
            activity = (Activity) baseContext;
        } else {
            activity = null;
        }
        if (activity != null) {
            h.d(h.f48824a, activity, 0, 2, null);
        }
        dismiss();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        return inflater.inflate(R$layout.push_dialog_notice_permission, container, false);
    }

    @Override
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setGravity(17);
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (attributes != null) {
            attributes.width = -1;
        }
        window.setBackgroundDrawableResource(R$color.transparent);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        View viewFindViewById = view.findViewById(R$id.cl_content);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        q.c(viewFindViewById, com.blankj.utilcode.util.i.e(8.0f));
        TextView textView = (TextView) view.findViewById(R$id.tv_later);
        Intrinsics.e(textView);
        q.c(textView, com.blankj.utilcode.util.i.e(8.0f));
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                NoticePermissionDialog.c0(this.f48822a, view2);
            }
        });
        ((TextView) view.findViewById(R$id.tv_allow)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                NoticePermissionDialog.d0(this.f48823a, view2);
            }
        });
    }
}
