package com.transsnet.login;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.tasks.Task;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.activity.BaseActivity;
import com.transsnet.login.email.LoginEmailPwdActivity;
import com.transsnet.login.phone.LoginPwdActivity;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 K2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00010B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u001d\u0010\u0011\u001a\u00020\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0018\u0010\u0004J\u0019\u0010\u001b\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001f\u0010\nJ\u000f\u0010 \u001a\u00020\bH\u0016¢\u0006\u0004\b \u0010\nJ\u000f\u0010!\u001a\u00020\bH\u0016¢\u0006\u0004\b!\u0010\nJ\u000f\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'J)\u0010-\u001a\u00020\u00052\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020(2\b\u0010,\u001a\u0004\u0018\u00010+H\u0014¢\u0006\u0004\b-\u0010.R\u001e\u00102\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00107\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00104R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u001b\u0010A\u001a\u00020<8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u001b\u0010F\u001a\u00020B8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010>\u001a\u0004\bD\u0010ER\u0018\u0010J\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010I¨\u0006L"}, d2 = {"Lcom/transsnet/login/LoginLikeActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lmx/e;", "<init>", "()V", "", "t0", "initView", "", "B0", "()Z", "D0", "k0", "p0", "Lcom/google/android/gms/tasks/Task;", "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;", "completedTask", "s0", "(Lcom/google/android/gms/tasks/Task;)V", "account", "q0", "(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V", "z0", "showLoading", "l0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "o0", "()Lmx/e;", "isTranslucent", "isStatusDark", "isChangeStatusBar", "", "getPageName", "()Ljava/lang/String;", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "Landroidx/activity/result/b;", "a", "Landroidx/activity/result/b;", "loginLaunch", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", EventConstants.KEY_SOURCE, "c", "titleName", "Lcom/transsnet/login/LoginViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsnet/login/LoginViewModel;", "loginViewModel", "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;", "e", "Lkotlin/Lazy;", "m0", "()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;", "gso", "Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;", "f", "n0", "()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;", "mGoogleSignInClient", "Lkj/h;", "g", "Lkj/h;", "mBaseLoadingDialog", "h", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LoginLikeActivity extends BaseActivity<mx.e> {

    private androidx.activity.result.b loginLaunch;

    private String source;

    private String titleName;

    private LoginViewModel loginViewModel;

    private final Lazy gso = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return LoginLikeActivity.r0(this.f58138a);
        }
    });

    private final Lazy mGoogleSignInClient = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return LoginLikeActivity.C0(this.f58139a);
        }
    });

    private kj.h mBaseLoadingDialog;

    static final class b implements c0, FunctionAdapter {

        private final Function1 f58045a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58045a = function;
        }

        @Override
        public final Function a() {
            return this.f58045a;
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
            this.f58045a.invoke(obj);
        }
    }

    public static final Unit A0(LoginLikeActivity loginLikeActivity, UserInfo userInfo) {
        loginLikeActivity.l0();
        if (userInfo != null) {
            loginLikeActivity.finish();
        }
        return Unit.f64096a;
    }

    private final boolean B0() {
        try {
            return GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this) == 0;
        } catch (Throwable th2) {
            wf.a.f74274a.h("LoginLikeActivity", "isGooglePlayServicesAvailable error: " + th2.getMessage(), th2, true);
            return false;
        }
    }

    public static final GoogleSignInClient C0(LoginLikeActivity loginLikeActivity) {
        GoogleSignInClient client = GoogleSignIn.getClient((Activity) loginLikeActivity, loginLikeActivity.m0());
        Intrinsics.g(client, "getClient(...)");
        return client;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void D0() {
        if (B0()) {
            ((mx.e) getMViewBinding()).f66762c.setVisibility(0);
            ((mx.e) getMViewBinding()).f66762c.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    LoginLikeActivity.E0(this.f58157a, view);
                }
            });
        } else {
            ((mx.e) getMViewBinding()).f66762c.setVisibility(8);
            wf.a.f74274a.c("LoginLikeActivity", "Google login hidden: Play services not available", true);
        }
    }

    public static final void E0(LoginLikeActivity loginLikeActivity, View view) {
        loginLikeActivity.k0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        String str = this.titleName;
        if (str != null && str.length() != 0) {
            ((mx.e) getMViewBinding()).f66768i.setText(this.titleName);
        }
        ((mx.e) getMViewBinding()).f66769j.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginLikeActivity.w0(this.f58056a, view);
            }
        });
        ((mx.e) getMViewBinding()).f66763d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginLikeActivity.x0(this.f58079a, view);
            }
        });
        if (ix.b.f62812a.b()) {
            ((mx.e) getMViewBinding()).f66765f.setText(getString(R$string.login_continue_with_phone_or_email));
            ((mx.e) getMViewBinding()).f66765f.setCompoundDrawablesRelativeWithIntrinsicBounds(R$mipmap.login_phone_email_icon, 0, 0, 0);
        }
        ((mx.e) getMViewBinding()).f66761b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginLikeActivity.y0(this.f58080a, view);
            }
        });
        AppCompatTextView tvLogIn = ((mx.e) getMViewBinding()).f66766g;
        Intrinsics.g(tvLogIn, "tvLogIn");
        com.transsion.baseui.util.q.c(tvLogIn, com.blankj.utilcode.util.i.e(8.0f));
        ((mx.e) getMViewBinding()).f66766g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginLikeActivity.v0(this.f58136a, view);
            }
        });
        t tVar = t.f58332a;
        AppCompatTextView tvPrivacy = ((mx.e) getMViewBinding()).f66767h;
        Intrinsics.g(tvPrivacy, "tvPrivacy");
        tVar.a(this, tvPrivacy);
        D0();
    }

    private final void k0() {
        if (B0()) {
            HashMap map = new HashMap();
            map.put("module_name", "google");
            String str = this.source;
            if (str != null) {
                map.put(EventConstants.KEY_SOURCE, str);
            }
            qi.h.f69682a.o("sign_up_dialog", map);
            GoogleSignInAccount lastSignedInAccount = GoogleSignIn.getLastSignedInAccount(this);
            if (lastSignedInAccount != null) {
                Scope[] scopeArray = m0().getScopeArray();
                if (GoogleSignIn.hasPermissions(lastSignedInAccount, (Scope[]) Arrays.copyOf(scopeArray, scopeArray.length)) && !lastSignedInAccount.isExpired()) {
                    q0(lastSignedInAccount);
                    return;
                }
            }
            p0();
        }
    }

    private final void l0() {
        kj.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    private final GoogleSignInOptions m0() {
        return (GoogleSignInOptions) this.gso.getValue();
    }

    private final GoogleSignInClient n0() {
        return (GoogleSignInClient) this.mGoogleSignInClient.getValue();
    }

    private final void p0() {
        Intent signInIntent = n0().getSignInIntent();
        Intrinsics.g(signInIntent, "getSignInIntent(...)");
        startActivityForResult(signInIntent, 10010);
    }

    private final void q0(GoogleSignInAccount account) {
        String idToken;
        if (account == null || (idToken = account.getIdToken()) == null) {
            return;
        }
        showLoading();
        LoginViewModel loginViewModel = this.loginViewModel;
        if (loginViewModel != null) {
            loginViewModel.h(idToken);
        }
    }

    public static final GoogleSignInOptions r0(LoginLikeActivity loginLikeActivity) {
        GoogleSignInOptions googleSignInOptionsBuild = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestIdToken(loginLikeActivity.getString(R$string.google_client_token)).requestEmail().requestProfile().build();
        Intrinsics.g(googleSignInOptionsBuild, "build(...)");
        return googleSignInOptionsBuild;
    }

    private final void s0(Task completedTask) {
        try {
            q0((GoogleSignInAccount) completedTask.getResult(ApiException.class));
        } catch (ApiException e10) {
            wf.a.f74274a.x("LoginLikeActivity", "signInResult failed code=" + e10.getStatusCode(), true);
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

    private final void t0() {
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                LoginLikeActivity.u0(this.f58137a, (ActivityResult) obj);
            }
        });
    }

    public static final void u0(LoginLikeActivity loginLikeActivity, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            loginLikeActivity.setResult(-1);
            loginLikeActivity.finish();
            return;
        }
        if (it.getResultCode() == 10086) {
            Intent data = it.getData();
            if (Intrinsics.c(data != null ? data.getStringExtra("KEY_LOGIN_TYPE") : null, PermissionConstants.PHONE)) {
                androidx.activity.result.b bVar = loginLikeActivity.loginLaunch;
                if (bVar != null) {
                    Intent intent = new Intent(loginLikeActivity, (Class<?>) LoginPwdActivity.class);
                    intent.putExtra(EventConstants.KEY_SOURCE, loginLikeActivity.source);
                    bVar.a(intent);
                    return;
                }
                return;
            }
            androidx.activity.result.b bVar2 = loginLikeActivity.loginLaunch;
            if (bVar2 != null) {
                Intent intent2 = new Intent(loginLikeActivity, (Class<?>) LoginEmailPwdActivity.class);
                intent2.putExtra(EventConstants.KEY_SOURCE, loginLikeActivity.source);
                bVar2.a(intent2);
            }
        }
    }

    public static final void v0(LoginLikeActivity loginLikeActivity, View view) {
        String string = ix.d.f62813a.b().getString("login_last_login_type", null);
        HashMap map = new HashMap();
        if (Intrinsics.c(string, PermissionConstants.PHONE)) {
            androidx.activity.result.b bVar = loginLikeActivity.loginLaunch;
            if (bVar != null) {
                Intent intent = new Intent(loginLikeActivity, (Class<?>) LoginPwdActivity.class);
                intent.putExtra(EventConstants.KEY_SOURCE, loginLikeActivity.source);
                bVar.a(intent);
            }
            map.put("module_name", "sign up with phone number");
        } else {
            androidx.activity.result.b bVar2 = loginLikeActivity.loginLaunch;
            if (bVar2 != null) {
                Intent intent2 = new Intent(loginLikeActivity, (Class<?>) LoginEmailPwdActivity.class);
                intent2.putExtra(EventConstants.KEY_SOURCE, loginLikeActivity.source);
                bVar2.a(intent2);
            }
            map.put("module_name", "sign_up_email");
        }
        String str = loginLikeActivity.source;
        if (str != null) {
            map.put(EventConstants.KEY_SOURCE, str);
        }
        qi.h.f69682a.o("sign_up_dialog", map);
    }

    public static final void w0(LoginLikeActivity loginLikeActivity, View view) {
        loginLikeActivity.onBackPressed();
    }

    public static final void x0(LoginLikeActivity loginLikeActivity, View view) {
        loginLikeActivity.onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void y0(LoginLikeActivity loginLikeActivity, View view) {
        androidx.activity.result.b bVar;
        if (com.transsion.baseui.util.c.f42332a.a(((mx.e) loginLikeActivity.getMViewBinding()).f66761b.getId(), 2000L) || (bVar = loginLikeActivity.loginLaunch) == null) {
            return;
        }
        Intent intent = new Intent(loginLikeActivity, (Class<?>) LoginActivity.class);
        intent.putExtra(EventConstants.KEY_SOURCE, loginLikeActivity.source);
        bVar.a(intent);
    }

    private final void z0() {
        LoginViewModel loginViewModel = (LoginViewModel) new v0(this).a(LoginViewModel.class);
        loginViewModel.g().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LoginLikeActivity.A0(this.f58156a, (UserInfo) obj);
            }
        }));
        this.loginViewModel = loginViewModel;
    }

    @Override
    public String getPageName() {
        return "sign_up_dialog";
    }

    @Override
    public boolean isChangeStatusBar() {
        return false;
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
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public mx.e getViewBinding() {
        mx.e eVarC = mx.e.c(getLayoutInflater());
        Intrinsics.g(eVarC, "inflate(...)");
        return eVarC;
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 10010 && B0()) {
            Task<GoogleSignInAccount> signedInAccountFromIntent = GoogleSignIn.getSignedInAccountFromIntent(data);
            Intrinsics.g(signedInAccountFromIntent, "getSignedInAccountFromIntent(...)");
            s0(signedInAccountFromIntent);
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        HashMap mapG;
        super.onCreate(savedInstanceState);
        String stringExtra = getIntent().getStringExtra(EventConstants.KEY_SOURCE);
        if (stringExtra != null) {
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            }
        } else {
            stringExtra = null;
        }
        this.source = stringExtra;
        this.titleName = getIntent().getStringExtra("title_name");
        z0();
        initView();
        t0();
    }
}
