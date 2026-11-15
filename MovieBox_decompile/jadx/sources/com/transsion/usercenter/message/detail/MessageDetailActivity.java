package com.transsion.usercenter.message.detail;

import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableString;
import android.text.style.URLSpan;
import androidx.appcompat.widget.AppCompatTextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.activity.BaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fv.b;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import xu.t0;
import zg.f;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0013¨\u0006\u0019"}, d2 = {"Lcom/transsion/usercenter/message/detail/MessageDetailActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/t0;", "<init>", "()V", "", "initView", "b0", "()Lxu/t0;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "isStatusDark", "()Z", "isTranslucent", "", "a", "Ljava/lang/String;", "msgContent", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "createTime", "c", "nickName", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MessageDetailActivity extends BaseActivity<t0> {

    public String msgContent;

    public String createTime;

    public String nickName;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void initView() {
        TitleLayout titleLayout = ((t0) getMViewBinding()).f75765c;
        String str = this.nickName;
        if (str == null) {
            str = "";
        }
        titleLayout.setTitleText(str);
        AppCompatTextView appCompatTextView = ((t0) getMViewBinding()).f75767e;
        b.a aVar = b.f60520a;
        String str2 = this.createTime;
        if (str2 == null) {
            str2 = "0";
        }
        appCompatTextView.setText(aVar.a(this, str2));
        AppCompatTextView appCompatTextView2 = ((t0) getMViewBinding()).f75766d;
        String str3 = this.msgContent;
        if (str3 == null) {
            return;
        }
        SpannableString spannableString = new SpannableString(Build.VERSION.SDK_INT >= 24 ? Html.fromHtml(str3, 0) : Html.fromHtml(str3));
        Object[] spans = spannableString.getSpans(0, spannableString.length(), URLSpan.class);
        Intrinsics.g(spans, "getSpans(...)");
        for (Object obj : spans) {
            URLSpan uRLSpan = (URLSpan) obj;
            int spanStart = spannableString.getSpanStart(uRLSpan);
            int spanEnd = spannableString.getSpanEnd(uRLSpan);
            spannableString.removeSpan(uRLSpan);
            if (spanStart != -1 && spanEnd != -1) {
                String url = uRLSpan.getURL();
                Intrinsics.g(url, "getURL(...)");
                spannableString.setSpan(new CustomURLSpan(url), spanStart, spanEnd, 33);
            }
        }
        appCompatTextView2.setText(spannableString);
        appCompatTextView2.setMovementMethod(new f(null));
    }

    @Override
    public t0 getViewBinding() {
        t0 t0VarC = t0.c(getLayoutInflater());
        Intrinsics.g(t0VarC, "inflate(...)");
        return t0VarC;
    }

    @Override
    public boolean isStatusDark() {
        return true;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
        initView();
    }
}
