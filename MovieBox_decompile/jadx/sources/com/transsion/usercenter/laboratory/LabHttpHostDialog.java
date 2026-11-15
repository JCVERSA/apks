package com.transsion.usercenter.laboratory;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.mbridge.msdk.MBridgeConstans;
import com.tencent.mmkv.MMKV;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabHttpHostDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "", "host", "", "u0", "(Ljava/lang/String;)V", "", "q0", "(Ljava/lang/String;)Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "v", "onClick", "(Landroid/view/View;)V", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabHttpHostDialog extends BaseDialog implements View.OnClickListener {
    public LabHttpHostDialog() {
        super(R$layout.dialog_lab_http_host);
    }

    private final boolean q0(String host) {
        return new Regex("^((?=[a-zA-Z0-9-]{1,63}\\.)(xn--)?[a-zA-Z0-9]+(-[a-zA-Z0-9]+)*\\.)+[a-zA-Z]{2,6}(:\\d{1,5})?$").matches(host);
    }

    public static final void r0(LabHttpHostDialog labHttpHostDialog, View view) {
        labHttpHostDialog.dismiss();
    }

    public static final void s0(xu.u uVar, LabHttpHostDialog labHttpHostDialog, View view) {
        Editable text = uVar.f75771d.getText();
        if (text == null || text.length() == 0) {
            fh.b.f60176a.e("text is null~");
        } else {
            labHttpHostDialog.u0(text.toString());
            labHttpHostDialog.dismiss();
        }
    }

    public static final void t0(LabHttpHostDialog labHttpHostDialog, View view) {
        Toast.makeText(labHttpHostDialog.getContext(), "reset success", 1).show();
        labHttpHostDialog.u0("");
        labHttpHostDialog.dismiss();
    }

    private final void u0(String host) {
        if (!TextUtils.isEmpty(host) && !q0(host)) {
            Toast.makeText(getContext(), host + "\" invalidate,please fix", 1).show();
            return;
        }
        Toast.makeText(getContext(), "set \"" + host + "\" success", 1).show();
        MMKV mmkvC = mg.a.f66402a.c();
        if (mmkvC != null) {
            mmkvC.putString("mock_host_key", host);
        }
    }

    @Override
    public void onClick(View v10) {
        Intrinsics.f(v10, "null cannot be cast to non-null type android.widget.TextView");
        u0(((TextView) v10).getText().toString());
        dismiss();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        final xu.u uVarA = xu.u.a(view);
        Intrinsics.g(uVarA, "bind(...)");
        uVarA.f75780m.setText(CacheIpPool.f39857a.l());
        uVarA.f75769b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                LabHttpHostDialog.r0(this.f54762a, view2);
            }
        });
        uVarA.f75770c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                LabHttpHostDialog.s0(uVarA, this, view2);
            }
        });
        uVarA.f75772e.setOnClickListener(this);
        uVarA.f75773f.setOnClickListener(this);
        uVarA.f75774g.setOnClickListener(this);
        uVarA.f75775h.setOnClickListener(this);
        uVarA.f75776i.setOnClickListener(this);
        uVarA.f75777j.setOnClickListener(this);
        uVarA.f75778k.setOnClickListener(this);
        uVarA.f75779l.setOnClickListener(this);
        uVarA.f75781n.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                LabHttpHostDialog.t0(this.f54767a, view2);
            }
        });
    }
}
