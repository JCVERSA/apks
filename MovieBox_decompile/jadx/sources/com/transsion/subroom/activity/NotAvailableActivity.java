package com.transsion.subroom.activity;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import com.tencent.mmkv.MMKV;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.subroom.R$string;
import com.transsion.usercenter.laboratory.LabPwdDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\r\u0010\nJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0011R\u001a\u0010\u0019\u001a\u00020\u00148\u0006X\u0086D¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/transsion/subroom/activity/NotAvailableActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Ldt/b;", "<init>", "()V", "", "g0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "d0", "()Ldt/b;", "initView", "onBackPressed", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "", "a", "I", "getCLICK_COUNT", "()I", "CLICK_COUNT", "app_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NotAvailableActivity extends BaseActivity<dt.b> {

    private final int CLICK_COUNT = 10;

    public static final void e0(Ref.IntRef intRef, final NotAvailableActivity notAvailableActivity, View view) {
        int i10 = intRef.element + 1;
        intRef.element = i10;
        if (i10 == notAvailableActivity.CLICK_COUNT) {
            new LabPwdDialog().r0(new Function0() {
                @Override
                public final Object invoke() {
                    return NotAvailableActivity.f0(this.f52639a);
                }
            }).k0(notAvailableActivity, "labPwd");
        }
    }

    public static final Unit f0(NotAvailableActivity notAvailableActivity) {
        notAvailableActivity.g0();
        return Unit.f64096a;
    }

    private final void g0() {
        SharedPreferences.Editor editorPutString;
        MMKV mmkvC = mg.a.f66402a.c();
        if (mmkvC != null && (editorPutString = mmkvC.putString("sp_code", "90101")) != null) {
            editorPutString.commit();
        }
        com.tn.lib.widget.toast.core.h.f40484a.l("Please restart the App");
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new NotAvailableActivity$welcomeMovieBox$1(null), 3, null);
    }

    @Override
    public dt.b getViewBinding() {
        dt.b bVarC = dt.b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(Bundle savedInstanceState) {
        super.initView(savedInstanceState);
        String string = getResources().getString(R$string.not_available);
        Intrinsics.g(string, "getString(...)");
        String string2 = getResources().getString(R$string.in_current_region);
        Intrinsics.g(string2, "getString(...)");
        SpannableString spannableString = new SpannableString(string + string2);
        final Ref.IntRef intRef = new Ref.IntRef();
        spannableString.setSpan(new ForegroundColorSpan(androidx.core.content.b.getColor(this, R$color.error_red)), 0, string.length(), 34);
        ((dt.b) getMViewBinding()).f59081b.setText(spannableString);
        ((dt.b) getMViewBinding()).f59081b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                NotAvailableActivity.e0(intRef, this, view);
            }
        });
    }

    @Override
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override
    public boolean isStatusDark() {
        return !ij.y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public void onBackPressed() {
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        finish();
    }
}
