package com.cloud.hisavana.sdk.common.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.b4;
import com.cloud.tmc.kernel.constants.TmcConstants;
import org.mvel2.ast.ASTNode;

public class MiniAppSchemeActivity extends AppCompatActivity {

    private boolean f21198a = false;

    public void P() {
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
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_mini_app_scheme);
        try {
            Window window = getWindow();
            if (window != null) {
                window.clearFlags(67108864);
                window.addFlags(Integer.MIN_VALUE);
                window.setStatusBarColor(0);
            }
        } catch (Throwable unused) {
        }
        this.f21198a = false;
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (this.f21198a || getIntent() == null) {
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
                intent.setFlags(ASTNode.DEOP);
                startActivity(intent);
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.f21350a.P();
                    }
                }, 1000L);
            } catch (Exception unused) {
                b4.b().e(TmcConstants.DIR_BYTEAPP, "Failed to launch mini app from homescreen.");
            }
        } finally {
            this.f21198a = true;
        }
    }
}
