package com.transsion.magicmovie.activity;

import android.annotation.SuppressLint;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import defpackage.bx9;

@SuppressLint({"CustomSplashScreen"})
public class TRSplashActivity extends BaseAdActivity {
    public BitmapDrawable Q;

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.Q = null;
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        bx9.x();
        E();
    }
}
