package com.transsnet.login.phone;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseActivity;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.HomeEvent;
import com.transsnet.login.R$string;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.transsnet.login.phone.bean.LoginSmsCodeRequest;
import com.transsnet.login.phone.widget.LoginPwdEditText;
import com.transsnet.login.widget.LoginProgressBar;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u0019\u0010\u0014\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0018\u0010\u0015J\u000f\u0010\u0019\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001a\u0010\fJ\u000f\u0010\u001b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001b\u0010\fJ\u000f\u0010\u001c\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0004R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u00109\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006>"}, d2 = {"Lcom/transsnet/login/phone/LoginSetPwdActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lmx/h;", "<init>", "()V", "", "y0", "showLoading", "q0", "n0", "", "o0", "()Z", "", NotificationCompat.CATEGORY_MESSAGE, "E0", "(Ljava/lang/String;)V", "p0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "r0", "()Lmx/h;", "initView", "onDestroy", "isTranslucent", "isStatusDark", "getPageName", "()Ljava/lang/String;", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onResume", "onPause", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "a", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "mLoginPhoneViewModel", "Lkj/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkj/h;", "mBaseLoadingDialog", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "c", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "requestBody", "Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;", "checkPhoneExistResult", "Lmx/k;", "e", "Lmx/k;", "mLoginLayoutInvitationCodeBinding", "f", "Ljava/lang/String;", EventConstants.KEY_SOURCE, "Ljava/lang/Runnable;", "g", "Ljava/lang/Runnable;", "mRunnable", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LoginSetPwdActivity extends BaseActivity<mx.h> {

    private LoginPhoneViewModel mLoginPhoneViewModel;

    private kj.h mBaseLoadingDialog;

    private LoginCheckPhoneExistResult checkPhoneExistResult;

    private mx.k mLoginLayoutInvitationCodeBinding;

    private String source;

    private LoginSmsCodeRequest requestBody = new LoginSmsCodeRequest();

    private final Runnable mRunnable = new Runnable() {
        @Override
        public final void run() {
            LoginSetPwdActivity.D0(this.f58305a);
        }
    };

    public static final class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            String string;
            mx.k kVar;
            AppCompatTextView appCompatTextView;
            AppCompatEditText appCompatEditText;
            Editable text;
            String string2;
            mx.k kVar2 = LoginSetPwdActivity.this.mLoginLayoutInvitationCodeBinding;
            if (kVar2 == null || (appCompatEditText = kVar2.f66817b) == null || (text = appCompatEditText.getText()) == null || (string2 = text.toString()) == null || (string = StringsKt.n1(string2).toString()) == null) {
                string = "";
            }
            if (!(string.length() == 0 || string.length() == 8) || (kVar = LoginSetPwdActivity.this.mLoginLayoutInvitationCodeBinding) == null || (appCompatTextView = kVar.f66821f) == null) {
                return;
            }
            uf.c.g(appCompatTextView);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f58248a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58248a = function;
        }

        @Override
        public final Function a() {
            return this.f58248a;
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
            this.f58248a.invoke(obj);
        }
    }

    public static final Unit A0(LoginSetPwdActivity loginSetPwdActivity, String str) {
        loginSetPwdActivity.q0();
        loginSetPwdActivity.E0(str);
        HashMap map = new HashMap();
        map.put("error_code", String.valueOf(str));
        String str2 = loginSetPwdActivity.source;
        if (str2 != null) {
            map.put(EventConstants.KEY_SOURCE, str2);
        }
        qi.h.f69682a.o(loginSetPwdActivity.getPageName(), map);
        return Unit.f64096a;
    }

    public static final Unit B0(LoginSetPwdActivity loginSetPwdActivity, UserInfo userInfo) {
        loginSetPwdActivity.q0();
        if (userInfo != null) {
            LoginCheckPhoneExistResult loginCheckPhoneExistResult = loginSetPwdActivity.checkPhoneExistResult;
            if (loginCheckPhoneExistResult == null || !loginCheckPhoneExistResult.getReset()) {
                com.transsnet.login.b.f58055a.b(R$string.login_success);
                qi.h.f69682a.l(userInfo.getUserType(), userInfo.getUserId());
                HomeEvent homeEvent = new HomeEvent(2);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = HomeEvent.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, homeEvent, 0L);
            } else {
                com.transsnet.login.b.f58055a.b(R$string.login_pwd_set_success);
                HashMap map = new HashMap();
                map.put("is_success", "true");
                String str = loginSetPwdActivity.source;
                if (str != null) {
                    map.put(EventConstants.KEY_SOURCE, str);
                }
                qi.h.f69682a.o(loginSetPwdActivity.getPageName(), map);
            }
            loginSetPwdActivity.setResult(-1);
            loginSetPwdActivity.finish();
        }
        return Unit.f64096a;
    }

    public static final Unit C0(LoginSetPwdActivity loginSetPwdActivity, UserInfo userInfo) {
        loginSetPwdActivity.q0();
        if (userInfo != null) {
            loginSetPwdActivity.setResult(-1);
            loginSetPwdActivity.finish();
            com.transsnet.login.b.f58055a.b(R$string.login_sign_up_success);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void D0(LoginSetPwdActivity loginSetPwdActivity) {
        LoginPwdEditText loginPwdEditText = ((mx.h) loginSetPwdActivity.getMViewBinding()).f66796d;
        loginPwdEditText.clearFocus();
        loginPwdEditText.requestFocus();
        KeyboardUtils.i(loginPwdEditText);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void E0(String msg) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        if (msg == null || msg.length() == 0) {
            p0();
            return;
        }
        if (!StringsKt.c0(msg, "invitation", false, 2, null)) {
            ((mx.h) getMViewBinding()).f66798f.setText(msg);
            AppCompatTextView tvTips = ((mx.h) getMViewBinding()).f66798f;
            Intrinsics.g(tvTips, "tvTips");
            uf.c.k(tvTips);
            return;
        }
        mx.k kVar = this.mLoginLayoutInvitationCodeBinding;
        if (kVar != null && (appCompatTextView2 = kVar.f66821f) != null) {
            appCompatTextView2.setText(msg);
        }
        mx.k kVar2 = this.mLoginLayoutInvitationCodeBinding;
        if (kVar2 == null || (appCompatTextView = kVar2.f66821f) == null) {
            return;
        }
        uf.c.k(appCompatTextView);
    }

    private final void n0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean o0() {
        return ((mx.h) getMViewBinding()).f66796d.length() >= 6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void p0() {
        ((mx.h) getMViewBinding()).f66798f.setText("");
        AppCompatTextView tvTips = ((mx.h) getMViewBinding()).f66798f;
        Intrinsics.g(tvTips, "tvTips");
        uf.c.g(tvTips);
    }

    private final void q0() {
        kj.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    public static final void s0(kk.a aVar, LoginSetPwdActivity loginSetPwdActivity, View view) {
        if (aVar != null) {
            aVar.e(loginSetPwdActivity);
        }
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

    /* JADX WARN: Multi-variable type inference failed */
    public static final void t0(LoginSetPwdActivity loginSetPwdActivity, View view) {
        String string;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatEditText appCompatEditText;
        Editable text;
        String string2;
        LoginCheckPhoneExistResult loginCheckPhoneExistResult;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.login_net_err);
            return;
        }
        if (!loginSetPwdActivity.o0()) {
            loginSetPwdActivity.E0(loginSetPwdActivity.getString(R$string.login_pwd_err));
            return;
        }
        loginSetPwdActivity.showLoading();
        loginSetPwdActivity.requestBody.setPassword(wg.a.f74277a.d(String.valueOf(((mx.h) loginSetPwdActivity.getMViewBinding()).f66796d.getText())));
        LoginCheckPhoneExistResult loginCheckPhoneExistResult2 = loginSetPwdActivity.checkPhoneExistResult;
        if (loginCheckPhoneExistResult2 != null && loginCheckPhoneExistResult2.getReset()) {
            LoginPhoneViewModel loginPhoneViewModel = loginSetPwdActivity.mLoginPhoneViewModel;
            if (loginPhoneViewModel != null) {
                loginPhoneViewModel.L(loginSetPwdActivity.requestBody, true);
                return;
            }
            return;
        }
        LoginCheckPhoneExistResult loginCheckPhoneExistResult3 = loginSetPwdActivity.checkPhoneExistResult;
        if (loginCheckPhoneExistResult3 != null && loginCheckPhoneExistResult3.getExists() && (loginCheckPhoneExistResult = loginSetPwdActivity.checkPhoneExistResult) != null && !loginCheckPhoneExistResult.getHasPassword()) {
            LoginPhoneViewModel loginPhoneViewModel2 = loginSetPwdActivity.mLoginPhoneViewModel;
            if (loginPhoneViewModel2 != null) {
                loginPhoneViewModel2.L(loginSetPwdActivity.requestBody, false);
                return;
            }
            return;
        }
        mx.k kVar = loginSetPwdActivity.mLoginLayoutInvitationCodeBinding;
        if (kVar == null || (appCompatEditText = kVar.f66817b) == null || (text = appCompatEditText.getText()) == null || (string2 = text.toString()) == null || (string = StringsKt.n1(string2).toString()) == null) {
            string = "";
        }
        if (string.length() > 0 && string.length() != 8) {
            mx.k kVar2 = loginSetPwdActivity.mLoginLayoutInvitationCodeBinding;
            if (kVar2 != null && (appCompatTextView3 = kVar2.f66821f) != null) {
                appCompatTextView3.setText(R$string.login_invitation_code_err);
            }
            mx.k kVar3 = loginSetPwdActivity.mLoginLayoutInvitationCodeBinding;
            if (kVar3 != null && (appCompatTextView2 = kVar3.f66821f) != null) {
                uf.c.k(appCompatTextView2);
            }
            loginSetPwdActivity.q0();
            return;
        }
        mx.k kVar4 = loginSetPwdActivity.mLoginLayoutInvitationCodeBinding;
        if (kVar4 != null && (appCompatTextView = kVar4.f66821f) != null) {
            uf.c.g(appCompatTextView);
        }
        loginSetPwdActivity.requestBody.setInviteCode(string);
        if (loginSetPwdActivity.requestBody.getAuthType() == 1) {
            LoginPhoneViewModel loginPhoneViewModel3 = loginSetPwdActivity.mLoginPhoneViewModel;
            if (loginPhoneViewModel3 != null) {
                loginPhoneViewModel3.s(loginSetPwdActivity.requestBody);
                return;
            }
            return;
        }
        LoginPhoneViewModel loginPhoneViewModel4 = loginSetPwdActivity.mLoginPhoneViewModel;
        if (loginPhoneViewModel4 != null) {
            loginPhoneViewModel4.K(loginSetPwdActivity.requestBody);
        }
    }

    public static final void u0(LoginSetPwdActivity loginSetPwdActivity, View view) {
        loginSetPwdActivity.onBackPressed();
    }

    public static final void v0(LoginSetPwdActivity loginSetPwdActivity, View view) {
        KeyboardUtils.d(loginSetPwdActivity);
    }

    public static final Unit w0(LoginSetPwdActivity loginSetPwdActivity, boolean z10, String str) {
        loginSetPwdActivity.E0(str);
        loginSetPwdActivity.n0();
        return Unit.f64096a;
    }

    public static final void x0(mx.h hVar, View view) {
        AppCompatImageView appCompatImageView = hVar.f66794b;
        appCompatImageView.setSelected(!appCompatImageView.isSelected());
        hVar.f66796d.setTransformationMethod(hVar.f66794b.isSelected() ? HideReturnsTransformationMethod.getInstance() : new ox.a());
        LoginPwdEditText loginPwdEditText = hVar.f66796d;
        Editable text = loginPwdEditText.getText();
        loginPwdEditText.setSelection(text != null ? text.length() : 0);
    }

    private final void y0() {
        LoginPhoneViewModel loginPhoneViewModel = (LoginPhoneViewModel) new androidx.p009lifecycle.v0(this).a(LoginPhoneViewModel.class);
        this.mLoginPhoneViewModel = loginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.u().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginSetPwdActivity.z0(this.f58303a, (LoginCheckPhoneExistResult) obj);
                }
            }));
            loginPhoneViewModel.A().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginSetPwdActivity.A0(this.f58313a, (String) obj);
                }
            }));
            loginPhoneViewModel.D().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginSetPwdActivity.B0(this.f58315a, (UserInfo) obj);
                }
            }));
            loginPhoneViewModel.B().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginSetPwdActivity.C0(this.f58318a, (UserInfo) obj);
                }
            }));
        }
    }

    public static final Unit z0(LoginSetPwdActivity loginSetPwdActivity, LoginCheckPhoneExistResult loginCheckPhoneExistResult) {
        LoginPhoneViewModel loginPhoneViewModel = loginSetPwdActivity.mLoginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            LoginPhoneViewModel.F(loginPhoneViewModel, loginSetPwdActivity.requestBody, 0, 2, null);
        }
        return Unit.f64096a;
    }

    @Override
    public String getPageName() {
        return "set_password";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(Bundle savedInstanceState) {
        String stringExtra;
        HashMap mapG;
        HashMap mapG2;
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra(EventConstants.KEY_SOURCE)) == null) {
            stringExtra = null;
        } else {
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
            }
        }
        this.source = stringExtra;
        Serializable serializableExtra = getIntent().getSerializableExtra("requestData");
        if (serializableExtra == null) {
            serializableExtra = this.requestBody;
        }
        Intrinsics.f(serializableExtra, "null cannot be cast to non-null type com.transsnet.login.phone.bean.LoginSmsCodeRequest");
        this.requestBody = (LoginSmsCodeRequest) serializableExtra;
        this.checkPhoneExistResult = (LoginCheckPhoneExistResult) getIntent().getSerializableExtra("checkPhoneData");
        final mx.h hVar = (mx.h) getMViewBinding();
        hVar.f66795c.setSelected(true);
        hVar.f66795c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginSetPwdActivity.t0(this.f58250a, view);
            }
        });
        hVar.f66797e.f66823b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginSetPwdActivity.u0(this.f58253a, view);
            }
        });
        hVar.getRoot().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginSetPwdActivity.v0(this.f58257a, view);
            }
        });
        hVar.f66796d.setEnableStatusChangeListener(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return LoginSetPwdActivity.w0(this.f58260a, ((Boolean) obj).booleanValue(), (String) obj2);
            }
        });
        hVar.f66794b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginSetPwdActivity.x0(hVar, view);
            }
        });
        LoginCheckPhoneExistResult loginCheckPhoneExistResult = this.checkPhoneExistResult;
        if (loginCheckPhoneExistResult != null && loginCheckPhoneExistResult.getReset()) {
            ((mx.h) getMViewBinding()).f66796d.setHint(R$string.login_pwd_set_hint);
            ((mx.h) getMViewBinding()).f66799g.setText(R$string.login_pwd_set_new);
            LoginProgressBar progress = ((mx.h) getMViewBinding()).f66797e.f66824c;
            Intrinsics.g(progress, "progress");
            uf.c.g(progress);
            AppCompatTextView tvProgress = ((mx.h) getMViewBinding()).f66797e.f66825d;
            Intrinsics.g(tvProgress, "tvProgress");
            uf.c.g(tvProgress);
            ((mx.h) getMViewBinding()).f66797e.f66826e.setText(R$string.login_pwd_find);
            ((mx.h) getMViewBinding()).f66795c.setText(R$string.login_pwd_done);
            return;
        }
        ((mx.h) getMViewBinding()).f66797e.f66824c.setProgress(3);
        LoginProgressBar progress2 = ((mx.h) getMViewBinding()).f66797e.f66824c;
        Intrinsics.g(progress2, "progress");
        uf.c.k(progress2);
        AppCompatTextView tvProgress2 = ((mx.h) getMViewBinding()).f66797e.f66825d;
        Intrinsics.g(tvProgress2, "tvProgress");
        uf.c.k(tvProgress2);
        ((mx.h) getMViewBinding()).f66797e.f66825d.setText("3/3");
        ((mx.h) getMViewBinding()).f66797e.f66824c.setProgress(600, DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
        ((mx.h) getMViewBinding()).f66795c.setText(R$string.login_sign_up_now);
        ((mx.h) getMViewBinding()).f66799g.setText(R$string.login_pwd_set_now);
        final kk.a aVar = (kk.a) TheRouter.d(kk.a.class, new Object[0]);
        if (Intrinsics.c(aVar != null ? aVar.d() : null, "true")) {
            mx.k kVarA = mx.k.a(((mx.h) getMViewBinding()).f66800h.inflate());
            String strH = aVar.h();
            qi.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            }
            kVarA.f66817b.setText(strH);
            AppCompatEditText appCompatEditText = kVarA.f66817b;
            Editable text = appCompatEditText.getText();
            appCompatEditText.setSelection(text != null ? text.length() : 0);
            kVarA.f66818c.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    LoginSetPwdActivity.s0(aVar, this, view);
                }
            });
            AppCompatEditText etCode = kVarA.f66817b;
            Intrinsics.g(etCode, "etCode");
            etCode.addTextChangedListener(new a());
            this.mLoginLayoutInvitationCodeBinding = kVarA;
        }
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
        super.onCreate(savedInstanceState);
        y0();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        q0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onPause() {
        super.onPause();
        ((mx.h) getMViewBinding()).f66796d.removeCallbacks(this.mRunnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onResume() {
        super.onResume();
        ((mx.h) getMViewBinding()).f66796d.postDelayed(this.mRunnable, 500L);
        LoginProgressBar loginProgressBar = ((mx.h) getMViewBinding()).f66797e.f66824c;
        Intrinsics.e(loginProgressBar);
        if (!uf.c.i(loginProgressBar) || loginProgressBar.getProgress() > loginProgressBar.getStartProgress()) {
            return;
        }
        loginProgressBar.startProgressIncrease();
    }

    @Override
    public mx.h getViewBinding() {
        mx.h hVarC = mx.h.c(getLayoutInflater());
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }
}
