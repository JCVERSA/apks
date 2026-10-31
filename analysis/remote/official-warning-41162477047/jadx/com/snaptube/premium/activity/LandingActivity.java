package com.snaptube.premium.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.util.ProductionEnv;
import javax.inject.Inject;
import o.fc1;
import o.ke3;
import o.kf9;
import o.uj;

public class LandingActivity extends BaseSwipeBackActivity {

    @Inject
    ke3 h;

    public interface a {
        void I(LandingActivity landingActivity);
    }

    private boolean F0(Intent intent) {
        try {
            ReportPropertyBuilder.e().setEventName("behavior").setAction("deep_link_start").setProperty("url", intent.getData() != null ? intent.getData().toString() : intent.toString()).setProperty("extra_info", "LandingActivity").reportEvent();
            Intent intent2 = (Intent) intent.clone();
            intent2.putExtra("finish_on_back_pressed", true);
            Uri data = intent.getData();
            if (data != null && kf9.k(data.toString())) {
                intent2.setData(Uri.parse("https://snaptubeapp.com").buildUpon().encodedPath("/list/youtube/playlist").appendQueryParameter("url", data.toString()).build());
            }
            boolean zL0 = this.h.l0(this, null, intent2);
            if (zL0) {
                return zL0;
            }
            return this.h.l0(this, null, new Intent("snaptube.intent.action.SHOW_UPGRADE_DIALOG"));
        } catch (RuntimeException e) {
            ProductionEnv.throwExceptForDebugging(e);
            return false;
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            StringBuilder sb = new StringBuilder(uj.a(this));
            String action = getIntent().getAction();
            if (action != null) {
                sb.append(". action: ");
                sb.append(action);
            }
            Uri data = getIntent().getData();
            if (data != null) {
                sb.append(". uri: ");
                sb.append(data);
            }
            FirebaseCrashlytics.getInstance().log(sb.toString());
        } catch (Throwable unused) {
        }
        ((a) fc1.a(this)).I(this);
        F0(getIntent());
        finish();
    }
}
