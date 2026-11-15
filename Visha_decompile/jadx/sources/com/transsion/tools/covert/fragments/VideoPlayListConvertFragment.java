package com.transsion.tools.covert.fragments;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import com.blankj.utilcode.util.LogUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.magicvideo.activities.FarvoritesActivity;
import com.transsion.tools.covert.fragments.VideoPlayListConvertFragment;
import defpackage.k29;
import defpackage.mc7;
import defpackage.p06;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

public class VideoPlayListConvertFragment extends VideosSelectFragment {
    public VideoPlayList e0;

    public void Y1(ArrayList arrayList) {
        this.r.clear();
        this.r.addAll(arrayList);
        updateUiForDataChanged();
    }

    @Override
    public void P0() {
        super.P0();
    }

    @Override
    public void U1() {
        super.U1();
        if (this.e0.playlistFlag == 13) {
            this.mSortIv.setVisibility(8);
        }
    }

    public final ArrayList X1(VideoPlayListConvertFragment videoPlayListConvertFragment) {
        ArrayList arrayList;
        if (this.I) {
            arrayList = new ArrayList(tpb.j0().S());
        } else {
            arrayList = this.e0.playlistFlag == 13 ? new ArrayList(tpb.j0().W()) : new ArrayList(tpb.j0().E(this.a0.bucketId));
        }
        F0(arrayList);
        return arrayList;
    }

    @Override
    public void editMode(boolean z) {
    }

    @Override
    public int getActivityMenuSwitchFlag() {
        return 1;
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        Log.d("VideoPlayListConvertFragment", "VideoPlayListConvertFragment loadData " + this.I);
        mc7.K(this).i(this.mIsVisibleToUser ? 0L : 800L, TimeUnit.MILLISECONDS).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.X1((VideoPlayListConvertFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.Y1((ArrayList) obj);
            }
        });
    }

    @Override
    public void onClick(View view) {
        if (ingoreClickEvent()) {
            return;
        }
        this.mFirstClickTime = System.currentTimeMillis();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.s = 37;
        Bundle arguments = getArguments();
        this.e0 = new VideoPlayList();
        if (arguments != null) {
            this.a0.setParentName(this.B);
            this.e0.playlistFlag = arguments.getInt("bucket_fragment_buicket_playlist_flag");
        }
        VideoPlayList videoPlayList = this.e0;
        videoPlayList.name = this.B;
        videoPlayList.id = (int) this.a0.bucketId;
        boolean z = videoPlayList.playlistFlag == 2;
        this.I = z;
        if (!z || getActivity() == null || (getActivity() instanceof FarvoritesActivity)) {
            return;
        }
        MMKV.p().y("playListFarvoriteRedSpot", false);
    }

    @Override
    public void onFragmentAnimationEnd(Animation animation) {
        LogUtils.j("VideoPlayListConvertFragment", "onAnimationEnd :" + this + this.mDataUpdated);
        this.mbFragmentShowCompleted = true;
        if (this.mDataUpdated) {
            updateShowUI();
            this.mDataUpdated = false;
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.I) {
            p06.d0("vd_nplaylist_favorite_show");
        }
    }
}
