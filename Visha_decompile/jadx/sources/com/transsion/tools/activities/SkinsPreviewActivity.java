package com.transsion.tools.activities;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatDelegate;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.tools.R;
import com.transsion.tools.fragments.SkinsPreviewFragment;
import com.transsion.utils.a;
import defpackage.a64;
import defpackage.ydc;

public class SkinsPreviewActivity extends BaseActivity {
    public Bundle N;
    public SkinsPreviewFragment O;

    public void initFragment() {
        SkinsPreviewFragment skinsPreviewFragmentW0 = SkinsPreviewFragment.u0(this.N).setBaseActivity(this);
        this.O = skinsPreviewFragmentW0;
        a64.i(this, skinsPreviewFragmentW0, false);
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        SkinsPreviewFragment skinsPreviewFragment = this.O;
        if (skinsPreviewFragment != null) {
            skinsPreviewFragment.onActivityResult(i, i2, intent);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent() != null) {
            this.N = getIntent().getExtras().getBundle("skin_list");
        }
        if (a.D(this)) {
            setRequestedOrientation(10);
        } else if (!ydc.g()) {
            setRequestedOrientation(1);
        }
        setContentView(R.layout.skin_preview_main);
        initFragment();
        setDefaultWindowBackground();
        getDelegate().setLocalNightMode(AppCompatDelegate.getDefaultNightMode());
    }

    @Override
    public void setThemeWindowBackground(Bitmap bitmap) {
        setDefaultWindowBackground();
    }
}
