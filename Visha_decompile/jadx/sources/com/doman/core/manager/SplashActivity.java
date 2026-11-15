package com.doman.core.manager;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.doman.core.R;

public class SplashActivity extends Activity {
    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.splash_activity);
        finish();
    }
}
