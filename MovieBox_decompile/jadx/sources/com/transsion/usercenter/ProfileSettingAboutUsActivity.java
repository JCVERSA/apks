package com.transsion.usercenter;

import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.Utils;
import com.transsion.baseui.activity.BaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/usercenter/ProfileSettingAboutUsActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/i;", "<init>", "()V", "", "c0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "b0", "()Lxu/i;", "", "isTranslucent", "()Z", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProfileSettingAboutUsActivity extends BaseActivity<xu.i> {

    public static final class a extends ClickableSpan {
        a() {
        }

        @Override
        public void onClick(View widget) {
            Intrinsics.h(widget, "widget");
            com.tn.lib.widget.toast.core.h.f40484a.a("H5 Privacy Policy");
        }

        @Override
        public void updateDrawState(TextPaint ds2) {
            Intrinsics.h(ds2, "ds");
            super.updateDrawState(ds2);
            ds2.setColor(androidx.core.content.b.getColor(Utils.a(), com.transsion.baseui.R$color.base_color_395CFF));
            ds2.setUnderlineText(false);
        }
    }

    public static final class b extends ClickableSpan {
        b() {
        }

        @Override
        public void onClick(View widget) {
            Intrinsics.h(widget, "widget");
            com.tn.lib.widget.toast.core.h.f40484a.a(" H5 User Agreement");
        }

        @Override
        public void updateDrawState(TextPaint ds2) {
            Intrinsics.h(ds2, "ds");
            super.updateDrawState(ds2);
            ds2.setColor(androidx.core.content.b.getColor(Utils.a(), com.transsion.baseui.R$color.base_color_395CFF));
            ds2.setUnderlineText(false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void c0() {
        String string = ((xu.i) getMViewBinding()).f75598d.getText().toString();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) string);
        int iO0 = StringsKt.o0(string, "Privacy Policy", 0, false, 6, null);
        spannableStringBuilder.setSpan(new a(), iO0, iO0 + 14, 0);
        int iV0 = StringsKt.v0(string, "User Agreement", 0, false, 6, null);
        spannableStringBuilder.setSpan(new b(), iV0, iV0 + 14, 0);
        ((xu.i) getMViewBinding()).f75598d.setMovementMethod(LinkMovementMethod.getInstance());
        ((xu.i) getMViewBinding()).f75598d.setHighlightColor(0);
        ((xu.i) getMViewBinding()).f75598d.setText(spannableStringBuilder, TextView.BufferType.SPANNABLE);
    }

    @Override
    public xu.i getViewBinding() {
        xu.i iVarC = xu.i.c(getLayoutInflater());
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ConstraintLayout root = ((xu.i) getMViewBinding()).getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.e(root);
        ((xu.i) getMViewBinding()).f75597c.goneRightViewLayout();
        c0();
        ((xu.i) getMViewBinding()).f75600f.setText("V 1.0  todo 这里通过工具类获取");
        ((xu.i) getMViewBinding()).f75599e.setText("Oneroom   todo 这里通过工具类获取");
    }
}
