package com.transsion.vishaads.activity;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.vishaads.R;
import com.transsion.vishaads.views.AdItemView;
import defpackage.e80;
import defpackage.t81;

public class SplashAdActivity extends AppCompatActivity implements View.OnClickListener {
    public Runnable N = new Runnable() {
        @Override
        public void run() {
            SplashAdActivity.this.D();
        }
    };

    public void D() {
    }

    @Override
    public void finish() {
        super.finish();
    }

    @Override
    public void onClick(View view) {
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        t81.a(this);
        supportRequestWindowFeature(1);
        e80.o(this, false);
        e80.k(this, false);
        getWindow().addFlags(67108864);
        setContentView(R.layout.layout_ad_content);
        AdItemView adItemView = (AdItemView) findViewById(R.id.av_item);
        if (adItemView != null) {
            AdItemBean adItemBean = new AdItemBean();
            adItemBean.setAdSourceType(2);
            adItemView.showAd(adItemBean, true);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onResume() {
        super.onResume();
    }
}
