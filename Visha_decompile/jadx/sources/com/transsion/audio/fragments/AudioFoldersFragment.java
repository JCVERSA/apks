package com.transsion.audio.fragments;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import com.blankj.utilcode.util.ThreadUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.gson.Gson;
import com.transsion.athena.data.TrackData;
import com.transsion.audio.MediaBucketDiffCallBack;
import com.transsion.audio.R;
import com.transsion.audio.adapter.AudioBucketAdapter;
import com.transsion.audio.data.AudioBucket;
import com.transsion.audio.fragments.AudioFoldersFragment;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.a64;
import defpackage.ao;
import defpackage.b39;
import defpackage.hb0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.p06;
import defpackage.r06;
import defpackage.t74;
import defpackage.vb;
import defpackage.zdc;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class AudioFoldersFragment extends AudioBaseFragment {
    public AudioBucketAdapter V;
    public CustomGridLayoutManager W;
    public boolean X;
    public final Runnable Y = new Runnable() {
        @Override
        public void run() {
            if (((BaseFragment) AudioFoldersFragment.this).mActivity == null || ((BaseFragment) AudioFoldersFragment.this).mActivity.isDestroyed() || ((BaseFragment) AudioFoldersFragment.this).mActivity.isFinishing() || AudioFoldersFragment.this.V == null) {
                return;
            }
            AudioFoldersFragment.this.V.B(null);
        }
    };

    public class a extends CustomGridLayoutManager {
        public a(Context context, int i) {
            super(context, i);
        }

        @Override
        public boolean canScrollVertically() {
            return super.canScrollVertically();
        }
    }

    private void Q1(MediaBucket mediaBucket) {
        Bundle bundle = new Bundle();
        bundle.putLong("bucket_fragment_buicket_id", mediaBucket.bucketId);
        bundle.putString("bucket_fragment_buicket_name", mediaBucket.getParentName());
        bundle.putString("bucket_fragment_buicket_path", mediaBucket.getParentPath());
        bundle.putBoolean("audio_drop_animation_by_itself", true);
        AudiosFragment audiosFragment = (AudiosFragment) new AudiosFragment().setBaseActivity(baseActivity());
        audiosFragment.setNeedBg(true);
        int i = this.s;
        if (i == 27) {
            i = 22;
        }
        audiosFragment.setArguments(bundle, i);
        a64.n(audiosFragment, true, true);
    }

    private void S1() {
        this.V.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.V1(baseQuickAdapter, view, i);
            }
        });
        this.V.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.W1(baseQuickAdapter, view, i);
            }
        });
    }

    private void T1(View view) {
        if (this.X) {
            O0(view, this.H);
        }
        setRvOverScrollDecorListener(this.H);
    }

    public void V1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        MediaBucket mediaBucket = (MediaBucket) view.getTag();
        Q1(mediaBucket);
        c2(mediaBucket);
    }

    public void W1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        MediaBucket mediaBucket = (MediaBucket) baseQuickAdapter.getData().get(i);
        if (view.getId() == R.id.iv_more) {
            Q1(mediaBucket);
        }
    }

    public static List X1(Integer num) {
        return num.intValue() == 27 ? ao.U().z() : ao.U().v();
    }

    private void c2(MediaBucket mediaBucket) {
        TrackData trackData = new TrackData();
        Bundle bundle = new Bundle();
        if (this.s == 25) {
            trackData.add("album_name", mediaBucket.parentName);
            bundle.putString("album_name", mediaBucket.parentName);
            p06.q0(trackData, bundle, "vd_albumlist_album_cl", 9324L);
            return;
        }
        trackData.add("folder_name", mediaBucket.parentName);
        bundle.putString("folder_name", mediaBucket.parentName);
        trackData.add("audio_amount", "" + mediaBucket.count);
        trackData.add("audio_path", mediaBucket.parentPath);
        bundle.putString("audio_amount", "" + mediaBucket.count);
        bundle.putString("audio_path", "" + mediaBucket.parentPath);
        p06.q0(trackData, bundle, "vd_audio_foldermg_cl", 9324L);
    }

    public static AudioFoldersFragment f2(int i) {
        AudioFoldersFragment audioFoldersFragment = new AudioFoldersFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, i);
        audioFoldersFragment.setArguments(bundle);
        return audioFoldersFragment;
    }

    public final void R1() {
        int iF = zdc.f();
        if (iF != zdc.a || PlayListData.getInstance().isCurrentListEmpty()) {
            if (iF == zdc.b) {
                PlayAudioListData.getInstance().isCurrentListEmpty();
            }
        } else {
            AudioBucketAdapter audioBucketAdapter = this.V;
            if (audioBucketAdapter == null || audioBucketAdapter.s() == null) {
                return;
            }
            this.V.B(null);
        }
    }

    public void U1() {
        if (this.s == 25) {
            g2(true);
        } else {
            this.H.setLayoutManager(new CustomLinearLayoutManager(this.mContext));
        }
        this.H.addOnItemTouchListener(this.mSimpleOnItemTouchListener);
        this.H.setAdapter(this.V);
        if (this.H != null) {
            this.H.setType("audio");
        }
    }

    public final void Y1(List list) {
        this.V.setNewDiffData(DiffUtil.calculateDiff(new MediaBucketDiffCallBack(this.q, list)), list);
        this.V.k();
        R1();
        this.q.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.q.add(((MediaBucket) it.next()).clone());
        }
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("main_floder_count", this.q.size() + "");
        trackData.add(hb0.KEY_NAME_NUM, this.q.size());
        A1();
        int i = this.s;
        if (i == 27) {
            if (this.mIsVisibleToUser) {
                e2();
            }
        } else if (i == 25) {
            d2();
        }
    }

    public final Boolean a2(AudioFoldersFragment audioFoldersFragment) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("album_amount", this.q.size());
        trackData.add("album_amount", this.q.size());
        ArrayList<String> arrayList = new ArrayList<>();
        AudioBucket audioBucket = new AudioBucket();
        Gson gson = new Gson();
        for (MediaBucket mediaBucket : this.q) {
            audioBucket.setCnt(mediaBucket.count);
            audioBucket.setAlbum_name(mediaBucket.parentName);
            arrayList.add(gson.toJson(audioBucket));
        }
        bundle.putStringArrayList("single", arrayList);
        trackData.add("single", bundle);
        p06.q0(trackData, bundle, "vd_albumlist_show_p", 9324L);
        return Boolean.TRUE;
    }

    public final Boolean b2(AudioFoldersFragment audioFoldersFragment) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("folder_amount", this.q.size());
        trackData.add("folder_amount", this.q.size());
        ArrayList<String> arrayList = new ArrayList<>();
        AudioBucket audioBucket = new AudioBucket();
        Gson gson = new Gson();
        for (MediaBucket mediaBucket : this.q) {
            audioBucket.setCnt(mediaBucket.count);
            audioBucket.setNplaylist_name(mediaBucket.parentName);
            arrayList.add(gson.toJson(audioBucket));
        }
        bundle.putStringArrayList("single", arrayList);
        trackData.add("single", bundle);
        p06.q0(trackData, bundle, "vd_audio_folder_show_p", 9324L);
        return Boolean.TRUE;
    }

    public void d2() {
        mc7.K(this).g(baseActivity().bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.a2((AudioFoldersFragment) obj);
            }
        }).d0(k29.d()).M(vb.a()).Y();
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i == 1070) {
            ThreadUtils.o().postDelayed(this.Y, 500L);
        } else if (i == 1109) {
            refresh();
        }
    }

    public void e2() {
        mc7.K(this).g(baseActivity().bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.b2((AudioFoldersFragment) obj);
            }
        }).d0(k29.d()).M(vb.a()).Y();
    }

    @Override
    public void editMode(boolean z) {
    }

    public final void g2(boolean z) {
        if (this.s != 25 || this.H == null) {
            return;
        }
        int i = b39.b(this.mActivity) ? 2 : 3;
        if (!z) {
            CustomGridLayoutManager customGridLayoutManager = this.W;
            if (customGridLayoutManager != null) {
                customGridLayoutManager.setSpanCount(i);
                return;
            }
            return;
        }
        int iD = com.transsion.utils.a.d(this.mActivity, 17.0f);
        VideoMainRecyclerView videoMainRecyclerView = this.H;
        videoMainRecyclerView.setPadding(iD, videoMainRecyclerView.getPaddingTop(), iD, this.H.getPaddingBottom());
        a aVar = new a(getContext(), i);
        this.W = aVar;
        aVar.setSpanCount(i);
        this.H.setLayoutManager(this.W);
    }

    @Override
    public int getActivityMenuSwitchFlag() {
        return 1;
    }

    @Override
    public int getDefaultListFlag() {
        return 27;
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1070);
        this.mEvents.add(1109);
    }

    @Override
    public void initTitleBar(View view) {
        if (this.s == 26) {
            super.initTitleBar(view);
            this.mTitleBarLayout.setVisibility(0);
            this.mTitleTv.setText(R.string.artists);
        }
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        super.loadData(z, z2);
        if (this.mActivity == null) {
            return;
        }
        Log.e("FoldersFragment", "loadData");
        mc7.K(Integer.valueOf(this.s)).i(this.mIsVisibleToUser ? 0L : 800L, TimeUnit.MILLISECONDS).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return AudioFoldersFragment.X1((Integer) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.Y1((List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                Log.e("FoldersFragment", "<load folder data error>", (Throwable) obj);
            }
        });
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            int i = this.s;
            if (i == 25) {
                r06.c(screen_type, "vd_albumlist_show");
            } else {
                if (i != 27) {
                    return;
                }
                r06.c(screen_type, "vd_audio_folder_show");
            }
        }
    }

    @Override
    public void markPointVisiable(boolean z) {
        if (this.mAttach && this.s == 27 && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            e2();
            r06.e(this.mScreenType, null, "vd_audio_folder_show", 932460000059L);
        }
    }

    @Override
    public void onClick(View view) {
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.s = 27;
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.s = arguments.getInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG);
        }
        boolean z = true;
        this.J = true;
        this.V = new AudioBucketAdapter(this.mContext, this.s);
        int i = this.s;
        if (i != 27 && i != 25) {
            z = false;
        }
        this.X = z;
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
        this.V = null;
        MusicPlayManager.S().E1(this);
        ThreadUtils.o().removeCallbacksAndMessages(this.Y);
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        g2(false);
    }

    @Override
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (this.s == 25) {
            this.mIsVisibleToUser = !z;
            if (z) {
                return;
            }
            p06.f0(null, "vd_albumlist_show", 9324L);
        }
    }

    @Override
    public int onLayoutId() {
        return this.X ? R.layout.audio_folders_fragment_pull_damping : R.layout.audio_folders_fragment;
    }

    @Override
    public void onPause() {
        super.onPause();
        this.m = false;
    }

    @Override
    public void onPlayItemChanged(AudioItem audioItem) {
        if (this.s == 27) {
            this.V.C(audioItem, this.mIsVisibleToUser);
        } else {
            this.V.C(audioItem, this.mIsHide);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onSelectInViewPage() {
        super.onSelectInViewPage();
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
        U1();
        T1(view);
        S1();
        initTitleBar(view);
        if (this.s == 25) {
            p06.f0(null, "vd_albumlist_show", 9324L);
        }
        super.onViewCreatedEnd(view, bundle);
    }

    @Override
    public void refresh() {
        Log.d("FoldersFragment", "refresh");
        loadData(false);
    }

    @Override
    public void scrollToTop() {
        super.scrollToTop();
        VideoMainRecyclerView videoMainRecyclerView = this.H;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.scrollToPosition(0);
        }
    }

    @Override
    public void t(boolean z) {
        if (z) {
            return;
        }
        loadData(false);
    }
}
