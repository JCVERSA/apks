package com.cloud.hisavana.sdk.common.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.widget.CountTimeView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.q1;
import defpackage.ikd;
import defpackage.p5;
import defpackage.rod;

public class HisavanaSplashActivity extends AppCompatActivity {
    public static boolean S;
    public q1 O;
    public long P;
    public String R;
    public final String N = "HisavanaSplashActivity";
    public boolean Q = false;

    private void a() {
        CountTimeView countTimeViewJ;
        q1 q1Var = this.O;
        if (q1Var == null || (countTimeViewJ = q1Var.J()) == null) {
            return;
        }
        countTimeViewJ.setStartTime((int) this.P);
        countTimeViewJ.start();
    }

    private void b() {
        this.R = getIntent().getStringExtra("uniqueID");
        q1 q1VarA = rod.b().a(this.R);
        this.O = q1VarA;
        if (q1VarA == null || q1VarA.r() != 0) {
            finish();
            q1 q1Var = this.O;
            if (q1Var != null) {
                q1Var.h0(TaErrorCode.ERROR_SHOW_INNER_INVALID);
                return;
            }
            return;
        }
        setContentView(R.layout.activity_hisavana_splash);
        if (S) {
            p5.b(this);
        }
        this.O.n0((RelativeLayout) findViewById(R.id.splash_ad));
        this.O.l0(this);
    }

    public static void t(Context context, String str, boolean z) {
        S = z;
        Intent intent = new Intent(context, (Class<?>) HisavanaSplashActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("uniqueID", str);
        context.startActivity(intent);
    }

    public static void u(Context context, String str, boolean z) {
        S = z;
        Intent intent = new Intent(context, (Class<?>) HisavanaSplashActivity.class);
        intent.setFlags(65536);
        intent.putExtra("uniqueID", str);
        context.startActivity(intent);
    }

    @Override
    public void onCreate(Bundle bundle) {
        setTitle((CharSequence) null);
        if (S) {
            setTheme(R.style.InterstitialFullscreenStyle);
        }
        setRequestedOrientation(1);
        super.onCreate(bundle);
        b();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        q1 q1Var = this.O;
        if (q1Var != null) {
            q1Var.m();
            this.O = null;
        }
        rod.b().d(this.R);
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        q1 q1Var;
        CountTimeView countTimeViewJ;
        if (i == 4 && (q1Var = this.O) != null && (countTimeViewJ = q1Var.J()) != null) {
            long supposeFinishTime = countTimeViewJ.getSupposeFinishTime();
            if (supposeFinishTime > 0 && supposeFinishTime > System.currentTimeMillis()) {
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override
    public void onPause() {
        super.onPause();
        q1 q1Var = this.O;
        if (q1Var != null) {
            q1Var.Z(3);
            CountTimeView countTimeViewJ = this.O.J();
            if (countTimeViewJ != null) {
                this.P = countTimeViewJ.getRemainder() / 1000;
                countTimeViewJ.cancel();
            }
            this.O.T();
        }
        this.Q = true;
    }

    @Override
    public void onResume() {
        ikd.b().d("HisavanaSplashActivity", "onResume");
        super.onResume();
        q1 q1Var = this.O;
        if (q1Var == null) {
            return;
        }
        q1Var.Z(2);
        if (this.O.L()) {
            AdsDTO adsDTOV = this.O.V();
            if (adsDTOV != null && !adsDTOV.isInteractiveAd()) {
                a();
            }
            this.O.y0();
            this.O.I();
            this.Q = false;
            return;
        }
        if (this.O.L() && this.O.M()) {
            a();
            this.Q = false;
        } else if (!this.O.M()) {
            if (this.Q) {
                a();
            }
            this.Q = true;
        } else {
            ikd.b().d("HisavanaSplashActivity", "close ad");
            finish();
            this.O.P();
            this.Q = false;
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        q1 q1Var = this.O;
        if (q1Var != null) {
            q1Var.Z(1);
        }
        ikd.b().d("HisavanaSplashActivity", "onStart");
    }

    @Override
    public void onStop() {
        super.onStop();
        q1 q1Var = this.O;
        if (q1Var != null) {
            q1Var.Z(4);
        }
        ikd.b().d("HisavanaSplashActivity", "onStop");
    }
}
