package com.transsnet.login.phone;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.activity.BaseActivity;
import com.transsnet.login.R$color;
import com.transsnet.login.R$string;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.transsnet.login.phone.bean.LoginSmsCodeRequest;
import com.transsnet.login.widget.LoginProgressBar;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0019\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u0019\u0010\u0017\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001f\u0010\u001dJ\u000f\u0010 \u001a\u00020\u0005H\u0014¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\bH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0004R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u001e\u0010<\u001a\n\u0012\u0004\u0012\u000209\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010?\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010B\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0014\u0010F\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u0014\u0010J\u001a\u00020G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR\"\u0010P\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010\u001d\"\u0004\bN\u0010OR\u0014\u0010R\u001a\u00020G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010I¨\u0006S"}, d2 = {"Lcom/transsnet/login/phone/LoginPhoneCodeActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lmx/f;", "<init>", "()V", "", "initView", "z0", "", NotificationCompat.CATEGORY_MESSAGE, "G0", "(Ljava/lang/String;)V", "s0", "", "q0", "()J", "o0", "F0", "n0", "showLoading", "p0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "r0", "()Lmx/f;", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "onDestroy", "getPageName", "()Ljava/lang/String;", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onResume", "onPause", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "a", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "requestData", "Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;", "checkPhoneExistResult", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "c", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "mLoginPhoneViewModel", "Lkj/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkj/h;", "mBaseLoadingDialog", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "e", "Landroidx/activity/result/b;", "loginLaunch", "f", "Ljava/lang/String;", EventConstants.KEY_SOURCE, "g", "J", "mCountDownTime", "Landroid/os/Handler;", "h", "Landroid/os/Handler;", "mHandler", "Ljava/lang/Runnable;", "i", "Ljava/lang/Runnable;", "mCountDownRunnable", "j", "Z", "getEnable", "setEnable", "(Z)V", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, CampaignEx.JSON_KEY_AD_K, "mRunnable", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LoginPhoneCodeActivity extends BaseActivity<mx.f> {

    private LoginSmsCodeRequest requestData;

    private LoginCheckPhoneExistResult checkPhoneExistResult;

    private LoginPhoneViewModel mLoginPhoneViewModel;

    private kj.h mBaseLoadingDialog;

    private androidx.activity.result.b loginLaunch;

    private String source;

    private boolean enable;

    private long mCountDownTime = 60;

    private final Handler mHandler = new Handler(Looper.getMainLooper());

    private final Runnable mCountDownRunnable = new Runnable() {
        @Override
        public final void run() {
            LoginPhoneCodeActivity.D0(this.f58268a);
        }
    };

    private final Runnable mRunnable = new Runnable() {
        @Override
        public final void run() {
            LoginPhoneCodeActivity.E0(this.f58270a);
        }
    };

    public static final class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            LoginPhoneCodeActivity.this.n0();
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f58175a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58175a = function;
        }

        @Override
        public final Function a() {
            return this.f58175a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f58175a.invoke(obj);
        }
    }

    public static final Unit A0(LoginPhoneCodeActivity loginPhoneCodeActivity, LoginSmsCodeRequest loginSmsCodeRequest) {
        loginPhoneCodeActivity.p0();
        if (loginSmsCodeRequest != null) {
            loginPhoneCodeActivity.mCountDownTime = loginPhoneCodeActivity.q0();
            loginPhoneCodeActivity.mHandler.post(loginPhoneCodeActivity.mCountDownRunnable);
            HashMap map = new HashMap();
            map.put("is_login", "true");
            String str = loginPhoneCodeActivity.source;
            if (str != null) {
                map.put(EventConstants.KEY_SOURCE, str);
            }
            qi.h.f69682a.o(loginPhoneCodeActivity.getPageName(), map);
        }
        return Unit.f64096a;
    }

    public static final Unit B0(LoginPhoneCodeActivity loginPhoneCodeActivity, String str) {
        loginPhoneCodeActivity.G0(str);
        HashMap map = new HashMap();
        map.put("error_code", String.valueOf(str));
        String str2 = loginPhoneCodeActivity.source;
        if (str2 != null) {
            map.put(EventConstants.KEY_SOURCE, str2);
        }
        qi.h.f69682a.o(loginPhoneCodeActivity.getPageName(), map);
        return Unit.f64096a;
    }

    public static final Unit C0(LoginPhoneCodeActivity loginPhoneCodeActivity, Boolean bool) {
        loginPhoneCodeActivity.p0();
        if (bool.booleanValue()) {
            Intent intent = new Intent(loginPhoneCodeActivity, (Class<?>) LoginSetPwdActivity.class);
            intent.putExtra("requestData", loginPhoneCodeActivity.requestData);
            intent.putExtra("checkPhoneData", loginPhoneCodeActivity.checkPhoneExistResult);
            intent.putExtra(EventConstants.KEY_SOURCE, loginPhoneCodeActivity.source);
            androidx.activity.result.b bVar = loginPhoneCodeActivity.loginLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void D0(LoginPhoneCodeActivity loginPhoneCodeActivity) {
        long j10 = loginPhoneCodeActivity.mCountDownTime - 1;
        loginPhoneCodeActivity.mCountDownTime = j10;
        if (j10 <= 0) {
            loginPhoneCodeActivity.F0();
            return;
        }
        ((mx.f) loginPhoneCodeActivity.getMViewBinding()).f66772c.setEnabled(false);
        ((mx.f) loginPhoneCodeActivity.getMViewBinding()).f66772c.setText(loginPhoneCodeActivity.getString(R$string.login_seconds, Long.valueOf(loginPhoneCodeActivity.mCountDownTime)));
        loginPhoneCodeActivity.o0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void E0(LoginPhoneCodeActivity loginPhoneCodeActivity) {
        AppCompatEditText appCompatEditText = ((mx.f) loginPhoneCodeActivity.getMViewBinding()).f66773d;
        appCompatEditText.clearFocus();
        appCompatEditText.requestFocus();
        KeyboardUtils.i(appCompatEditText);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void F0() {
        ((mx.f) getMViewBinding()).f66772c.setText(R$string.login_phone_code_resend);
        ((mx.f) getMViewBinding()).f66772c.setEnabled(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void G0(String msg) {
        if (msg == null || msg.length() == 0) {
            AppCompatTextView tvTips = ((mx.f) getMViewBinding()).f66777h;
            Intrinsics.g(tvTips, "tvTips");
            uf.c.g(tvTips);
        } else {
            AppCompatTextView tvTips2 = ((mx.f) getMViewBinding()).f66777h;
            Intrinsics.g(tvTips2, "tvTips");
            uf.c.k(tvTips2);
            ((mx.f) getMViewBinding()).f66777h.setText(msg);
        }
    }

    private final void initView() {
        String mail;
        String cc2;
        String phone;
        LoginCheckPhoneExistResult loginCheckPhoneExistResult;
        LoginCheckPhoneExistResult loginCheckPhoneExistResult2 = this.checkPhoneExistResult;
        if (loginCheckPhoneExistResult2 == null || loginCheckPhoneExistResult2.getExists() || ((loginCheckPhoneExistResult = this.checkPhoneExistResult) != null && loginCheckPhoneExistResult.getReset())) {
            AppCompatTextView tvProgress = ((mx.f) getMViewBinding()).f66775f.f66825d;
            Intrinsics.g(tvProgress, "tvProgress");
            uf.c.g(tvProgress);
            LoginProgressBar progress = ((mx.f) getMViewBinding()).f66775f.f66824c;
            Intrinsics.g(progress, "progress");
            uf.c.g(progress);
            LoginCheckPhoneExistResult loginCheckPhoneExistResult3 = this.checkPhoneExistResult;
            if (loginCheckPhoneExistResult3 != null && loginCheckPhoneExistResult3.getReset()) {
                ((mx.f) getMViewBinding()).f66775f.f66826e.setText(R$string.login_pwd_find);
            }
        } else {
            AppCompatTextView tvProgress2 = ((mx.f) getMViewBinding()).f66775f.f66825d;
            Intrinsics.g(tvProgress2, "tvProgress");
            uf.c.k(tvProgress2);
            LoginProgressBar progress2 = ((mx.f) getMViewBinding()).f66775f.f66824c;
            Intrinsics.g(progress2, "progress");
            uf.c.k(progress2);
            ((mx.f) getMViewBinding()).f66775f.f66824c.setProgress(2);
            ((mx.f) getMViewBinding()).f66775f.f66825d.setText("2/3");
            ((mx.f) getMViewBinding()).f66775f.f66824c.setProgress(300, 600);
        }
        ((mx.f) getMViewBinding()).f66771b.setSelected(true);
        ((mx.f) getMViewBinding()).f66775f.f66823b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginPhoneCodeActivity.u0(this.f58249a, view);
            }
        });
        ((mx.f) getMViewBinding()).f66771b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginPhoneCodeActivity.v0(this.f58255a, view);
            }
        });
        ((mx.f) getMViewBinding()).f66772c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginPhoneCodeActivity.w0(this.f58258a, view);
            }
        });
        AppCompatEditText etCode = ((mx.f) getMViewBinding()).f66773d;
        Intrinsics.g(etCode, "etCode");
        etCode.addTextChangedListener(new a());
        ((mx.f) getMViewBinding()).f66773d.post(new Runnable() {
            @Override
            public final void run() {
                LoginPhoneCodeActivity.x0(this.f58261a);
            }
        });
        ((mx.f) getMViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginPhoneCodeActivity.y0(this.f58264a, view);
            }
        });
        LoginSmsCodeRequest loginSmsCodeRequest = this.requestData;
        String str = "";
        if (loginSmsCodeRequest == null || loginSmsCodeRequest.getAuthType() != 0) {
            LoginSmsCodeRequest loginSmsCodeRequest2 = this.requestData;
            if (loginSmsCodeRequest2 != null && (mail = loginSmsCodeRequest2.getMail()) != null) {
                str = mail;
            }
        } else {
            LoginSmsCodeRequest loginSmsCodeRequest3 = this.requestData;
            if (loginSmsCodeRequest3 == null || (cc2 = loginSmsCodeRequest3.getCc()) == null) {
                cc2 = "";
            }
            LoginSmsCodeRequest loginSmsCodeRequest4 = this.requestData;
            if (loginSmsCodeRequest4 != null && (phone = loginSmsCodeRequest4.getPhone()) != null) {
                str = phone;
            }
            str = "+" + cc2 + " " + str;
        }
        LoginCheckPhoneExistResult loginCheckPhoneExistResult4 = this.checkPhoneExistResult;
        if (loginCheckPhoneExistResult4 == null || !loginCheckPhoneExistResult4.getReset()) {
            LoginSmsCodeRequest loginSmsCodeRequest5 = this.requestData;
            if (loginSmsCodeRequest5 == null || loginSmsCodeRequest5.getAuthType() != 0) {
                ((mx.f) getMViewBinding()).f66776g.setText(getString(R$string.login_email_code_tips, str));
            } else {
                ((mx.f) getMViewBinding()).f66776g.setText(getString(R$string.login_phone_code_tips, str));
            }
        } else {
            ((mx.f) getMViewBinding()).f66776g.setText(getString(R$string.login_verify_code_tips, str));
        }
        ((mx.f) getMViewBinding()).f66776g.setTextColor(androidx.core.content.b.getColor(this, R$color.base_color_999999));
        this.mHandler.post(this.mCountDownRunnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void n0() {
        Editable text = ((mx.f) getMViewBinding()).f66773d.getText();
        boolean z10 = false;
        if (text != null && text.length() == 6) {
            z10 = true;
        }
        this.enable = z10;
        if (z10) {
            G0(null);
        }
    }

    private final void o0() {
        this.mHandler.postDelayed(this.mCountDownRunnable, 1000L);
    }

    private final void p0() {
        kj.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    private final long q0() {
        String strAccount;
        LoginSmsCodeRequest loginSmsCodeRequest = this.requestData;
        if (loginSmsCodeRequest == null || (strAccount = loginSmsCodeRequest.account()) == null) {
            strAccount = "";
        }
        return 60 - ((SystemClock.elapsedRealtime() - ix.f.f62815a.b().getLong(strAccount, SystemClock.elapsedRealtime())) / ((long) 1000));
    }

    private final void s0() {
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                LoginPhoneCodeActivity.t0(this.f58251a, (ActivityResult) obj);
            }
        });
    }

    private final void showLoading() {
        if (this.mBaseLoadingDialog == null) {
            this.mBaseLoadingDialog = new kj.h(this);
        }
        kj.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.show();
        }
    }

    public static final void t0(LoginPhoneCodeActivity loginPhoneCodeActivity, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            loginPhoneCodeActivity.setResult(-1);
            loginPhoneCodeActivity.finish();
        }
    }

    public static final void u0(LoginPhoneCodeActivity loginPhoneCodeActivity, View view) {
        loginPhoneCodeActivity.onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void v0(LoginPhoneCodeActivity loginPhoneCodeActivity, View view) {
        if (!loginPhoneCodeActivity.enable || loginPhoneCodeActivity.requestData == null) {
            loginPhoneCodeActivity.G0(loginPhoneCodeActivity.getString(R$string.login_verifcation_err));
            return;
        }
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.login_net_err);
            return;
        }
        loginPhoneCodeActivity.showLoading();
        LoginSmsCodeRequest loginSmsCodeRequest = loginPhoneCodeActivity.requestData;
        if (loginSmsCodeRequest != null) {
            loginSmsCodeRequest.setVerificationCode(String.valueOf(((mx.f) loginPhoneCodeActivity.getMViewBinding()).f66773d.getText()));
        }
        LoginPhoneViewModel loginPhoneViewModel = loginPhoneCodeActivity.mLoginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.M(loginPhoneCodeActivity.requestData);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void w0(LoginPhoneCodeActivity loginPhoneCodeActivity, View view) {
        LoginCheckPhoneExistResult loginCheckPhoneExistResult;
        if (loginPhoneCodeActivity.mCountDownTime > 0) {
            return;
        }
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.login_net_err);
            return;
        }
        loginPhoneCodeActivity.showLoading();
        LoginSmsCodeRequest loginSmsCodeRequest = loginPhoneCodeActivity.requestData;
        if (loginSmsCodeRequest != null) {
            loginSmsCodeRequest.setVerificationCode(String.valueOf(((mx.f) loginPhoneCodeActivity.getMViewBinding()).f66773d.getText()));
        }
        LoginPhoneViewModel loginPhoneViewModel = loginPhoneCodeActivity.mLoginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            LoginSmsCodeRequest loginSmsCodeRequest2 = loginPhoneCodeActivity.requestData;
            LoginCheckPhoneExistResult loginCheckPhoneExistResult2 = loginPhoneCodeActivity.checkPhoneExistResult;
            int i10 = 1;
            if ((loginCheckPhoneExistResult2 != null && loginCheckPhoneExistResult2.getExists()) || ((loginCheckPhoneExistResult = loginPhoneCodeActivity.checkPhoneExistResult) != null && loginCheckPhoneExistResult.getReset())) {
                i10 = 2;
            }
            loginPhoneViewModel.E(loginSmsCodeRequest2, i10);
        }
        HashMap map = new HashMap();
        map.put("is_login", "true");
        String str = loginPhoneCodeActivity.source;
        if (str == null) {
            str = "";
        }
        map.put(EventConstants.KEY_SOURCE, str);
        qi.h.f69682a.o(loginPhoneCodeActivity.getPageName(), map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void x0(LoginPhoneCodeActivity loginPhoneCodeActivity) {
        ((mx.f) loginPhoneCodeActivity.getMViewBinding()).f66773d.requestFocus();
    }

    public static final void y0(LoginPhoneCodeActivity loginPhoneCodeActivity, View view) {
        KeyboardUtils.d(loginPhoneCodeActivity);
    }

    private final void z0() {
        LoginPhoneViewModel loginPhoneViewModel = (LoginPhoneViewModel) new androidx.p009lifecycle.v0(this).a(LoginPhoneViewModel.class);
        loginPhoneViewModel.v().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LoginPhoneCodeActivity.C0(this.f58273a, (Boolean) obj);
            }
        }));
        loginPhoneViewModel.G().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LoginPhoneCodeActivity.A0(this.f58275a, (LoginSmsCodeRequest) obj);
            }
        }));
        loginPhoneViewModel.A().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LoginPhoneCodeActivity.B0(this.f58277a, (String) obj);
            }
        }));
        this.mLoginPhoneViewModel = loginPhoneViewModel;
    }

    @Override
    public String getPageName() {
        return "code_enter";
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
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        String stringExtra;
        HashMap mapG;
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra(EventConstants.KEY_SOURCE)) == null) {
            stringExtra = null;
        } else {
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            }
        }
        this.source = stringExtra;
        this.requestData = (LoginSmsCodeRequest) getIntent().getSerializableExtra("requestData");
        this.checkPhoneExistResult = (LoginCheckPhoneExistResult) getIntent().getSerializableExtra("checkPhoneData");
        this.mCountDownTime = q0();
        initView();
        z0();
        s0();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        p0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onPause() {
        super.onPause();
        ((mx.f) getMViewBinding()).f66773d.removeCallbacks(this.mRunnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onResume() {
        super.onResume();
        ((mx.f) getMViewBinding()).f66773d.postDelayed(this.mRunnable, 500L);
        LoginProgressBar loginProgressBar = ((mx.f) getMViewBinding()).f66775f.f66824c;
        Intrinsics.e(loginProgressBar);
        if (!uf.c.i(loginProgressBar) || loginProgressBar.getProgress() > loginProgressBar.getStartProgress()) {
            return;
        }
        loginProgressBar.startProgressIncrease();
    }

    @Override
    public mx.f getViewBinding() {
        mx.f fVarC = mx.f.c(getLayoutInflater());
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }
}
