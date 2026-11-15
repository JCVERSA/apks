package com.transsion.audio.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.Fragment;
import com.transsion.audio.R;
import com.transsion.audio.fragments.AudiosFragment;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.utils.BaseConstant;
import defpackage.a64;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class AudioBucketListActivity extends BasePermissionActivity {
    public static void B0(Context context, String str, int i) {
        Intent intent = new Intent();
        intent.putExtra("bucket_fragment_buicket_name", str);
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, i);
        intent.setClass(context, AudioBucketListActivity.class);
        context.startActivity(intent);
    }

    public void initFragment() {
        Intent intent = getIntent();
        Log.i("AudioBucketListActivity", "initFragment: " + intent.getStringExtra("bucket_fragment_buicket_name") + StringUtils.COMMA + intent.getIntExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, 21));
        Bundle bundle = new Bundle();
        bundle.putLong("bucket_fragment_buicket_id", 0L);
        bundle.putString("bucket_fragment_buicket_name", intent.getStringExtra("bucket_fragment_buicket_name"));
        bundle.putString("bucket_fragment_buicket_path", null);
        bundle.putBoolean("audio_drop_animation_by_itself", true);
        AudiosFragment audiosFragment = (AudiosFragment) new AudiosFragment().setBaseActivity(this);
        audiosFragment.setArguments(bundle, intent.getIntExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, 21));
        a64.n(audiosFragment, true, true);
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_container);
        initFragment();
        resetNavigationBarColor(true);
    }

    @Override
    public void onEnterAnimationComplete() {
        super.onEnterAnimationComplete();
        for (Fragment fragment : getFragments()) {
            if (fragment instanceof BaseFragment) {
                BaseFragment.cast(fragment).onFragmentAnimationEnd(null);
            }
        }
    }

    @Override
    public void onScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onScreenTypeChange(screen_type);
    }
}
