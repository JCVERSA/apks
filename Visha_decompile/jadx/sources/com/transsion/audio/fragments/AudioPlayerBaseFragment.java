package com.transsion.audio.fragments;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.transsion.WindowInfoViewModel;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.videomodel.AudioAlbumViewModel;
import com.transsion.playercommon.videomodel.PlayListModel;

public class AudioPlayerBaseFragment extends BaseFragment {
    public PlayAudioData l = new PlayAudioData();
    public AudioItem m;
    public AudioAlbum n;
    public String o;
    public boolean p;
    public AudioAlbumViewModel q;
    public PlayListModel r;
    public WindowInfoViewModel s;

    private void initViewModel() {
        this.q = (AudioAlbumViewModel) getViewModelByActivity(AudioAlbumViewModel.class);
        this.r = (PlayListModel) getViewModelByActivity(PlayListModel.class);
        this.s = (WindowInfoViewModel) getViewModelByActivity(WindowInfoViewModel.class);
    }

    public void P() {
    }

    public int getLayoutId() {
        return 0;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.p = true;
        }
        initViewModel();
        P();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (bundle != null) {
            this.l = (PlayAudioData) bundle.getParcelable("video_play_fragment_bean");
        }
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            this.l = (PlayAudioData) arguments.getParcelable("video_play_fragment_bean");
            this.o = arguments.getString("action");
        }
        if (getLayoutId() <= 0) {
            return null;
        }
        return layoutInflater.inflate(getLayoutId(), viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AudioItem audioItemA0 = MusicPlayManager.S().a0();
        this.m = audioItemA0;
        this.n = null;
        if (!this.p || audioItemA0 == null) {
            this.m = PlayAudioData.convertToPlayAudioItem(this.l);
            MusicPlayManager.S().u1(this.m);
            String str = this.o;
            if (str != null) {
                this.l.sourceAction = str;
            }
            MusicPlayManager.S().N0(this.l);
            return;
        }
        if (this.mActivity == null || MusicPlayManager.S().r0()) {
            Log.w("AudioPlayerBaseFragment", "isAutoRecover,not need reset data");
        } else {
            Log.w("AudioPlayerBaseFragment", "isAutoRecover player is not Alive");
            this.mActivity.finish();
        }
    }
}
