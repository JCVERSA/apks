package com.transsion.magicmovie.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.magicshow.R;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.vishaads.views.AdItemView;
import defpackage.a9;
import defpackage.c9;
import defpackage.e80;
import defpackage.mn5;

public class MarketingSplashActivity extends BaseAdActivity implements View.OnClickListener {
    public AdItemView Q;
    public TextView R;
    public Button S;
    public View T;
    public CountDownTimer U;
    public long V;
    public AdItemBean W;
    public long X;

    public class a extends CountDownTimer {
        public a(long j, long j2) {
            super(j, j2);
        }

        @Override
        public void onFinish() {
            MarketingSplashActivity.this.K();
        }

        @Override
        public void onTick(long j) {
            MarketingSplashActivity.this.V = j;
            MarketingSplashActivity.this.R.setText(MarketingSplashActivity.this.getResources().getString(R.string.skip_time, Integer.valueOf((int) (j / 1000))));
        }
    }

    public final void N(boolean z) {
        if (z) {
            this.X = System.currentTimeMillis();
            a9.a(null, this.W.getId(), "vd_ad_open_show");
            return;
        }
        String str = "" + (System.currentTimeMillis() - this.X);
        Log.e("MarketingSplashActivity", "markPointShow " + str);
        a9.a(str, this.W.getId(), "vd_ad_open_duration");
    }

    public final void O(boolean z) {
        AdItemView adItemView = this.Q;
        if (adItemView != null) {
            adItemView.autoPauseOrResume(z);
        }
        if (z) {
            P();
            return;
        }
        CountDownTimer countDownTimer = this.U;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.U = null;
        }
    }

    public final void P() {
        long j = this.V;
        StringBuilder sb = new StringBuilder();
        sb.append("startCountDownTimer ");
        long j2 = j / 1000;
        sb.append(j2);
        Log.d("MarketingSplashActivity", sb.toString());
        this.R.setText(getResources().getString(R.string.skip_time, Long.valueOf(j2)));
        if (this.U == null) {
            this.U = new a(j, 1000L);
        }
        this.U.start();
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        AdItemBean adItemBean = this.W;
        if (adItemBean == null || adItemBean.getId() != i) {
            return;
        }
        F();
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.ad_layout || view.getId() == R.id.btn_guide) {
            RouterUtils.jumpFromAdViewResult(this, true, this.W);
            AdItemBean adItemBean = this.W;
            if (adItemBean != null) {
                a9.b(adItemBean.getJumpLink(), this.W.getId(), "vd_ad_open_cl");
                return;
            }
            return;
        }
        if (view.getId() == R.id.tv_skip) {
            F();
            AdItemBean adItemBean2 = this.W;
            if (adItemBean2 != null) {
                a9.b(adItemBean2.getJumpLink(), this.W.getId(), "vd_ad_open_close_cl");
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        supportRequestWindowFeature(1);
        e80.o(this, false);
        e80.k(this, false);
        getWindow().addFlags(67108864);
        setContentView(R.layout.marketing_splash_main_layout);
        this.T = findViewById(R.id.ad_layout);
        this.Q = (AdItemView) findViewById(R.id.splash_av_item);
        this.R = (TextView) findViewById(R.id.tv_skip);
        this.S = (Button) findViewById(R.id.btn_guide);
        this.T.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.onClick(view);
            }
        });
        this.R.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.onClick(view);
            }
        });
        this.S.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.onClick(view);
            }
        });
        AdItemBean adItemBeanA = c9.a();
        this.W = adItemBeanA;
        if (adItemBeanA == null) {
            F();
            return;
        }
        this.Q.showAd(adItemBeanA, true);
        this.V = this.W.getDuration() * 1000;
        P();
        if (this.W.isLocalAd) {
            mn5.i();
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        N(false);
    }

    @Override
    public void onResume() {
        super.onResume();
        N(true);
    }

    @Override
    public void onStart() {
        super.onStart();
        O(true);
    }

    @Override
    public void onStop() {
        super.onStop();
        O(false);
    }
}
