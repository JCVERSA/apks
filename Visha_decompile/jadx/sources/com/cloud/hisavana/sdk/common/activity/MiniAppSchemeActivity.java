package com.cloud.hisavana.sdk.common.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.hisavana.sdk.R;
import defpackage.ikd;

public class MiniAppSchemeActivity extends AppCompatActivity {
    public boolean N = false;

    public void a() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        finish();
    }

    @Override
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_mini_app_scheme);
        try {
            Window window = getWindow();
            if (window != null) {
                window.clearFlags(67108864);
                window.addFlags(Integer.MIN_VALUE);
                window.setStatusBarColor(0);
            }
        } catch (Throwable unused) {
        }
        this.N = false;
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.N || getIntent() == null) {
            return;
        }
        String stringExtra = getIntent().getStringExtra("deeplink");
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        try {
            try {
                Uri uri = Uri.parse(stringExtra);
                Intent intent = new Intent();
                intent.setData(uri);
                intent.setAction("android.intent.action.VIEW");
                intent.setFlags(268435456);
                startActivity(intent);
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a();
                    }
                }, 1000L);
            } catch (Exception unused) {
                ikd.b().e("MiniApp", "Failed to launch mini app from homescreen.");
            }
        } finally {
            this.N = true;
        }
    }
}
