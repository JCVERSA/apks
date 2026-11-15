package com.cloud.hisavana.sdk.common.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.R$style;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.widget.CountTimeView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e1;
import com.cloud.hisavana.sdk.k4;
import com.cloud.tmc.kernel.constants.TmcConstants;
import org.mvel2.ast.ASTNode;

public class HisavanaSplashActivity extends AppCompatActivity {

    private static boolean f21189f;

    private e1 f21191b;

    private long f21192c;

    private String f21194e;

    private final String f21190a = "HisavanaSplashActivity";

    private boolean f21193d = false;

    private void O() {
        CountTimeView countTimeViewJ;
        e1 e1Var = this.f21191b;
        if (e1Var == null || (countTimeViewJ = e1Var.J()) == null) {
            return;
        }
        countTimeViewJ.setStartTime((int) this.f21192c);
        countTimeViewJ.start();
    }

    public static void P(Context context, String str, boolean z10) {
        f21189f = z10;
        Intent intent = new Intent(context, (Class<?>) HisavanaSplashActivity.class);
        intent.setFlags(ASTNode.DEOP);
        intent.putExtra("uniqueID", str);
        context.startActivity(intent);
    }

    private void Q() {
        this.f21194e = getIntent().getStringExtra("uniqueID");
        e1 e1VarA = k4.b().a(this.f21194e);
        this.f21191b = e1VarA;
        if (e1VarA == null || e1VarA.r() != 0) {
            finish();
            e1 e1Var = this.f21191b;
            if (e1Var != null) {
                e1Var.c0(TaErrorCode.ERROR_SHOW_INNER_INVALID);
                return;
            }
            return;
        }
        setContentView(R$layout.activity_hisavana_splash);
        if (f21189f) {
            com.cloud.hisavana.sdk.common.util.a.a(this);
        }
        this.f21191b.j0((RelativeLayout) findViewById(R$id.splash_ad));
        this.f21191b.h0(this);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        setTitle((CharSequence) null);
        if (f21189f) {
            setTheme(R$style.InterstitialFullscreenStyle);
        }
        if (Build.VERSION.SDK_INT != 26) {
            setRequestedOrientation(1);
        }
        super.onCreate(bundle);
        Q();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        e1 e1Var = this.f21191b;
        if (e1Var != null) {
            e1Var.m();
            this.f21191b = null;
        }
        k4.b().d(this.f21194e);
    }

    @Override
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        e1 e1Var;
        CountTimeView countTimeViewJ;
        if (i10 == 4 && (e1Var = this.f21191b) != null && (countTimeViewJ = e1Var.J()) != null) {
            long supposeFinishTime = countTimeViewJ.getSupposeFinishTime();
            if (supposeFinishTime > 0 && supposeFinishTime > System.currentTimeMillis()) {
                return true;
            }
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override
    protected void onPause() {
        super.onPause();
        e1 e1Var = this.f21191b;
        if (e1Var != null) {
            CountTimeView countTimeViewJ = e1Var.J();
            if (countTimeViewJ != null) {
                this.f21192c = countTimeViewJ.getRemainder() / 1000;
                countTimeViewJ.cancel();
            }
            this.f21191b.R();
        }
        this.f21193d = true;
    }

    @Override
    protected void onResume() {
        b4.b().d("HisavanaSplashActivity", "onResume");
        super.onResume();
        e1 e1Var = this.f21191b;
        if (e1Var != null && e1Var.L()) {
            AdsDTO adsDTOT = this.f21191b.T();
            if (adsDTOT != null && !adsDTOT.isInteractiveAd()) {
                O();
            }
            this.f21191b.A0();
            this.f21191b.I();
            this.f21193d = false;
            return;
        }
        e1 e1Var2 = this.f21191b;
        if (e1Var2 != null && e1Var2.L() && this.f21191b.M()) {
            O();
            this.f21193d = false;
            return;
        }
        e1 e1Var3 = this.f21191b;
        if (e1Var3 == null || !e1Var3.M()) {
            if (this.f21193d) {
                O();
            }
            this.f21193d = true;
        } else {
            b4.b().d("HisavanaSplashActivity", "close ad");
            finish();
            this.f21191b.P();
            this.f21193d = false;
        }
    }

    @Override
    protected void onStart() {
        super.onStart();
        b4.b().d("HisavanaSplashActivity", TmcConstants.NAVIGATION_ON_START);
    }
}
