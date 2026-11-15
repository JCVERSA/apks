package com.transsion.pushui.activity;

import android.R;
import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import com.transsion.push.PushConstants;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.ServiceUtils;
import com.transsion.push.utils.StatusBarUtils;
import defpackage.l27;
import defpackage.qab;
import defpackage.xj1;

public class TransparentActivity extends Activity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            try {
                xj1.b(getApplicationContext());
                Tracker.getInstance().init();
                StatusBarUtils.setStatusBarColor(this, R.color.transparent);
                StatusBarUtils.setStatusBarLightMode(getWindow(), true);
                StatusBarUtils.setNavigationBarColor(this, R.color.transparent);
                StatusBarUtils.setNavigationBarLightMode(this, true);
                if (getIntent().getBooleanExtra(PushConstants.EXTRA_PUSH_NOTI_CLICK, false)) {
                    l27.f(getApplicationContext(), getIntent());
                    return;
                }
                String stringExtra = getIntent().getStringExtra("message");
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                PushMessage pushMessage = (PushMessage) qab.a(stringExtra, PushMessage.class);
                Bundle bundle2 = new Bundle();
                bundle2.putString("message", qab.b(pushMessage));
                bundle2.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, "message");
                ServiceUtils.startTargetIntentService(xj1.a(), bundle2);
            } catch (Exception e) {
                PushLogUtils.LOG.i("Transparent page exception，e:" + e.getMessage());
            }
        } finally {
            finish();
        }
    }
}
