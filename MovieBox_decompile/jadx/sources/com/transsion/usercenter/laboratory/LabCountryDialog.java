package com.transsion.usercenter.laboratory;

import android.app.Application;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.Utils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\f\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006'"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabCountryDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "", MimeTypes.BASE_TYPE_TEXT, "", "w0", "(Ljava/lang/String;)V", AppMeasurementSdk.ConditionalUserProperty.VALUE, "mcc", "D0", "(Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "v", "onClick", "(Landroid/view/View;)V", "Lth/a;", "c", "Lkotlin/Lazy;", "v0", "()Lth/a;", "localMccDao", "Lxu/s;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lxu/s;", "getViewBinding", "()Lxu/s;", "setViewBinding", "(Lxu/s;)V", "viewBinding", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabCountryDialog extends BaseDialog implements View.OnClickListener {

    private final Lazy localMccDao;

    private xu.s viewBinding;

    public LabCountryDialog() {
        super(R$layout.dialog_lab_country);
        this.localMccDao = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LabCountryDialog.x0();
            }
        });
    }

    public static final void A0(LabCountryDialog labCountryDialog, View view) {
        AppCompatTextView appCompatTextView;
        CharSequence text;
        xu.s sVar = labCountryDialog.viewBinding;
        labCountryDialog.w0((sVar == null || (appCompatTextView = sVar.f75751g) == null || (text = appCompatTextView.getText()) == null) ? null : text.toString());
    }

    public static final void B0(LabCountryDialog labCountryDialog, View view) {
        AppCompatTextView appCompatTextView;
        CharSequence text;
        xu.s sVar = labCountryDialog.viewBinding;
        labCountryDialog.w0((sVar == null || (appCompatTextView = sVar.f75750f) == null || (text = appCompatTextView.getText()) == null) ? null : text.toString());
    }

    public static final void C0(LabCountryDialog labCountryDialog, View view) {
        Toast.makeText(labCountryDialog.getContext(), "reset success", 1).show();
        MMKV mmkvC = mg.a.f66402a.c();
        if (mmkvC != null) {
            mmkvC.putString("sp_code", "");
        }
        labCountryDialog.dismiss();
    }

    public final void D0(String value, String mcc) {
        Toast.makeText(getContext(), "set value:" + value + " mcc: \"" + mcc + "\" success", 1).show();
        MMKV mmkvC = mg.a.f66402a.c();
        if (mmkvC != null) {
            mmkvC.putString("sp_code", mcc);
        }
    }

    public final th.a v0() {
        return (th.a) this.localMccDao.getValue();
    }

    private final void w0(String text) {
        if (text == null || text.length() == 0) {
            fh.b.f60176a.e("text is null~");
        } else {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new LabCountryDialog$handleMcc$1(this, text, null), 3, null);
        }
    }

    public static final th.a x0() {
        MbAdDatabase.Companion companion = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).x0();
    }

    public static final void y0(LabCountryDialog labCountryDialog, View view) {
        labCountryDialog.dismiss();
    }

    public static final void z0(LabCountryDialog labCountryDialog, View view) {
        EditTextWithClear editTextWithClear;
        xu.s sVar = labCountryDialog.viewBinding;
        labCountryDialog.w0(String.valueOf((sVar == null || (editTextWithClear = sVar.f75748d) == null) ? null : editTextWithClear.getText()));
    }

    @Override
    public void onClick(View v10) {
        String strValueOf;
        EditTextWithClear editTextWithClear;
        if (v10 instanceof AppCompatTextView) {
            strValueOf = ((AppCompatTextView) v10).getText().toString();
        } else {
            xu.s sVar = this.viewBinding;
            strValueOf = String.valueOf((sVar == null || (editTextWithClear = sVar.f75748d) == null) ? null : editTextWithClear.getText());
        }
        w0(strValueOf);
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
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewBinding = xu.s.a(view);
        MMKV mmkvC = mg.a.f66402a.c();
        String string = mmkvC != null ? mmkvC.getString("sp_code", "") : null;
        xu.s sVar = this.viewBinding;
        if (sVar != null && (appCompatTextView6 = sVar.f75749e) != null) {
            appCompatTextView6.setText(string);
        }
        xu.s sVar2 = this.viewBinding;
        if (sVar2 != null && (appCompatTextView5 = sVar2.f75746b) != null) {
            appCompatTextView5.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LabCountryDialog.y0(this.f54743a, view2);
                }
            });
        }
        xu.s sVar3 = this.viewBinding;
        if (sVar3 != null && (appCompatTextView4 = sVar3.f75747c) != null) {
            appCompatTextView4.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LabCountryDialog.z0(this.f54747a, view2);
                }
            });
        }
        xu.s sVar4 = this.viewBinding;
        if (sVar4 != null && (appCompatTextView3 = sVar4.f75751g) != null) {
            appCompatTextView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LabCountryDialog.A0(this.f54749a, view2);
                }
            });
        }
        xu.s sVar5 = this.viewBinding;
        if (sVar5 != null && (appCompatTextView2 = sVar5.f75750f) != null) {
            appCompatTextView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LabCountryDialog.B0(this.f54751a, view2);
                }
            });
        }
        xu.s sVar6 = this.viewBinding;
        if (sVar6 == null || (appCompatTextView = sVar6.f75752h) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                LabCountryDialog.C0(this.f54754a, view2);
            }
        });
    }
}
