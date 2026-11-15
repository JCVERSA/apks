package com.transsion.usercenter.laboratory;

import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.mbridge.msdk.MBridgeConstans;
import com.tencent.mmkv.MMKV;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabLaneDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "", "lane", "", "t0", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "v", "onClick", "(Landroid/view/View;)V", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabLaneDialog extends BaseDialog implements View.OnClickListener {
    public LabLaneDialog() {
        super(R$layout.dialog_lab_lane);
    }

    public static final void q0(LabLaneDialog labLaneDialog, View view) {
        labLaneDialog.dismiss();
    }

    public static final void r0(xu.w wVar, LabLaneDialog labLaneDialog, View view) {
        Editable text = wVar.f75797d.getText();
        if (text == null || text.length() == 0) {
            fh.b.f60176a.e("text is null~");
        } else {
            labLaneDialog.t0(text.toString());
            labLaneDialog.dismiss();
        }
    }

    public static final void s0(LabLaneDialog labLaneDialog, View view) {
        Toast.makeText(labLaneDialog.getContext(), "reset success", 1).show();
        jg.b.f63119a.b("x-md-global-color", "");
        MMKV mmkvC = mg.a.f66402a.c();
        if (mmkvC != null) {
            mmkvC.putString("x-md-global-color", "");
        }
        labLaneDialog.dismiss();
    }

    private final void t0(String lane) {
        Toast.makeText(getContext(), "set \"" + lane + "\" success", 1).show();
        jg.b.f63119a.b("x-md-global-color", lane);
        MMKV mmkvC = mg.a.f66402a.c();
        if (mmkvC != null) {
            mmkvC.putString("x-md-global-color", lane);
        }
    }

    @Override
    public void onClick(View v10) {
        Intrinsics.f(v10, "null cannot be cast to non-null type android.widget.TextView");
        t0(((TextView) v10).getText().toString());
        dismiss();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String string;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        final xu.w wVarA = xu.w.a(view);
        Intrinsics.g(wVarA, "bind(...)");
        MMKV mmkvC = mg.a.f66402a.c();
        String str = "";
        if (mmkvC != null && (string = mmkvC.getString("x-md-global-color", "")) != null) {
            str = string;
        }
        wVarA.f75803j.setText(str);
        wVarA.f75795b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                LabLaneDialog.q0(this.f54773a, view2);
            }
        });
        wVarA.f75796c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                LabLaneDialog.r0(wVarA, this, view2);
            }
        });
        wVarA.f75798e.setOnClickListener(this);
        wVarA.f75799f.setOnClickListener(this);
        wVarA.f75800g.setOnClickListener(this);
        wVarA.f75801h.setOnClickListener(this);
        wVarA.f75802i.setOnClickListener(this);
        wVarA.f75804k.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                LabLaneDialog.s0(this.f54777a, view2);
            }
        });
    }
}
