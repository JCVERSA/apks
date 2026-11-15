package com.transsion.playercommon.gallery;

import android.content.Intent;
import android.os.Bundle;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import defpackage.a64;

public class ImageFolderActivity extends BaseActivity {
    private void initFragment() {
        a64.m((ImageFragment) ImageFragment.U(40, getIntent().getLongExtra("bucket_id", -1L), getIntent() != null ? getIntent().getIntExtra("crop_type", 1) : 1).setBaseActivity(this), true);
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 69) {
            setResult(-1, intent);
            finish();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activtiy_image_folder);
        initFragment();
    }
}
