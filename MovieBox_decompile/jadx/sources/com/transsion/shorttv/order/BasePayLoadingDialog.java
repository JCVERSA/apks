package com.transsion.shorttv.order;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.shorttv.base.dialog.BaseViewBindingDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u0018\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001aH\u0004¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00002\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b \u0010!R$\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R.\u0010-\u001a\u001c\u0012\u0004\u0012\u00020)\u0012\u0006\u0012\u0004\u0018\u00010*\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00020(8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,¨\u0006."}, d2 = {"Lcom/transsion/shorttv/order/BasePayLoadingDialog;", "Lcom/transsion/shorttv/base/dialog/BaseViewBindingDialog;", "Lqr/a;", "<init>", "()V", "", "getClassTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "Landroid/content/Context;", "context", "tag", "i0", "(Landroid/content/Context;Ljava/lang/String;)V", "", "isLoading", "n0", "(Z)V", "Lcom/transsion/shorttv/order/b;", "callback", "p0", "(Lcom/transsion/shorttv/order/b;)Lcom/transsion/shorttv/order/BasePayLoadingDialog;", "c", "Lcom/transsion/shorttv/order/b;", "o0", "()Lcom/transsion/shorttv/order/b;", "setCallback", "(Lcom/transsion/shorttv/order/b;)V", "Lkotlin/Function3;", "Landroid/view/LayoutInflater;", "Landroid/view/ViewGroup;", "l0", "()Lkotlin/jvm/functions/Function3;", "bindingInflater", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class BasePayLoadingDialog extends BaseViewBindingDialog<qr.a> {

    private b callback;

    protected final String getClassTag() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    @Override
    public void i0(Context context, String tag) {
        super.i0(context, tag);
    }

    @Override
    public Function3 l0() {
        return BasePayLoadingDialog$bindingInflater$1.INSTANCE;
    }

    protected final void n0(boolean isLoading) {
        TextView textView;
        ProgressBar progressBar;
        View view;
        int i10 = isLoading ? 0 : 8;
        qr.a aVar = (qr.a) getViewBinding();
        if (aVar != null && (view = aVar.f69939c) != null) {
            view.setVisibility(i10);
        }
        qr.a aVar2 = (qr.a) getViewBinding();
        if (aVar2 != null && (progressBar = aVar2.f69940d) != null) {
            progressBar.setVisibility(i10);
        }
        qr.a aVar3 = (qr.a) getViewBinding();
        if (aVar3 == null || (textView = aVar3.f69938b) == null) {
            return;
        }
        textView.setVisibility(i10);
    }

    protected final b getCallback() {
        return this.callback;
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        String str;
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        int i10 = newConfig.orientation;
        if (i10 == 0) {
            str = "未定义";
        } else if (i10 != 1) {
            str = i10 != 2 ? "未知" : "横屏";
        } else {
            str = "竖屏";
        }
        c.f51036a.a(getClassTag() + " --> onConfigurationChanged() --> tag = " + str + " --> callback = " + this.callback);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        c.f51036a.a("PaynicornGetPayOrderIdDialog --> onCreate()");
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCancelable(false);
        }
    }

    public final BasePayLoadingDialog p0(b callback) {
        this.callback = callback;
        return this;
    }
}
