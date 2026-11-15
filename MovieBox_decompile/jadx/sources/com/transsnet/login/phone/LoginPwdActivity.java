package com.transsnet.login.phone;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.Credentials;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.activity.BaseActivity;
import com.transsnet.login.R$string;
import com.transsnet.login.country.LoginSelectCountryActivity;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.transsnet.login.phone.bean.LoginSmsCodeRequest;
import com.transsnet.login.phone.widget.LoginPwdEditText;
import com.transsnet.loginapi.bean.Country;
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

@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u0019\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001a\u0010\u0018J\u0019\u0010\u001c\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u001c\u0010\u0011J\u000f\u0010\u001d\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\u0019\u0010 \u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0014¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\"\u0010#J\u0019\u0010$\u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b$\u0010!J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0014¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0016H\u0016¢\u0006\u0004\b(\u0010\u0018J\u000f\u0010)\u001a\u00020\u0016H\u0016¢\u0006\u0004\b)\u0010\u0018J\u000f\u0010*\u001a\u00020\u000eH\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00108\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R&\u0010E\u001a\u0012\u0012\u0004\u0012\u00020\u000e0Aj\b\u0012\u0004\u0012\u00020\u000e`B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u001e\u0010M\u001a\n\u0012\u0004\u0012\u00020J\u0018\u00010I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u001e\u0010P\u001a\n\u0012\u0004\u0012\u00020N\u0018\u00010I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010LR\u001e\u0010R\u001a\n\u0012\u0004\u0012\u00020N\u0018\u00010I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010LR\u0014\u0010V\u001a\u00020S8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010X\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u00107¨\u0006Y"}, d2 = {"Lcom/transsnet/login/phone/LoginPwdActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lmx/g;", "<init>", "()V", "", "initData", "E0", "T0", "G0", "Lcom/transsnet/loginapi/bean/Country;", PlaceTypes.COUNTRY, "d1", "(Lcom/transsnet/loginapi/bean/Country;)V", "", "phoneNum", "e1", "(Ljava/lang/String;)V", "y0", "showLoading", "D0", "z0", "", "x0", "()Z", "A0", "B0", NotificationCompat.CATEGORY_MESSAGE, "c1", "C0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "F0", "()Lmx/g;", "initView", "onResume", "onPause", "onDestroy", "isTranslucent", "isStatusDark", "getPageName", "()Ljava/lang/String;", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "a", "Lcom/transsnet/login/phone/LoginPhoneViewModel;", "mLoginPhoneViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsnet/loginapi/bean/Country;", "mCountry", "c", "Z", "mCheckPhoneNumFinished", "Lkj/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkj/h;", "mBaseLoadingDialog", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "e", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "requestBody", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "f", "Ljava/util/ArrayList;", "existPhoneNumList", "g", "Ljava/lang/String;", EventConstants.KEY_SOURCE, "Landroidx/activity/result/b;", "Landroidx/activity/result/IntentSenderRequest;", "h", "Landroidx/activity/result/b;", "requestPhoneLaunch", "Landroid/content/Intent;", "i", "requestCountryLaunch", "j", "loginLaunch", "Ljava/lang/Runnable;", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/Runnable;", "mRunnable", "l", "isLoginEnable", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LoginPwdActivity extends BaseActivity<mx.g> {

    private LoginPhoneViewModel mLoginPhoneViewModel;

    private Country mCountry;

    private boolean mCheckPhoneNumFinished;

    private kj.h mBaseLoadingDialog;

    private String source;

    private androidx.activity.result.b requestPhoneLaunch;

    private androidx.activity.result.b requestCountryLaunch;

    private androidx.activity.result.b loginLaunch;

    private boolean isLoginEnable;

    private LoginSmsCodeRequest requestBody = new LoginSmsCodeRequest();

    private ArrayList existPhoneNumList = new ArrayList();

    private final Runnable mRunnable = new Runnable() {
        @Override
        public final void run() {
            LoginPwdActivity.b1(this.f58280a);
        }
    };

    public static final class a implements TextWatcher {

        final mx.g f58238b;

        public a(mx.g gVar) {
            this.f58238b = gVar;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            LoginPwdActivity.this.z0();
            LoginPwdActivity.this.C0();
            this.f58238b.f66780c.setVisibility((editable == null || editable.length() == 0) ? 8 : 0);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f58239a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58239a = function;
        }

        @Override
        public final Function a() {
            return this.f58239a;
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
            this.f58239a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean A0() {
        Editable text = ((mx.g) getMViewBinding()).f66784g.getText();
        return (text != null ? text.length() : 0) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean B0() {
        return ((mx.g) getMViewBinding()).f66785h.isCanClickNext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void C0() {
        ((mx.g) getMViewBinding()).f66791n.setVisibility(8);
    }

    private final void D0() {
        kj.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void E0() {
        showLoading();
        this.requestBody.setPhone(String.valueOf(((mx.g) getMViewBinding()).f66784g.getText()));
        LoginSmsCodeRequest loginSmsCodeRequest = this.requestBody;
        Country country = this.mCountry;
        loginSmsCodeRequest.setCc(country != null ? country.getCode() : null);
        if (this.existPhoneNumList.contains(this.requestBody.getCc() + this.requestBody.getPhone())) {
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

    private final void G0() {
        this.requestCountryLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                LoginPwdActivity.H0(this.f58296a, (ActivityResult) obj);
            }
        });
        this.requestPhoneLaunch = registerForActivityResult(new f.k(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                LoginPwdActivity.I0(this.f58298a, (ActivityResult) obj);
            }
        });
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                LoginPwdActivity.J0(this.f58301a, (ActivityResult) obj);
            }
        });
    }

    public static final void H0(LoginPwdActivity loginPwdActivity, ActivityResult it) {
        Intent data;
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1 || (data = it.getData()) == null) {
            return;
        }
        Serializable serializableExtra = data.getSerializableExtra("countryCode");
        if (serializableExtra instanceof Country) {
            loginPwdActivity.d1((Country) serializableExtra);
        }
    }

    public static final void I0(LoginPwdActivity loginPwdActivity, ActivityResult it) {
        Intent data;
        LoginPhoneViewModel loginPhoneViewModel;
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1 && (data = it.getData()) != null) {
            Credential credential = (Credential) data.getParcelableExtra(Credential.EXTRA_KEY);
            String id2 = credential != null ? credential.getId() : null;
            if (id2 != null && (loginPhoneViewModel = loginPwdActivity.mLoginPhoneViewModel) != null) {
                loginPhoneViewModel.r(id2);
            }
        }
        loginPwdActivity.mCheckPhoneNumFinished = true;
    }

    public static final void J0(LoginPwdActivity loginPwdActivity, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            loginPwdActivity.setResult(-1);
            loginPwdActivity.finish();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void K0(LoginPwdActivity loginPwdActivity, View view) {
        String string;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.login_net_err);
            return;
        }
        if (!loginPwdActivity.x0()) {
            loginPwdActivity.c1(loginPwdActivity.getString(R$string.login_select_country_code_tips));
            return;
        }
        if (!loginPwdActivity.A0()) {
            loginPwdActivity.c1(loginPwdActivity.getString(R$string.login_phone_err));
            return;
        }
        if (!loginPwdActivity.B0()) {
            loginPwdActivity.c1(loginPwdActivity.getString(R$string.login_account_err));
            return;
        }
        loginPwdActivity.showLoading();
        LoginSmsCodeRequest loginSmsCodeRequest = loginPwdActivity.requestBody;
        Editable text = ((mx.g) loginPwdActivity.getMViewBinding()).f66784g.getText();
        if (text == null || (string = text.toString()) == null) {
            string = "";
        }
        loginSmsCodeRequest.setPhone(string);
        LoginSmsCodeRequest loginSmsCodeRequest2 = loginPwdActivity.requestBody;
        Country country = loginPwdActivity.mCountry;
        loginSmsCodeRequest2.setCc(country != null ? country.getCode() : null);
        loginPwdActivity.requestBody.setPassword(wg.a.f74277a.d(String.valueOf(((mx.g) loginPwdActivity.getMViewBinding()).f66785h.getText())));
        LoginPhoneViewModel loginPhoneViewModel = loginPwdActivity.mLoginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.J(loginPwdActivity.requestBody);
        }
    }

    public static final void L0(LoginPwdActivity loginPwdActivity, View view) {
        Intent intent = new Intent();
        intent.putExtra("KEY_LOGIN_TYPE", "EMAIL");
        Unit unit = Unit.f64096a;
        loginPwdActivity.setResult(10086, intent);
        loginPwdActivity.finish();
    }

    public static final void M0(LoginPwdActivity loginPwdActivity, View view) {
        loginPwdActivity.onBackPressed();
    }

    public static final void N0(LoginPwdActivity loginPwdActivity, View view) {
        KeyboardUtils.d(loginPwdActivity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void O0(LoginPwdActivity loginPwdActivity, View view) {
        ((mx.g) loginPwdActivity.getMViewBinding()).f66784g.clearFocus();
        androidx.activity.result.b bVar = loginPwdActivity.requestCountryLaunch;
        if (bVar != null) {
            bVar.a(new Intent(loginPwdActivity, (Class<?>) LoginSelectCountryActivity.class));
        }
    }

    public static final Unit P0(LoginPwdActivity loginPwdActivity, boolean z10, String str) {
        loginPwdActivity.c1(str);
        loginPwdActivity.z0();
        return Unit.f64096a;
    }

    public static final void Q0(mx.g gVar, LoginPwdActivity loginPwdActivity, View view) {
        gVar.f66784g.setText((CharSequence) null);
        loginPwdActivity.requestBody.setPhone(null);
    }

    public static final void R0(mx.g gVar, View view) {
        AppCompatImageView appCompatImageView = gVar.f66782e;
        appCompatImageView.setSelected(!appCompatImageView.isSelected());
        gVar.f66785h.setTransformationMethod(gVar.f66782e.isSelected() ? HideReturnsTransformationMethod.getInstance() : new ox.a());
        LoginPwdEditText loginPwdEditText = gVar.f66785h;
        Editable text = loginPwdEditText.getText();
        loginPwdEditText.setSelection(text != null ? text.length() : 0);
    }

    public static final void S0(LoginPwdActivity loginPwdActivity, View view) {
        if (!loginPwdActivity.x0()) {
            fh.b.f60176a.d(R$string.login_select_country_code_tips);
        } else if (loginPwdActivity.A0()) {
            loginPwdActivity.E0();
        } else {
            fh.b.f60176a.d(R$string.login_phone_err);
        }
    }

    private final void T0() {
        LoginPhoneViewModel loginPhoneViewModel = (LoginPhoneViewModel) new androidx.p009lifecycle.v0(this).a(LoginPhoneViewModel.class);
        this.mLoginPhoneViewModel = loginPhoneViewModel;
        if (loginPhoneViewModel != null) {
            loginPhoneViewModel.y().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.U0(this.f58252a, (Country) obj);
                }
            }));
            loginPhoneViewModel.C().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.V0(this.f58283a, (String) obj);
                }
            }));
            loginPhoneViewModel.B().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.W0(this.f58285a, (UserInfo) obj);
                }
            }));
            loginPhoneViewModel.A().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.X0(this.f58287a, (String) obj);
                }
            }));
            loginPhoneViewModel.G().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.Y0(this.f58289a, (LoginSmsCodeRequest) obj);
                }
            }));
            loginPhoneViewModel.u().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.Z0(this.f58291a, (LoginCheckPhoneExistResult) obj);
                }
            }));
            loginPhoneViewModel.t().j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginPwdActivity.a1(this.f58294a, (String) obj);
                }
            }));
        }
    }

    public static final Unit U0(LoginPwdActivity loginPwdActivity, Country country) {
        loginPwdActivity.d1(country);
        return Unit.f64096a;
    }

    public static final Unit V0(LoginPwdActivity loginPwdActivity, String str) {
        loginPwdActivity.e1(str);
        return Unit.f64096a;
    }

    public static final Unit W0(LoginPwdActivity loginPwdActivity, UserInfo userInfo) {
        loginPwdActivity.D0();
        if (userInfo != null) {
            KeyboardUtils.d(loginPwdActivity);
            loginPwdActivity.setResult(-1);
            loginPwdActivity.finish();
        }
        HashMap map = new HashMap();
        map.put("is_login", "true");
        String str = loginPwdActivity.source;
        if (str != null) {
            map.put(EventConstants.KEY_SOURCE, str);
        }
        qi.h.f69682a.o(loginPwdActivity.getPageName(), map);
        return Unit.f64096a;
    }

    public static final Unit X0(LoginPwdActivity loginPwdActivity, String str) {
        if (str != null) {
            loginPwdActivity.c1(str);
        }
        HashMap map = new HashMap();
        map.put("error_code", String.valueOf(str));
        String str2 = loginPwdActivity.source;
        if (str2 != null) {
            map.put(EventConstants.KEY_SOURCE, str2);
        }
        qi.h.f69682a.o(loginPwdActivity.getPageName(), map);
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
    public static final Unit Y0(LoginPwdActivity loginPwdActivity, LoginSmsCodeRequest loginSmsCodeRequest) {
        loginPwdActivity.D0();
        if (loginSmsCodeRequest != null) {
            Intent intent = new Intent(loginPwdActivity, (Class<?>) LoginPhoneCodeActivity.class);
            intent.putExtra("requestData", loginPwdActivity.requestBody);
            LoginCheckPhoneExistResult loginCheckPhoneExistResult = new LoginCheckPhoneExistResult();
            loginCheckPhoneExistResult.setReset(true);
            intent.putExtra("checkPhoneData", loginCheckPhoneExistResult);
            intent.putExtra(EventConstants.KEY_SOURCE, loginPwdActivity.source);
            androidx.activity.result.b bVar = loginPwdActivity.loginLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
        }
        return Unit.f64096a;
    }

    public static final Unit Z0(LoginPwdActivity loginPwdActivity, LoginCheckPhoneExistResult loginCheckPhoneExistResult) {
        if (loginCheckPhoneExistResult == null) {
            loginPwdActivity.D0();
        } else if (loginCheckPhoneExistResult.getExists()) {
            loginPwdActivity.existPhoneNumList.add(loginPwdActivity.requestBody.getCc() + loginPwdActivity.requestBody.getPhone());
            LoginPhoneViewModel loginPhoneViewModel = loginPwdActivity.mLoginPhoneViewModel;
            if (loginPhoneViewModel != null) {
                loginPhoneViewModel.E(loginPwdActivity.requestBody, 2);
            }
        } else {
            loginPwdActivity.D0();
            fh.b.f60176a.e(loginPwdActivity.getString(R$string.login_phone_not_exist));
        }
        return Unit.f64096a;
    }

    public static final Unit a1(LoginPwdActivity loginPwdActivity, String str) {
        loginPwdActivity.c1(str);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b1(LoginPwdActivity loginPwdActivity) {
        String phone = loginPwdActivity.requestBody.getPhone();
        View view = (phone == null || phone.length() == 0) ? ((mx.g) loginPwdActivity.getMViewBinding()).f66784g : ((mx.g) loginPwdActivity.getMViewBinding()).f66785h;
        view.clearFocus();
        view.requestFocus();
        KeyboardUtils.i(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void c1(String msg) {
        if (msg == null) {
            C0();
        } else {
            ((mx.g) getMViewBinding()).f66791n.setText(msg);
            ((mx.g) getMViewBinding()).f66791n.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void d1(Country country) {
        if (country != null) {
            this.mCountry = country;
            ((mx.g) getMViewBinding()).f66789l.setText(country.getCountry_s() + " + " + country.getCode());
            CharSequence text = ((mx.g) getMViewBinding()).f66791n.getText();
            if (Intrinsics.c(text != null ? text.toString() : null, getString(R$string.login_select_country_code_tips))) {
                C0();
            }
        }
        z0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void e1(String phoneNum) {
        ((mx.g) getMViewBinding()).f66784g.setText(phoneNum);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
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
        Country country = this.mCountry;
        if (country == null) {
            LoginPhoneViewModel loginPhoneViewModel = this.mLoginPhoneViewModel;
            if (loginPhoneViewModel != null) {
                loginPhoneViewModel.w();
            }
            c1(getString(R$string.login_select_country_code_tips));
        } else {
            d1(country);
        }
        String phone = this.requestBody.getPhone();
        if (phone == null) {
            y0();
        } else {
            this.mCheckPhoneNumFinished = true;
        }
        ((mx.g) getMViewBinding()).f66784g.setText(phone);
        ((mx.g) getMViewBinding()).f66784g.setSelection(phone != null ? phone.length() : 0);
        this.existPhoneNumList.add(this.requestBody.getCc() + this.requestBody.getPhone());
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

    private final boolean x0() {
        return this.mCountry != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void y0() {
        try {
            HintRequest hintRequestBuild = new HintRequest.Builder().setPhoneNumberIdentifierSupported(true).build();
            Intrinsics.g(hintRequestBuild, "build(...)");
            PendingIntent hintPickerIntent = Credentials.getClient((Activity) this).getHintPickerIntent(hintRequestBuild);
            Intrinsics.g(hintPickerIntent, "getHintPickerIntent(...)");
            IntentSenderRequest intentSenderRequestA = new IntentSenderRequest.a(hintPickerIntent).a();
            androidx.activity.result.b bVar = this.requestPhoneLaunch;
            if (bVar != null) {
                bVar.a(intentSenderRequestA);
            }
        } catch (Exception unused) {
            this.mCheckPhoneNumFinished = true;
            KeyboardUtils.i(((mx.g) getMViewBinding()).f66784g);
        }
    }

    public final void z0() {
        this.isLoginEnable = x0() && A0() && B0();
    }

    @Override
    public mx.g getViewBinding() {
        mx.g gVarC = mx.g.c(getLayoutInflater());
        Intrinsics.g(gVarC, "inflate(...)");
        return gVarC;
    }

    @Override
    public String getPageName() {
        return "password_login";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(Bundle savedInstanceState) {
        Serializable serializableExtra = getIntent().getSerializableExtra("requestData");
        if (serializableExtra == null) {
            serializableExtra = this.requestBody;
        }
        Intrinsics.f(serializableExtra, "null cannot be cast to non-null type com.transsnet.login.phone.bean.LoginSmsCodeRequest");
        LoginSmsCodeRequest loginSmsCodeRequest = (LoginSmsCodeRequest) serializableExtra;
        this.requestBody = loginSmsCodeRequest;
        loginSmsCodeRequest.setAuthType(0);
        this.mCountry = (Country) getIntent().getSerializableExtra(PlaceTypes.COUNTRY);
        final mx.g gVar = (mx.g) getMViewBinding();
        gVar.f66783f.setSelected(true);
        gVar.f66783f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginPwdActivity.K0(this.f58256a, view);
            }
        });
        gVar.f66779b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginPwdActivity.M0(this.f58259a, view);
            }
        });
        gVar.getRoot().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginPwdActivity.N0(this.f58262a, view);
            }
        });
        gVar.f66789l.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginPwdActivity.O0(this.f58265a, view);
            }
        });
        AppCompatEditText etPhone = gVar.f66784g;
        Intrinsics.g(etPhone, "etPhone");
        etPhone.addTextChangedListener(new a(gVar));
        gVar.f66785h.setEnableStatusChangeListener(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return LoginPwdActivity.P0(this.f58269a, ((Boolean) obj).booleanValue(), (String) obj2);
            }
        });
        gVar.f66780c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginPwdActivity.Q0(gVar, this, view);
            }
        });
        gVar.f66782e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginPwdActivity.R0(gVar, view);
            }
        });
        gVar.f66788k.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginPwdActivity.S0(this.f58276a, view);
            }
        });
        AppCompatTextView btnEmail = gVar.f66781d;
        Intrinsics.g(btnEmail, "btnEmail");
        com.transsion.baseui.util.q.c(btnEmail, com.blankj.utilcode.util.i.e(8.0f));
        gVar.f66781d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginPwdActivity.L0(this.f58278a, view);
            }
        });
        com.transsnet.login.t tVar = com.transsnet.login.t.f58332a;
        AppCompatTextView tvPrivacy = ((mx.g) getMViewBinding()).f66790m;
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
        G0();
        T0();
        initData();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        androidx.activity.result.b bVar = this.requestPhoneLaunch;
        if (bVar != null) {
            bVar.c();
        }
        androidx.activity.result.b bVar2 = this.requestCountryLaunch;
        if (bVar2 != null) {
            bVar2.c();
        }
        androidx.activity.result.b bVar3 = this.loginLaunch;
        if (bVar3 != null) {
            bVar3.c();
        }
        D0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onPause() {
        super.onPause();
        ((mx.g) getMViewBinding()).f66784g.removeCallbacks(this.mRunnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onResume() {
        super.onResume();
        if (this.mCheckPhoneNumFinished) {
            ((mx.g) getMViewBinding()).f66784g.postDelayed(this.mRunnable, 500L);
        }
    }
}
