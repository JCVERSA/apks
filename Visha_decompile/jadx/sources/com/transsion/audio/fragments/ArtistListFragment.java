package com.transsion.audio.fragments;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.gson.Gson;
import com.transsion.athena.data.TrackData;
import com.transsion.audio.MediaBucketDiffCallBack;
import com.transsion.audio.R;
import com.transsion.audio.adapter.ArtistListAdapter;
import com.transsion.audio.data.AudioBucket;
import com.transsion.audio.fragments.ArtistListFragment;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.a64;
import defpackage.ao;
import defpackage.hb0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.p06;
import defpackage.r06;
import defpackage.t74;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class ArtistListFragment extends AudioBaseFragment {
    public ArtistListAdapter V;

    private void L1() {
        this.V.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.M1(baseQuickAdapter, view, i);
            }
        });
        this.V.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.N1(baseQuickAdapter, view, i);
            }
        });
    }

    public void M1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        MediaBucket mediaBucket = (MediaBucket) view.getTag();
        K1(mediaBucket);
        R1(mediaBucket);
    }

    public static List O1(BaseActivity baseActivity) {
        return ao.U().B();
    }

    public static ArtistListFragment T1(int i) {
        ArtistListFragment artistListFragment = new ArtistListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, i);
        artistListFragment.setArguments(bundle);
        return artistListFragment;
    }

    public final void K1(MediaBucket mediaBucket) {
        Bundle bundle = new Bundle();
        bundle.putLong("bucket_fragment_buicket_id", mediaBucket.bucketId);
        bundle.putString("bucket_fragment_buicket_name", mediaBucket.getParentName());
        bundle.putString("bucket_fragment_buicket_path", mediaBucket.getParentPath());
        bundle.putBoolean("audio_drop_animation_by_itself", true);
        AudiosFragment audiosFragment = (AudiosFragment) new AudiosFragment().setBaseActivity(baseActivity());
        audiosFragment.setArguments(bundle, this.s);
        audiosFragment.setNeedBg(true);
        a64.n(audiosFragment, true, true);
    }

    public final void N1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        MediaBucket mediaBucket = (MediaBucket) baseQuickAdapter.getData().get(i);
        if (view.getId() == R.id.iv_more) {
            K1(mediaBucket);
        }
    }

    public final void P1(List list) {
        if (MusicPlayManager.S().q0()) {
            this.V.setNewDiffData(DiffUtil.calculateDiff(new MediaBucketDiffCallBack(this.q, list)), list);
        } else {
            this.V.setNewData(list);
        }
        this.V.i(this);
        this.q.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.q.add((MediaBucket) ((MediaBucket) it.next()).clone());
        }
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("main_floder_count", this.q.size() + "");
        trackData.add(hb0.KEY_NAME_NUM, this.q.size());
        A1();
        S1();
    }

    public final Boolean Q1(ArtistListFragment artistListFragment) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("artist_amount", this.q.size());
        trackData.add("artist_amount", this.q.size());
        ArrayList<String> arrayList = new ArrayList<>();
        AudioBucket audioBucket = new AudioBucket();
        Gson gson = new Gson();
        for (MediaBucket mediaBucket : this.q) {
            audioBucket.setCnt(mediaBucket.count);
            audioBucket.setArtist_name(mediaBucket.parentName);
            arrayList.add(gson.toJson(audioBucket));
        }
        bundle.putStringArrayList("single", arrayList);
        trackData.add("single", bundle);
        p06.q0(trackData, bundle, "vd_artistlist_show_p", 9324L);
        return Boolean.TRUE;
    }

    public final void R1(MediaBucket mediaBucket) {
        TrackData trackData = new TrackData();
        trackData.add("artist_name", mediaBucket.parentName);
        Bundle bundle = new Bundle();
        bundle.putString("artist_name", mediaBucket.parentName);
        p06.q0(trackData, bundle, "vd_artistlist_artist_cl", 9324L);
    }

    public void S1() {
        mc7.K(this).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.Q1((ArtistListFragment) obj);
            }
        }).d0(k29.d()).M(vb.a()).Y();
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i == 1109) {
            postDelayLoadData();
        }
    }

    @Override
    public int getActivityMenuSwitchFlag() {
        return 1;
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1109);
    }

    @Override
    public void initTitleBar(View view) {
        if (this.s == 25) {
            super.initTitleBar(view);
            this.mTitleBarLayout.setVisibility(0);
            this.mTitleTv.setText(R.string.albums);
        }
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        super.loadData(z, z2);
        Log.e("FoldersFragment", "loadData");
        mc7.K(this.mActivity).i(this.mIsVisibleToUser ? 0L : 800L, TimeUnit.MILLISECONDS).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return ArtistListFragment.O1((BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.P1((List) obj);
            }
        });
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            r06.c(screen_type, "vd_artistlist_show");
        }
    }

    @Override
    public void onClick(View view) {
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        this.J = true;
        if (arguments != null) {
            this.s = arguments.getInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG);
        }
        ArtistListAdapter artistListAdapter = new ArtistListAdapter(this.mContext);
        this.V = artistListAdapter;
        artistListAdapter.w(this.s);
        MusicPlayManager.S().e1(this);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.o = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        MusicPlayManager.S().E1(this);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        this.mIsVisibleToUser = !z;
        if (z) {
            return;
        }
        r06.e(this.mScreenType, null, "vd_artistlist_show", 9324L);
    }

    @Override
    public int onLayoutId() {
        return R.layout.audio_folders_fragment_pull_damping;
    }

    @Override
    public void onPause() {
        super.onPause();
        this.m = false;
    }

    @Override
    public void onPlayItemChanged(AudioItem audioItem) {
        this.V.x(audioItem, this.mIsHide);
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onStop() {
        super.onStop();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.H = (VideoMainRecyclerView) view.findViewById(R.id.rv_main_fragment);
        this.I = (RecyclerViewFastScroller) view.findViewById(R.id.rv_fast_scroller);
        this.H.setLayoutManager(new CustomLinearLayoutManager(this.mContext));
        this.H.setAdapter(this.V);
        this.H.addOnItemTouchListener(this.mSimpleOnItemTouchListener);
        O0(view, this.H);
        setRvOverScrollDecorListener(this.H);
        L1();
        initTitleBar(view);
        r06.e(this.mScreenType, null, "vd_artistlist_show", 9324L);
        super.onViewCreatedEnd(view, bundle);
    }

    @Override
    public void refresh() {
        Log.d("FoldersFragment", "refresh");
        loadData(false);
    }

    @Override
    public void t(boolean z) {
        if (z) {
            return;
        }
        loadData(false);
    }
}
