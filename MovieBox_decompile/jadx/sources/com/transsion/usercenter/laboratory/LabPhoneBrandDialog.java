package com.transsion.usercenter.laboratory;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\tJ\u0019\u0010\u000e\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R$\u0010\u001e\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabPhoneBrandDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "", MimeTypes.BASE_TYPE_TEXT, "", "q0", "(Ljava/lang/String;)V", AppMeasurementSdk.ConditionalUserProperty.VALUE, "u0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "v", "onClick", "(Landroid/view/View;)V", "Lxu/p;", "c", "Lxu/p;", "getViewBinding", "()Lxu/p;", "setViewBinding", "(Lxu/p;)V", "viewBinding", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabPhoneBrandDialog extends BaseDialog implements View.OnClickListener {

    private xu.p viewBinding;

    public LabPhoneBrandDialog() {
        super(R$layout.dialog_lab_brand);
    }

    private final void q0(String text) {
        if (text == null || text.length() == 0) {
            fh.b.f60176a.e("text is null~");
            return;
        }
        u0(text);
        Toast.makeText(getContext(), "set brand:" + text + " success", 1).show();
        dismiss();
    }

    public static final void r0(LabPhoneBrandDialog labPhoneBrandDialog, View view) {
        labPhoneBrandDialog.dismiss();
    }

    public static final void s0(LabPhoneBrandDialog labPhoneBrandDialog, View view) {
        EditTextWithClear editTextWithClear;
        xu.p pVar = labPhoneBrandDialog.viewBinding;
        labPhoneBrandDialog.q0(String.valueOf((pVar == null || (editTextWithClear = pVar.f75717d) == null) ? null : editTextWithClear.getText()));
        labPhoneBrandDialog.dismiss();
    }

    public static final void t0(LabPhoneBrandDialog labPhoneBrandDialog, View view) {
        Toast.makeText(labPhoneBrandDialog.getContext(), "reset success", 1).show();
        MMKV mmkvC = mg.a.f66402a.c();
        if (mmkvC != null) {
            mmkvC.putString("phone_brand", "");
        }
        labPhoneBrandDialog.dismiss();
    }

    private final void u0(String value) {
        MMKV mmkvC = mg.a.f66402a.c();
        if (mmkvC != null) {
            mmkvC.putString("phone_brand", value);
        }
    }

    @Override
    public void onClick(View v10) {
        q0(v10 instanceof TextView ? ((TextView) v10).getText().toString() : "");
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatTextView appCompatTextView6;
        AppCompatTextView appCompatTextView7;
        AppCompatTextView appCompatTextView8;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewBinding = xu.p.a(view);
        MMKV mmkvC = mg.a.f66402a.c();
        String string = mmkvC != null ? mmkvC.getString("phone_brand", "") : null;
        xu.p pVar = this.viewBinding;
        if (pVar != null && (appCompatTextView8 = pVar.f75718e) != null) {
            appCompatTextView8.setText(string);
        }
        xu.p pVar2 = this.viewBinding;
        if (pVar2 != null && (appCompatTextView7 = pVar2.f75715b) != null) {
            appCompatTextView7.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LabPhoneBrandDialog.r0(this.f54727a, view2);
                }
            });
        }
        xu.p pVar3 = this.viewBinding;
        if (pVar3 != null && (appCompatTextView6 = pVar3.f75716c) != null) {
            appCompatTextView6.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LabPhoneBrandDialog.s0(this.f54730a, view2);
                }
            });
        }
        xu.p pVar4 = this.viewBinding;
        if (pVar4 != null && (appCompatTextView5 = pVar4.f75722i) != null) {
            appCompatTextView5.setOnClickListener(this);
        }
        xu.p pVar5 = this.viewBinding;
        if (pVar5 != null && (appCompatTextView4 = pVar5.f75719f) != null) {
            appCompatTextView4.setOnClickListener(this);
        }
        xu.p pVar6 = this.viewBinding;
        if (pVar6 != null && (appCompatTextView3 = pVar6.f75720g) != null) {
            appCompatTextView3.setOnClickListener(this);
        }
        xu.p pVar7 = this.viewBinding;
        if (pVar7 != null && (appCompatTextView2 = pVar7.f75721h) != null) {
            appCompatTextView2.setOnClickListener(this);
        }
        xu.p pVar8 = this.viewBinding;
        if (pVar8 == null || (appCompatTextView = pVar8.f75723j) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                LabPhoneBrandDialog.t0(this.f54733a, view2);
            }
        });
    }
}
