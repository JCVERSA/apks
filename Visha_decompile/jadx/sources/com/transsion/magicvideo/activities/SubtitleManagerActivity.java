package com.transsion.magicvideo.activities;

import android.os.Bundle;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.fragments.SubtitleDownLoadFragment;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.utils.a;
import defpackage.a64;

public class SubtitleManagerActivity extends BaseActivity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_subtitle_manager);
        a64.j(this, R.id.fragment_content, SubtitleDownLoadFragment.a1(), true);
        a.a(this, 10);
    }
}
