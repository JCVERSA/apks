package com.transsion.usercenter.laboratory.developer;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import ci.m;
import ci.p;
import com.blankj.utilcode.util.ToastUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.transsion.usercenter.laboratory.developer.AdDeveloperDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ev.c;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import xu.o;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000f\u001a\u00020\u00002\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\r¢\u0006\u0004\b\u000f\u0010\u0010R\u001e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/transsion/usercenter/laboratory/developer/AdDeveloperDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lkotlin/Function0;", "callback", "r0", "(Lkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/laboratory/developer/AdDeveloperDialog;", "c", "Lkotlin/jvm/functions/Function0;", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AdDeveloperDialog extends BaseDialog {

    private Function0 callback;

    public static final class a implements TextWatcher {

        final o f54736a;

        public a(o oVar) {
            this.f54736a = oVar;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            Editable text = this.f54736a.f75704d.getText();
            if (text == null || text.length() == 0) {
                this.f54736a.f75705e.setErrorEnabled(false);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public AdDeveloperDialog() {
        super(R$layout.ad_dialog_developer);
    }

    public static final void p0(AdDeveloperDialog adDeveloperDialog, View view) {
        adDeveloperDialog.dismissAllowingStateLoss();
    }

    public static final void q0(o oVar, AdDeveloperDialog adDeveloperDialog, View view) {
        String lowerCase = oVar.f75704d.getText().toString().toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        m mVar = m.f16944a;
        c cVar = c.f59822a;
        if (!mVar.d(lowerCase, cVar.a())) {
            ToastUtils.s("密码错误，请重新输入！", new Object[0]);
            oVar.f75704d.setText("");
            return;
        }
        Function0 function0 = adDeveloperDialog.callback;
        if (function0 != null) {
            function0.invoke();
        }
        cVar.c(p.f16947a.c());
        adDeveloperDialog.dismissAllowingStateLoss();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        final o oVarA = o.a(view);
        Intrinsics.g(oVarA, "bind(...)");
        oVarA.f75702b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                AdDeveloperDialog.p0(this.f59819a, view2);
            }
        });
        oVarA.f75703c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                AdDeveloperDialog.q0(oVarA, this, view2);
            }
        });
        oVarA.f75705e.setBoxBackgroundColor(0);
        EditText etPwd = oVarA.f75704d;
        Intrinsics.g(etPwd, "etPwd");
        etPwd.addTextChangedListener(new a(oVarA));
    }

    public final AdDeveloperDialog r0(Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.callback = callback;
        return this;
    }
}
