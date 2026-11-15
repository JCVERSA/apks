package com.transsion.tools.covert.fragments;

import android.os.Bundle;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.magicvideo.fragments.VideoPlayListFoldersFragment;
import defpackage.a64;

public class VideoPlayListFolderConvertFragment extends VideoPlayListFoldersFragment {
    @Override
    public void g2(VideoPlayList videoPlayList) {
        if (videoPlayList == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("bucket_fragment_buicket_id", videoPlayList.id);
        bundle.putString("bucket_fragment_buicket_name", videoPlayList.name);
        bundle.putInt("bucket_fragment_buicket_playlist_flag", videoPlayList.playlistFlag);
        VideoPlayListConvertFragment videoPlayListConvertFragment = (VideoPlayListConvertFragment) new VideoPlayListConvertFragment().setBaseActivity(baseActivity());
        videoPlayListConvertFragment.setNeedBg(true);
        videoPlayListConvertFragment.setArguments(bundle, 30);
        a64.n(videoPlayListConvertFragment, true, true);
    }

    @Override
    public void onCreate(Bundle bundle) {
        this.e0 = true;
        super.onCreate(bundle);
    }
}
