package com.transsnet.login.email;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsnet.login.LoginActivity;
import com.transsnet.login.R$string;
import com.transsnet.login.constant.LoginType;
import com.transsnet.login.phone.LoginPhoneCodeActivity;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.transsnet.login.phone.bean.LoginSmsCodeRequest;
import com.transsnet.login.widget.LoginProgressBar;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.json.JSONException;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0019\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001e\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u00102\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101¨\u00063"}, d2 = {"Lcom/transsnet/login/email/LoginEmailFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lmx/b;", "<init>", "()V", "", "showLoading", "i0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "k0", "(Landroid/view/LayoutInflater;)Lmx/b;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "onResume", "onDestroy", "Lcom/transsnet/login/email/a0;", "a", "Lkotlin/Lazy;", "j0", "()Lcom/transsnet/login/email/a0;", "mLoginEmailViewModel", "Landroidx/activity/result/b;", "Landroid/content/Intent;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/activity/result/b;", "mLoginLaunch", "Lkj/h;", "c", "Lkj/h;", "mBaseLoadingDialog", "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;", "mRequestBody", "", "e", "Ljava/lang/String;", EventConstants.KEY_SOURCE, "Ljava/lang/Runnable;", "f", "Ljava/lang/Runnable;", "mRunnable", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LoginEmailFragment extends BaseFragment<mx.b> {

    private final Lazy mLoginEmailViewModel;

    private androidx.activity.result.b mLoginLaunch;

    private kj.h mBaseLoadingDialog;

    private LoginSmsCodeRequest mRequestBody;

    private String source;

    private final Runnable mRunnable;

    public static final class a implements TextWatcher {

        final mx.b f58087a;

        public a(mx.b bVar) {
            this.f58087a = bVar;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            String string;
            if (editable == null || (string = editable.toString()) == null) {
                string = "";
            }
            if (com.blankj.utilcode.util.u.b(string)) {
                AppCompatTextView tvTips = this.f58087a.f66743i;
                Intrinsics.g(tvTips, "tvTips");
                uf.c.g(tvTips);
            }
            if (editable == null || editable.length() == 0) {
                AppCompatImageButton btnClear = this.f58087a.f66736b;
                Intrinsics.g(btnClear, "btnClear");
                uf.c.g(btnClear);
            } else {
                AppCompatImageButton btnClear2 = this.f58087a.f66736b;
                Intrinsics.g(btnClear2, "btnClear");
                uf.c.k(btnClear2);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f58088a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58088a = function;
        }

        @Override
        public final Function a() {
            return this.f58088a;
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
            this.f58088a.invoke(obj);
        }
    }

    public LoginEmailFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.mLoginEmailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(a0.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.mRequestBody = new LoginSmsCodeRequest();
        this.mRunnable = new Runnable() {
            @Override
            public final void run() {
                LoginEmailFragment.r0(this.f58113a);
            }
        };
    }

    private final void i0() {
        kj.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    private final a0 j0() {
        return (a0) this.mLoginEmailViewModel.getValue();
    }

    public static final Unit l0(LoginEmailFragment loginEmailFragment, LoginCheckPhoneExistResult loginCheckPhoneExistResult) throws JSONException {
        if (loginCheckPhoneExistResult == null) {
            loginEmailFragment.i0();
            return Unit.f64096a;
        }
        String mail = loginEmailFragment.mRequestBody.getMail();
        if (mail == null || mail.length() == 0) {
            return Unit.f64096a;
        }
        if (!loginCheckPhoneExistResult.getExists() || !loginCheckPhoneExistResult.getHasPassword()) {
            a0.i(loginEmailFragment.j0(), mail, 0, 2, null);
            return Unit.f64096a;
        }
        loginEmailFragment.i0();
        Intent intent = new Intent(loginEmailFragment.requireContext(), (Class<?>) LoginEmailPwdActivity.class);
        intent.putExtra("requestData", loginEmailFragment.mRequestBody);
        intent.putExtra("checkPhoneData", loginCheckPhoneExistResult);
        intent.putExtra(EventConstants.KEY_SOURCE, loginEmailFragment.source);
        androidx.activity.result.b bVar = loginEmailFragment.mLoginLaunch;
        if (bVar != null) {
            bVar.a(intent);
        }
        com.tn.lib.widget.toast.core.h.f40484a.k(R$string.login_existed);
        return Unit.f64096a;
    }

    public static final Unit m0(LoginEmailFragment loginEmailFragment, String str) {
        if (str != null) {
            Intent intent = new Intent(loginEmailFragment.requireContext(), (Class<?>) LoginPhoneCodeActivity.class);
            loginEmailFragment.mRequestBody.setType(1);
            intent.putExtra(EventConstants.KEY_SOURCE, loginEmailFragment.source);
            intent.putExtra("requestData", loginEmailFragment.mRequestBody);
            intent.putExtra("checkPhoneData", (Serializable) loginEmailFragment.j0().g().f());
            androidx.activity.result.b bVar = loginEmailFragment.mLoginLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
        }
        loginEmailFragment.i0();
        return Unit.f64096a;
    }

    public static final void n0(mx.b bVar, View view) {
        bVar.f66739e.setText("");
    }

    public static final void o0(LoginEmailFragment loginEmailFragment, View view) {
        FragmentActivity activity = loginEmailFragment.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    public static final void p0(mx.b bVar, LoginEmailFragment loginEmailFragment, View view) {
        zg.g gVar = zg.g.f76786a;
        Context context = view.getContext();
        Intrinsics.g(context, "getContext(...)");
        if (!gVar.a(context)) {
            com.tn.lib.widget.toast.core.h.f40484a.k(com.tn.lib.widget.R$string.no_network_tips);
            return;
        }
        Editable text = bVar.f66739e.getText();
        String string = text != null ? text.toString() : null;
        if (string == null || string.length() == 0 || !com.blankj.utilcode.util.u.b(string)) {
            AppCompatTextView tvTips = bVar.f66743i;
            Intrinsics.g(tvTips, "tvTips");
            uf.c.k(tvTips);
            return;
        }
        AppCompatTextView tvTips2 = bVar.f66743i;
        Intrinsics.g(tvTips2, "tvTips");
        uf.c.g(tvTips2);
        loginEmailFragment.showLoading();
        LoginSmsCodeRequest loginSmsCodeRequest = loginEmailFragment.mRequestBody;
        String string2 = StringsKt.n1(string).toString();
        loginEmailFragment.j0().f(string2);
        loginSmsCodeRequest.setMail(string2);
    }

    public static final void q0(LoginEmailFragment loginEmailFragment, View view) {
        FragmentActivity activity = loginEmailFragment.getActivity();
        LoginActivity loginActivity = activity instanceof LoginActivity ? (LoginActivity) activity : null;
        if (loginActivity != null) {
            loginActivity.b0(LoginType.PHONE);
        }
    }

    public static final void r0(LoginEmailFragment loginEmailFragment) {
        AppCompatEditText appCompatEditText;
        mx.b mViewBinding = loginEmailFragment.getMViewBinding();
        if (mViewBinding == null || (appCompatEditText = mViewBinding.f66739e) == null) {
            return;
        }
        appCompatEditText.clearFocus();
        appCompatEditText.requestFocus();
        KeyboardUtils.i(appCompatEditText);
    }

    public static final void s0(LoginEmailFragment loginEmailFragment, ActivityResult it) {
        FragmentActivity activity;
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1 || (activity = loginEmailFragment.getActivity()) == null) {
            return;
        }
        activity.setResult(-1);
        activity.finish();
    }

    private final void showLoading() {
        if (this.mBaseLoadingDialog == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            this.mBaseLoadingDialog = new kj.h(contextRequireContext);
        }
        kj.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.show();
        }
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        j0().g().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LoginEmailFragment.l0(this.f58110a, (LoginCheckPhoneExistResult) obj);
            }
        }));
        j0().j().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LoginEmailFragment.m0(this.f58111a, (String) obj);
            }
        }));
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        final mx.b mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f66737c.setSelected(true);
            AppCompatEditText etEmail = mViewBinding.f66739e;
            Intrinsics.g(etEmail, "etEmail");
            etEmail.addTextChangedListener(new a(mViewBinding));
            mViewBinding.f66736b.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LoginEmailFragment.n0(mViewBinding, view2);
                }
            });
            mViewBinding.f66741g.f66823b.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LoginEmailFragment.o0(this.f58115a, view2);
                }
            });
            mViewBinding.f66741g.f66824c.setProgress(0, 300);
            mViewBinding.f66737c.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LoginEmailFragment.p0(mViewBinding, this, view2);
                }
            });
            com.transsnet.login.t tVar = com.transsnet.login.t.f58332a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            AppCompatTextView tvPrivacy = mViewBinding.f66742h;
            Intrinsics.g(tvPrivacy, "tvPrivacy");
            tVar.a(contextRequireContext, tvPrivacy);
            if (ix.b.f62812a.b()) {
                LinearLayout llPhoneLoginEntry = mViewBinding.f66740f;
                Intrinsics.g(llPhoneLoginEntry, "llPhoneLoginEntry");
                uf.c.k(llPhoneLoginEntry);
                mViewBinding.f66738d.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        LoginEmailFragment.q0(this.f58118a, view2);
                    }
                });
            }
        }
    }

    @Override
    public mx.b getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        mx.b bVarC = mx.b.c(inflater);
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String string;
        HashMap mapG;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString(EventConstants.KEY_SOURCE)) == null) {
            string = null;
        } else {
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            }
        }
        this.source = string;
        this.mLoginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                LoginEmailFragment.s0(this.f58112a, (ActivityResult) obj);
            }
        });
        this.mRequestBody.setAuthType(1);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        androidx.activity.result.b bVar = this.mLoginLaunch;
        if (bVar != null) {
            bVar.c();
        }
        i0();
    }

    @Override
    public void onResume() {
        mx.l lVar;
        LoginProgressBar loginProgressBar;
        AppCompatEditText appCompatEditText;
        super.onResume();
        mx.b mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatEditText = mViewBinding.f66739e) != null) {
            appCompatEditText.postDelayed(this.mRunnable, 500L);
        }
        mx.b mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (lVar = mViewBinding2.f66741g) == null || (loginProgressBar = lVar.f66824c) == null || loginProgressBar.getProgress() > 0) {
            return;
        }
        loginProgressBar.startProgressIncrease();
    }
}
