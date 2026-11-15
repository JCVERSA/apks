package com.transsion.xuanniao.account.help.view;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.PolicyRes;
import com.transsion.xuanniao.account.model.data.PrivacyAgreementMap;
import defpackage.jr7;
import defpackage.nl7;
import defpackage.rm7;
import defpackage.sk7;
import defpackage.xj;
import java.util.Objects;

public class PrivacyCenterActivity extends BaseActivity implements sk7 {
    public nl7 e;

    public class a extends rm7 {
        public a() {
        }

        /* JADX WARN: Code duplicated, block: B:34:0x00d0  */
        @Override
        public void b(View view) {
            NetworkCapabilities networkCapabilities;
            if (view.getId() == R.id.privacyPolicyL) {
                PrivacyCenterActivity privacyCenterActivity = PrivacyCenterActivity.this;
                privacyCenterActivity.getClass();
                xj.U(privacyCenterActivity).a1();
                PrivacyCenterActivity privacyCenterActivity2 = PrivacyCenterActivity.this;
                privacyCenterActivity2.getClass();
                String privacyUrl = PrivacyAgreementMap.getPrivacyUrl(privacyCenterActivity2);
                if (!TextUtils.isEmpty(privacyUrl)) {
                    WebViewActivity.B0(PrivacyCenterActivity.this, R.string.xn_privacy_policy, jr7.f(privacyUrl));
                    return;
                }
                nl7 nl7Var = PrivacyCenterActivity.this.e;
                Objects.requireNonNull(nl7Var);
                nl7Var.b("policy");
                return;
            }
            if (view.getId() == R.id.userAgreementL) {
                PrivacyCenterActivity privacyCenterActivity3 = PrivacyCenterActivity.this;
                privacyCenterActivity3.getClass();
                xj.U(privacyCenterActivity3).b1();
                PrivacyCenterActivity privacyCenterActivity4 = PrivacyCenterActivity.this;
                privacyCenterActivity4.getClass();
                String agreementUrl = PrivacyAgreementMap.getAgreementUrl(privacyCenterActivity4);
                if (!TextUtils.isEmpty(agreementUrl)) {
                    WebViewActivity.B0(PrivacyCenterActivity.this, R.string.xn_user_agreement, jr7.f(agreementUrl));
                    return;
                }
                nl7 nl7Var2 = PrivacyCenterActivity.this.e;
                Objects.requireNonNull(nl7Var2);
                nl7Var2.b("usage");
                return;
            }
            if (view.getId() == R.id.faqL) {
                PrivacyCenterActivity privacyCenterActivity5 = PrivacyCenterActivity.this;
                privacyCenterActivity5.getClass();
                xj.U(privacyCenterActivity5).Z();
                PrivacyCenterActivity privacyCenterActivity6 = PrivacyCenterActivity.this;
                privacyCenterActivity6.getClass();
                ConnectivityManager connectivityManager = (ConnectivityManager) privacyCenterActivity6.getApplicationContext().getSystemService("connectivity");
                if (connectivityManager == null) {
                    PrivacyCenterActivity privacyCenterActivity7 = PrivacyCenterActivity.this;
                    privacyCenterActivity7.getClass();
                    xj.U(privacyCenterActivity7).Y();
                } else {
                    try {
                        Network activeNetwork = connectivityManager.getActiveNetwork();
                        if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null || (!networkCapabilities.hasTransport(1) && !networkCapabilities.hasTransport(0) && !networkCapabilities.hasTransport(4) && !networkCapabilities.hasTransport(3))) {
                            PrivacyCenterActivity privacyCenterActivity8 = PrivacyCenterActivity.this;
                            privacyCenterActivity8.getClass();
                            xj.U(privacyCenterActivity8).Y();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                nl7 nl7Var3 = PrivacyCenterActivity.this.e;
                Objects.requireNonNull(nl7Var3);
                nl7Var3.b("faq");
            }
        }
    }

    @Override
    public void E(PolicyRes policyRes, String str) {
        Objects.requireNonNull(this.e);
        if ("usage".equals(str)) {
            WebViewActivity.B0(this, R.string.xn_user_agreement, policyRes.usageUrl);
            return;
        }
        Objects.requireNonNull(this.e);
        if ("policy".equals(str)) {
            WebViewActivity.B0(this, R.string.xn_privacy_policy, policyRes.privacyUrl);
        } else {
            WebViewActivity.B0(this, R.string.xn_faq, policyRes.faqUrl);
        }
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 30001 && i2 == -1) {
            finish();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_privacy_center);
        getIntent().getBooleanExtra("is_oobe", false);
        nl7 nl7Var = new nl7();
        this.e = nl7Var;
        nl7Var.a = this;
        getActionBar().setTitle(getString(R.string.xn_help_and_private));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        a aVar = new a();
        findViewById(R.id.privacyPolicyL).setOnClickListener(aVar);
        findViewById(R.id.userAgreementL).setOnClickListener(aVar);
        if (jr7.g(this)) {
            getActionBar().setTitle(getString(R.string.xn_privacy_center));
            findViewById(R.id.privacyHead).setVisibility(8);
            findViewById(R.id.faqGroup).setVisibility(8);
        } else {
            findViewById(R.id.faqL).setOnClickListener(aVar);
        }
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
        xj.U(this).h1();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.e.a = null;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
