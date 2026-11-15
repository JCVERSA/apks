package com.transsion.magicvideo.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.fragments.VideoPlayListFragment;
import com.transsion.playercommon.activities.BaseActivity;
import defpackage.a64;
import defpackage.af9;
import defpackage.f5;

public class FarvoritesActivity extends BaseActivity {
    public static void p0(Context context, VideoPlayList videoPlayList) {
        Intent intent = new Intent(context, (Class<?>) FarvoritesActivity.class);
        intent.putExtra("param", videoPlayList);
        f5.c(intent, context);
    }

    public void initFragment() {
        VideoPlayList videoPlayList = (VideoPlayList) getIntent().getParcelableExtra("param");
        if (videoPlayList == null) {
            return;
        }
        af9.g = true;
        Bundle bundle = new Bundle();
        bundle.putLong("bucket_fragment_buicket_id", videoPlayList.id);
        bundle.putString("bucket_fragment_buicket_name", videoPlayList.name);
        bundle.putInt("bucket_fragment_buicket_playlist_flag", videoPlayList.playlistFlag);
        VideoPlayListFragment videoPlayListFragment = (VideoPlayListFragment) new VideoPlayListFragment().setBaseActivity(this);
        videoPlayListFragment.setArguments(bundle, 30);
        a64.n(videoPlayListFragment, true, true);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_container);
        initFragment();
    }
}
