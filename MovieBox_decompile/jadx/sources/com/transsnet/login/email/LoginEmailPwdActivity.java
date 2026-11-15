package com.transsnet.login.email;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.activity.BaseActivity;
import com.transsnet.login.R$string;
import com.transsnet.login.phone.LoginPhoneCodeActivity;
import com.transsnet.login.phone.LoginPhoneViewModel;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.transsnet.login.phone.bean.LoginSmsCodeRequest;
import com.transsnet.login.phone.widget.LoginPwdEditText;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u0019\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\u0015\u0010\rJ\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u0019\u0010\u0019\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u001d\u0010\u001aJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0014¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0010H\u0016¢\u0006\u0004\b!\u0010\u0012J\u000f\u0010\"\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\"\u0010\u0012J\u000f\u0010#\u001a\u00020\nH\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R&\u00108\u001a\u0012\u0012\u0004\u0012\u00020\n04j\b\u0012\u0004\u0012\u00020\n`58\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010;\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u001e\u0010@\u001a\n\u0012\u0004\u0012\u00020=\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010C¨\u0006E"}, d2 = {"Lcom/transsnet/login/email/LoginEmailPwdActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lmx/c;", "<init>", "()V", "", "initData", "x0", "J0", "z0", "", "phoneNum", "S0", "(Ljava/lang/String;)V", "showLoading", "w0", "", "t0", "()Z", "u0", NotificationCompat.CATEGORY_MESSAGE, "R0", "v0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "y0", "()Lmx/c;", "initView", "onResume", "onPause", "onDestroy", "isTranslucent", "isStatusDark", "getPageName", "()Ljava/lang/String;", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "a", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "mLoginPhoneViewModel", "Lkj/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkj/h;", "mBaseLoadingDialog", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "c", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "requestBody", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/ArrayList;", "existEmailNumList", "e", "Ljava/lang/String;", EventConstants.KEY_SOURCE, "Landroidx/activity/result/b;", "Landroid/content/Intent;", "f", "Landroidx/activity/result/b;", "loginLaunch", "Ljava/lang/Runnable;", "g", "Ljava/lang/Runnable;", "mRunnable", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LoginEmailPwdActivity extends BaseActivity<mx.c> {

    private LoginPhoneViewModel mLoginPhoneViewModel;

    private kj.h mBaseLoadingDialog;

    private String source;

    private androidx.activity.result.b loginLaunch;

    private LoginSmsCodeRequest requestBody = new LoginSmsCodeRequest();

    private ArrayList existEmailNumList = new ArrayList();

    private final Runnable mRunnable = new Runnable() {
        @Override
        public final void run() {
            LoginEmailPwdActivity.Q0(this.f58119a);
        }
    };

    public static final class a implements TextWatcher {

        final mx.c f58097b;

        public a(mx.c cVar) {
            this.f58097b = cVar;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (LoginEmailPwdActivity.this.t0()) {
                LoginEmailPwdActivity.this.v0();
            }
            this.f58097b.f66746c.setVisibility((editable == null || editable.length() == 0) ? 8 : 0);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f58098a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58098a = function;
        }

        @Override
        public final Function a() {
            return this.f58098a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f58098a.invoke(obj);
        }
    }

    public static final void A0(LoginEmailPwdActivity loginEmailPwdActivity, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            loginEmailPwdActivity.setResult(-1);
            loginEmailPwdActivity.finish();
        }
    }

    public static final void B0(LoginEmailPwdActivity loginEmailPwdActivity, View view) {
        Intent intent = new Intent();
        intent.putExtra("KEY_LOGIN_TYPE", PermissionConstants.PHONE);
        Unit unit = Unit.f64096a;
        loginEmailPwdActivity.setResult(10086, intent);
        loginEmailPwdActivity.finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void C0(LoginEmailPwdActivity loginEmailPwdActivity, View view) {
        String string;
        String string2;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.login_net_err);
            return;
        }
        if (!loginEmailPwdActivity.t0()) {
            loginEmailPwdActivity.R0(loginEmailPwdActivity.getString(R$string.login_email_err));
            return;
        }
        if (!loginEmailPwdActivity.u0()) {
            loginEmailPwdActivity.R0(loginEmailPwdActivity.getString(R$string.login_account_err));
            return;
        }
        loginEmailPwdActivity.showLoading();
        Editable text = ((mx.c) loginEmailPwdActivity.getMViewBinding()).f66751h.getText();
        String str = "";
        if (text == null || (string = text.toString()) == null) {
            string = "";
        }
        LoginSmsCodeRequest loginSmsCodeRequest = loginEmailPwdActivity.requestBody;
        Editable text2 = ((mx.c) loginEmailPwdActivity.getMViewBinding()).f66750g.getText();
        if (text2 != null && (string2 = text2.toString()) != null) {
            str = string2;
        }
        loginSmsCodeRequest.setMail(str);
        loginEmailPwdActivity.requestBody.setPassword(wg.a.f74277a.d(string));
        LoginPhoneViewModel loginPhoneViewModel = loginEmailPwdActivity.mLoginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.J(loginEmailPwdActivity.requestBody);
        }
    }

    public static final void D0(LoginEmailPwdActivity loginEmailPwdActivity, View view) {
        loginEmailPwdActivity.onBackPressed();
    }

    public static final void E0(LoginEmailPwdActivity loginEmailPwdActivity, View view) {
        KeyboardUtils.d(loginEmailPwdActivity);
    }

    public static final Unit F0(LoginEmailPwdActivity loginEmailPwdActivity, boolean z10, String str) {
        loginEmailPwdActivity.R0(str);
        return Unit.f64096a;
    }

    public static final void G0(mx.c cVar, LoginEmailPwdActivity loginEmailPwdActivity, View view) {
        cVar.f66750g.setText((CharSequence) null);
        loginEmailPwdActivity.requestBody.setPhone(null);
    }

    public static final void H0(mx.c cVar, View view) {
        AppCompatImageView appCompatImageView = cVar.f66747d;
        appCompatImageView.setSelected(!appCompatImageView.isSelected());
        cVar.f66751h.setTransformationMethod(cVar.f66747d.isSelected() ? HideReturnsTransformationMethod.getInstance() : new ox.a());
        LoginPwdEditText loginPwdEditText = cVar.f66751h;
        Editable text = loginPwdEditText.getText();
        loginPwdEditText.setSelection(text != null ? text.length() : 0);
    }

    public static final void I0(LoginEmailPwdActivity loginEmailPwdActivity, View view) {
        if (loginEmailPwdActivity.t0()) {
            loginEmailPwdActivity.x0();
        } else {
            fh.b.f60176a.d(R$string.login_email_err);
        }
    }

    private final void J0() {
        LoginPhoneViewModel loginPhoneViewModel = (LoginPhoneViewModel) new v0(this).a(LoginPhoneViewModel.class);
        this.mLoginPhoneViewModel = loginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.C().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginEmailPwdActivity.K0(this.f58120a, (String) obj);
                }
            }));
            loginPhoneViewModel.B().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginEmailPwdActivity.L0(this.f58121a, (UserInfo) obj);
                }
            }));
            loginPhoneViewModel.A().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginEmailPwdActivity.M0(this.f58122a, (String) obj);
                }
            }));
            loginPhoneViewModel.G().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginEmailPwdActivity.N0(this.f58123a, (LoginSmsCodeRequest) obj);
                }
            }));
            loginPhoneViewModel.u().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginEmailPwdActivity.O0(this.f58124a, (LoginCheckPhoneExistResult) obj);
                }
            }));
            loginPhoneViewModel.t().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginEmailPwdActivity.P0(this.f58125a, (String) obj);
                }
            }));
        }
    }

    public static final Unit K0(LoginEmailPwdActivity loginEmailPwdActivity, String str) {
        loginEmailPwdActivity.S0(str);
        return Unit.f64096a;
    }

    public static final Unit L0(LoginEmailPwdActivity loginEmailPwdActivity, UserInfo userInfo) {
        loginEmailPwdActivity.w0();
        if (userInfo != null) {
            KeyboardUtils.d(loginEmailPwdActivity);
            loginEmailPwdActivity.setResult(-1);
            loginEmailPwdActivity.finish();
        }
        HashMap map = new HashMap();
        map.put("is_login", "true");
        String str = loginEmailPwdActivity.source;
        if (str != null) {
            map.put(EventConstants.KEY_SOURCE, str);
        }
        qi.h.f69682a.o(loginEmailPwdActivity.getPageName(), map);
        return Unit.f64096a;
    }

    public static final Unit M0(LoginEmailPwdActivity loginEmailPwdActivity, String str) {
        if (str != null) {
            loginEmailPwdActivity.R0(str);
        }
        HashMap map = new HashMap();
        map.put("error_code", String.valueOf(str));
        String str2 = loginEmailPwdActivity.source;
        if (str2 != null) {
            map.put(EventConstants.KEY_SOURCE, str2);
        }
        qi.h.f69682a.o(loginEmailPwdActivity.getPageName(), map);
        return Unit.f64096a;
    }

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
    public static final Unit N0(LoginEmailPwdActivity loginEmailPwdActivity, LoginSmsCodeRequest loginSmsCodeRequest) {
        loginEmailPwdActivity.w0();
        if (loginSmsCodeRequest != null) {
            Intent intent = new Intent(loginEmailPwdActivity, (Class<?>) LoginPhoneCodeActivity.class);
            intent.putExtra("requestData", loginEmailPwdActivity.requestBody);
            LoginCheckPhoneExistResult loginCheckPhoneExistResult = new LoginCheckPhoneExistResult();
            loginCheckPhoneExistResult.setReset(true);
            intent.putExtra("checkPhoneData", loginCheckPhoneExistResult);
            intent.putExtra(EventConstants.KEY_SOURCE, loginEmailPwdActivity.source);
            androidx.activity.result.b bVar = loginEmailPwdActivity.loginLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
        }
        return Unit.f64096a;
    }

    public static final Unit O0(LoginEmailPwdActivity loginEmailPwdActivity, LoginCheckPhoneExistResult loginCheckPhoneExistResult) {
        if (loginCheckPhoneExistResult == null) {
            loginEmailPwdActivity.w0();
        } else if (loginCheckPhoneExistResult.getExists()) {
            loginEmailPwdActivity.existEmailNumList.add(loginEmailPwdActivity.requestBody.getCc() + loginEmailPwdActivity.requestBody.getPhone());
            LoginPhoneViewModel loginPhoneViewModel = loginEmailPwdActivity.mLoginPhoneViewModel;
            if (loginPhoneViewModel != null) {
                loginPhoneViewModel.E(loginEmailPwdActivity.requestBody, 2);
            }
        } else {
            loginEmailPwdActivity.w0();
            fh.b.f60176a.d(R$string.login_email_not_exist);
        }
        return Unit.f64096a;
    }

    public static final Unit P0(LoginEmailPwdActivity loginEmailPwdActivity, String str) {
        loginEmailPwdActivity.R0(str);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void Q0(LoginEmailPwdActivity loginEmailPwdActivity) {
        String mail = loginEmailPwdActivity.requestBody.getMail();
        View view = (mail == null || mail.length() == 0) ? ((mx.c) loginEmailPwdActivity.getMViewBinding()).f66750g : ((mx.c) loginEmailPwdActivity.getMViewBinding()).f66751h;
        view.clearFocus();
        view.requestFocus();
        KeyboardUtils.i(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void R0(String msg) {
        if (msg == null) {
            v0();
        } else {
            ((mx.c) getMViewBinding()).f66755l.setText(msg);
            ((mx.c) getMViewBinding()).f66755l.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void S0(String phoneNum) {
        ((mx.c) getMViewBinding()).f66750g.setText(phoneNum);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
        String mail = this.requestBody.getMail();
        if (mail != null) {
            ((mx.c) getMViewBinding()).f66750g.setText(mail);
            ((mx.c) getMViewBinding()).f66750g.setSelection(mail.length());
            this.existEmailNumList.add(mail);
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
    public final boolean t0() {
        Editable text = ((mx.c) getMViewBinding()).f66750g.getText();
        return text != null && com.blankj.utilcode.util.u.b(text);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean u0() {
        return ((mx.c) getMViewBinding()).f66751h.length() >= 6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void v0() {
        ((mx.c) getMViewBinding()).f66755l.setVisibility(8);
    }

    private final void w0() {
        kj.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void x0() {
        showLoading();
        String strValueOf = String.valueOf(((mx.c) getMViewBinding()).f66750g.getText());
        this.requestBody.setMail(strValueOf);
        if (this.existEmailNumList.contains(strValueOf)) {
            LoginPhoneViewModel loginPhoneViewModel = this.mLoginPhoneViewModel;
            if (loginPhoneViewModel != null) {
                loginPhoneViewModel.E(this.requestBody, 2);
                return;
            }
            return;
        }
        LoginPhoneViewModel loginPhoneViewModel2 = this.mLoginPhoneViewModel;
        if (loginPhoneViewModel2 != null) {
            loginPhoneViewModel2.q(this.requestBody);
        }
    }

    private final void z0() {
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                LoginEmailPwdActivity.A0(this.f58135a, (ActivityResult) obj);
            }
        });
    }

    @Override
    public String getPageName() {
        return "email_password_login";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(Bundle savedInstanceState) {
        String stringExtra;
        HashMap mapG;
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra(EventConstants.KEY_SOURCE)) == null) {
            stringExtra = null;
        } else {
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            }
        }
        this.source = stringExtra;
        Serializable serializableExtra = getIntent().getSerializableExtra("requestData");
        if (serializableExtra == null) {
            serializableExtra = this.requestBody;
        }
        LoginSmsCodeRequest loginSmsCodeRequest = (LoginSmsCodeRequest) serializableExtra;
        if (loginSmsCodeRequest != null) {
            this.requestBody = loginSmsCodeRequest;
        }
        this.requestBody.setAuthType(1);
        final mx.c cVar = (mx.c) getMViewBinding();
        cVar.f66748e.setSelected(true);
        cVar.f66748e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginEmailPwdActivity.C0(this.f58126a, view);
            }
        });
        cVar.f66745b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginEmailPwdActivity.D0(this.f58127a, view);
            }
        });
        cVar.getRoot().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginEmailPwdActivity.E0(this.f58128a, view);
            }
        });
        String mail = this.requestBody.getMail();
        if (mail == null) {
            mail = "";
        }
        cVar.f66750g.setText(mail);
        cVar.f66750g.setSelection(mail.length());
        AppCompatEditText etMail = cVar.f66750g;
        Intrinsics.g(etMail, "etMail");
        etMail.addTextChangedListener(new a(cVar));
        cVar.f66751h.setEnableStatusChangeListener(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return LoginEmailPwdActivity.F0(this.f58129a, ((Boolean) obj).booleanValue(), (String) obj2);
            }
        });
        cVar.f66746c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginEmailPwdActivity.G0(cVar, this, view);
            }
        });
        cVar.f66747d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginEmailPwdActivity.H0(cVar, view);
            }
        });
        cVar.f66753j.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginEmailPwdActivity.I0(this.f58133a, view);
            }
        });
        AppCompatTextView btnPhoneLogin = cVar.f66749f;
        Intrinsics.g(btnPhoneLogin, "btnPhoneLogin");
        com.transsion.baseui.util.q.c(btnPhoneLogin, com.blankj.utilcode.util.i.e(8.0f));
        cVar.f66749f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginEmailPwdActivity.B0(this.f58134a, view);
            }
        });
        com.transsnet.login.t tVar = com.transsnet.login.t.f58332a;
        AppCompatTextView tvPrivacy = ((mx.c) getMViewBinding()).f66754k;
        Intrinsics.g(tvPrivacy, "tvPrivacy");
        tVar.a(this, tvPrivacy);
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
        z0();
        J0();
        initData();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        androidx.activity.result.b bVar = this.loginLaunch;
        if (bVar != null) {
            bVar.c();
        }
        w0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onPause() {
        super.onPause();
        ((mx.c) getMViewBinding()).f66750g.removeCallbacks(this.mRunnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onResume() {
        super.onResume();
        ((mx.c) getMViewBinding()).f66750g.postDelayed(this.mRunnable, 500L);
    }

    @Override
    public mx.c getViewBinding() {
        mx.c cVarC = mx.c.c(getLayoutInflater());
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }
}
