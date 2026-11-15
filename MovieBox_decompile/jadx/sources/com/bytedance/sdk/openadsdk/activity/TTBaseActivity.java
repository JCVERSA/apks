package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Build;
import com.bytedance.sdk.component.utils.sU;
import java.lang.reflect.Field;

public class TTBaseActivity extends Activity {
    protected boolean Jcg = false;

    @Override
    public void finish() {
        try {
            super.finish();
        } catch (Exception unused) {
        }
    }

    @Override
    protected void onPause() {
        if (Build.VERSION.SDK_INT < 33) {
            super.onPause();
            return;
        }
        try {
            try {
                super.onPause();
            } catch (Exception unused) {
            }
        } catch (IllegalArgumentException unused2) {
            Field declaredField = Activity.class.getDeclaredField("mCalled");
            declaredField.setAccessible(true);
            declaredField.set(this, Boolean.TRUE);
        }
    }

    @Override
    protected void onResume() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 > 28 || i10 < 24) {
            super.onResume();
            return;
        }
        try {
            super.onResume();
        } catch (IllegalArgumentException e10) {
            sU.Sj("TTBaseActivity", "super.onResume() run fail", e10);
            try {
                Field declaredField = Activity.class.getDeclaredField("mCalled");
                declaredField.setAccessible(true);
                declaredField.set(this, Boolean.TRUE);
            } catch (Exception e11) {
                sU.Sj("TTBaseActivity", "onResume set mCalled fail", e11);
            }
        }
    }

    public void sP(boolean z10) {
        this.Jcg = z10;
    }
}
