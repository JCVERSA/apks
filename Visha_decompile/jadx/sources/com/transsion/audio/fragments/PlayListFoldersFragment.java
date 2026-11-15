package com.transsion.audio.fragments;

import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.gson.Gson;
import com.transsion.athena.data.TrackData;
import com.transsion.audio.R;
import com.transsion.audio.adapter.PlayListBucketAdapter;
import com.transsion.audio.data.AudioBucket;
import com.transsion.audio.fragments.PlayListFoldersFragment;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.database.PlayList;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.videomodel.AudioDataListModel;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.a64;
import defpackage.ao;
import defpackage.ha1;
import defpackage.k29;
import defpackage.k78;
import defpackage.mc7;
import defpackage.oc2;
import defpackage.p06;
import defpackage.t74;
import defpackage.vb;
import defpackage.vmb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class PlayListFoldersFragment extends AudioBaseFragment {
    public PlayListBucketAdapter V;
    public View W;
    public View X;
    public PlayList Y;
    public PlayList Z;
    public PlayListModel a0;
    public boolean b0;
    public k78 c0;
    public boolean d0 = false;
    public final k78.d e0 = new b();

    public class a extends RecyclerView.OnScrollListener {
        public a() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 2 || i == 1) {
                Glide.with(((BaseFragment) PlayListFoldersFragment.this).mContext).pauseRequests();
            } else {
                Glide.with(((BaseFragment) PlayListFoldersFragment.this).mContext).resumeRequests();
            }
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
        }
    }

    public class b implements k78.d {
        public b() {
        }

        @Override
        public void b(PlayList playList) {
            PlayListFoldersFragment.this.U1(playList, "vd_create_a_play_list_Icon_s");
            p06.f0(null, "vd_create_a_play_list_Icon_s", 9324L);
        }
    }

    private void X1() {
        this.V.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.Y1(baseQuickAdapter, view, i);
            }
        });
        this.V.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.Z1(baseQuickAdapter, view, i);
            }
        });
    }

    public void Y1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        PlayList playList = (PlayList) baseQuickAdapter.getData().get(i);
        o2(playList);
        k2(playList);
    }

    public void Z1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        PlayList playList = (PlayList) baseQuickAdapter.getData().get(i);
        if (view.getId() == R.id.iv_more) {
            o2(playList);
        }
    }

    public static void a2(Throwable th) {
        Log.w("PlayListFoldersFragment", "loadData " + th);
    }

    public static List b2(BaseActivity baseActivity) {
        List listZ = ao.U().Z();
        vmb.a("PlayListFoldersFragment", "playListFolderSet: " + listZ);
        return listZ;
    }

    public void c2(List list) {
        this.q.clear();
        this.q.addAll(list);
        this.a0.u(list);
        this.mbFragmentShowCompleted = true;
        updateUiForDataChanged();
    }

    public void g2(Boolean bool) {
        Log.d("PlayListFoldersFragment", "getIsPlayListChange");
        postDelayLoadData();
    }

    public final void U1(PlayList playList, String str) {
        PlayListAddRemoveFragment playListAddRemoveFragment = (PlayListAddRemoveFragment) new PlayListAddRemoveFragment().h2(true, true).setBaseActivity(this.mActivity);
        Bundle bundle = new Bundle();
        ((AudioDataListModel) getViewModelByActivity(AudioDataListModel.class)).b(new ArrayList());
        bundle.putInt("fragment_playlist_id", playList.id);
        bundle.putString("fragment_playlist_name", playList.name);
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
        bundle.putString("action", str);
        playListAddRemoveFragment.setArguments(bundle);
        a64.n(playListAddRemoveFragment, true, true);
    }

    public final void V1() {
        if (this.c0 == null) {
            k78 k78Var = new k78(this.mContext);
            this.c0 = k78Var;
            k78Var.w0(this.e0);
        }
        this.c0.y0();
        this.d0 = true;
        p06.f0(null, "vd_create_a_play_list_Icon", 932460000079L);
    }

    public final String W1(PlayList playList) {
        int i = playList.mCategory;
        if (i != 1) {
            return i != 2 ? playList.name : this.mContext.getString(R.string.talkback_add_to_favorites);
        }
        return this.mContext.getString(R.string.recent_add);
    }

    public final Boolean d2(PlayListFoldersFragment playListFoldersFragment) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("nplaylist_amount", this.q.size());
        trackData.add("nplaylist_amount", this.q.size());
        ArrayList<String> arrayList = new ArrayList<>();
        AudioBucket audioBucket = new AudioBucket();
        Gson gson = new Gson();
        for (PlayList playList : this.q) {
            audioBucket.setCnt(playList.count);
            audioBucket.setNplaylist_name(playList.name);
            arrayList.add(gson.toJson(audioBucket));
        }
        bundle.putStringArrayList("single", arrayList);
        trackData.add("single", bundle);
        p06.q0(trackData, bundle, "vd_play_list_page_p", 9324L);
        return Boolean.TRUE;
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i != 1101) {
            if (i != 1109) {
                return;
            }
            loadData(false);
        } else if (((Integer) objArr[0]).intValue() == 18) {
            a64.h(this.mActivity);
            q2();
        }
    }

    public final void e2(List list) {
        postDelayLoadData();
    }

    public final void f2(Boolean bool) {
        Log.d("PlayListFoldersFragment", "getIsAudioItemChange");
        postDelayLoadData();
    }

    @Override
    public int getActivityMenuSwitchFlag() {
        return 1;
    }

    @Override
    public int getDefaultListFlag() {
        return 28;
    }

    public final void h2(List list) {
        postDelayLoadData();
    }

    public final void i2(List list) {
        postDelayLoadData();
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1055);
        this.mEvents.add(1101);
        this.mEvents.add(1109);
    }

    public final void j2(View view) {
        V1();
    }

    public final void k2(PlayList playList) {
        TrackData trackData = new TrackData();
        trackData.add("nsonglist_name", playList.name);
        Bundle bundle = new Bundle();
        bundle.putString("nsonglist_name", playList.name);
        p06.q0(trackData, bundle, "vd_nsonglist_cl", 9324L);
    }

    public void l2() {
        mc7.K(this).g(baseActivity().bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.d2((PlayListFoldersFragment) obj);
            }
        }).d0(k29.d()).M(vb.a()).Y();
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        super.loadData(z, z2);
        mc7.K(this.mActivity).i((this.mIsVisibleToUser && this.mIsParentVisibleToUser) ? 0L : 800L, TimeUnit.MILLISECONDS).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return PlayListFoldersFragment.b2((BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.c2((List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                PlayListFoldersFragment.a2((Throwable) obj);
            }
        });
    }

    public final void m2() {
        if (this.X == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.list_empty_view, (ViewGroup) this.H, false);
            this.X = viewInflate;
            this.V.setEmptyView(viewInflate);
        }
    }

    @Override
    public void markPointVisiable(boolean z) {
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            l2();
            p06.f0(null, "vd_play_list_page", 932460000078L);
        }
    }

    public void n2() {
        if (this.W == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.playlist_header_view, (ViewGroup) this.H, false);
            this.W = viewInflate;
            viewInflate.findViewById(R.id.ll_add_new_playList).setOnClickListener(new ha1(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.j2(view);
                }
            }));
        }
        this.V.setHeaderView(this.W);
        if (this.b0) {
            r2();
        }
    }

    public final void o2(PlayList playList) {
        p2(playList, true);
    }

    @Override
    public void onClick(View view) {
        k78 k78Var = new k78(this.mContext);
        k78Var.w0(this.e0);
        k78Var.y0();
        p06.f0(null, "vd_creating_text_for_a_play_list", 932460000080L);
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        k78 k78Var;
        super.onConfigurationChanged(configuration);
        if (this.b0) {
            r2();
            if (!this.d0 || (k78Var = this.c0) == null) {
                return;
            }
            k78Var.H();
            this.d0 = false;
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.s = 28;
        PlayListBucketAdapter playListBucketAdapter = new PlayListBucketAdapter(getApplicationContext());
        this.V = playListBucketAdapter;
        playListBucketAdapter.setHeaderAndEmpty(true);
        PlayList playList = new PlayList(getResources().getString(R.string.recently_played));
        this.Y = playList;
        playList.listFlag = 32;
        PlayList playList2 = new PlayList(getResources().getString(R.string.talkback_add_to_favorites));
        this.Z = playList2;
        playList2.listFlag = 33;
        this.J = true;
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
        this.W = null;
        this.X = null;
    }

    @Override
    public int onLayoutId() {
        return R.layout.audio_folders_fragment;
    }

    @Override
    public void onPause() {
        super.onPause();
        this.m = false;
    }

    @Override
    public void onResume() {
        super.onResume();
        if (R0()) {
            return;
        }
        postDelayLoadData();
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
        CustomLinearLayoutManager customLinearLayoutManager = new CustomLinearLayoutManager(this.mContext);
        this.b0 = com.transsion.utils.a.A();
        this.H.setLayoutManager(customLinearLayoutManager);
        this.H.setAdapter(this.V);
        this.H.addOnItemTouchListener(this.mSimpleOnItemTouchListener);
        this.H.addOnScrollListener(new a());
        n2();
        m2();
        X1();
        setRvOverScrollDecorListener(this.H);
        PlayListModel playListModel = (PlayListModel) getViewModelByActivity(PlayListModel.class);
        this.a0 = playListModel;
        playListModel.m().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.e2((List) obj);
            }
        });
        this.a0.f().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.f2((Boolean) obj);
            }
        });
        this.a0.g().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.g2((Boolean) obj);
            }
        });
        this.a0.l().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.h2((List) obj);
            }
        });
        this.a0.i().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.i2((List) obj);
            }
        });
        super.onViewCreatedEnd(view, bundle);
    }

    public final void p2(PlayList playList, boolean z) {
        if (playList == null) {
            Log.e("PlayListFoldersFragment", "startShowPlaylist failed");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("bucket_fragment_buicket_id", playList.id);
        bundle.putString("bucket_fragment_buicket_name", W1(playList));
        PlayListFragment playListFragment = (PlayListFragment) new PlayListFragment().setBaseActivity(baseActivity());
        int i = playList.listFlag;
        if (i == 0) {
            i = 30;
        }
        playListFragment.setNeedBg(true);
        playListFragment.setArguments(bundle, i);
        a64.n(playListFragment, true, z);
    }

    public final void q2() {
        p2(this.Z, false);
        p06.f0(null, "audio_favorite_list_entry_cl", 932460000128L);
    }

    public void r2() {
        View viewFindViewById;
        View view = this.W;
        if (view == null || (viewFindViewById = view.findViewById(R.id.ll_add_new_playList)) == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams();
        int i = getResources().getConfiguration().orientation;
        int iA = oc2.a(getContext(), 16.0f);
        int iA2 = oc2.a(getContext(), 16.0f);
        if (i == 2) {
            int iA3 = oc2.a(getContext(), 102.0f);
            iA2 = oc2.a(getContext(), 102.0f);
            iA = iA3;
        }
        marginLayoutParams.setMarginStart(iA);
        marginLayoutParams.setMarginEnd(iA2);
        viewFindViewById.setLayoutParams(marginLayoutParams);
    }

    @Override
    public void refresh() {
        Log.d("PlayListFoldersFragment", "refresh");
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
    public void updateShowUI() {
        super.updateShowUI();
        this.V.setNewData(this.q);
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            l2();
        }
    }
}
