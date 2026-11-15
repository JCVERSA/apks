package com.transsion.magicvideo.fragments;

import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.gson.Gson;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.effectengine.bounceeffect.IOverScrollDecor;
import com.transsion.effectengine.bounceeffect.IOverScrollListener;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.VideoPlayListBucketAdapter;
import com.transsion.magicvideo.data.VideoBucket;
import com.transsion.magicvideo.fragments.VideoPlayListFoldersFragment;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.utils.decoration.GridSpaceItemDecoration;
import com.transsion.playercommon.videomodel.VideoDataListModel;
import com.transsion.playercommon.videomodel.VideoPlayListModel;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.a64;
import defpackage.ed7;
import defpackage.ha1;
import defpackage.jwb;
import defpackage.k29;
import defpackage.mc7;
import defpackage.oc2;
import defpackage.p06;
import defpackage.r06;
import defpackage.rc7;
import defpackage.sq3;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.vmb;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class VideoPlayListFoldersFragment extends VideosBaseFragment {
    public VideoPlayListBucketAdapter Z;
    public CustomGridLayoutManager a0;
    public GridSpaceItemDecoration b0;
    public View c0;
    public View d0;
    public boolean e0;
    public boolean f0;
    public jwb g0;
    public boolean h0 = false;
    public final jwb.d i0 = new b();

    public class a extends GridSpaceItemDecoration {
        public a(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            if (!VideoPlayListFoldersFragment.this.e0) {
                if (273 == recyclerView.getAdapter().getItemViewType(childAdapterPosition)) {
                    return;
                } else {
                    childAdapterPosition++;
                }
            }
            a(rect, childAdapterPosition);
        }
    }

    public class b implements jwb.d {
        public b() {
        }

        @Override
        public void b(VideoPlayList videoPlayList) {
            VideoPlayListFoldersFragment.this.O1(videoPlayList);
            p06.f0(null, "vd_add_playlist_s", 9324L);
        }
    }

    private void P1() {
        if (this.g0 == null) {
            jwb jwbVar = new jwb(this.mContext);
            this.g0 = jwbVar;
            jwbVar.L(this.i0);
        }
        this.g0.M();
        this.h0 = true;
        p06.f0(null, "vd_create_a_play_list_Icon", 932460000079L);
    }

    private void R1() {
        this.Z.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.S1(baseQuickAdapter, view, i);
            }
        });
        this.Z.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.T1(baseQuickAdapter, view, i);
            }
        });
    }

    public void S1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Log.d("VideoPlayListFoldersFragment", "setOnItemClickListener position:" + i + StringUtils.COMMA + baseQuickAdapter.getItemViewType(i) + StringUtils.COMMA + 273 + StringUtils.COMMA + BaseQuickAdapter.FOOTER_VIEW + StringUtils.COMMA + BaseQuickAdapter.EMPTY_VIEW);
        VideoPlayList videoPlayList = (VideoPlayList) baseQuickAdapter.getData().get(i);
        g2(videoPlayList);
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("nplaylist_name", videoPlayList.name);
        trackData.add("nplaylist_name", videoPlayList.name);
        p06.q0(trackData, bundle, "vd_nplaylist_cl", 9324L);
    }

    public void T1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        VideoPlayList videoPlayList = (VideoPlayList) baseQuickAdapter.getData().get(i);
        if (view.getId() == R.id.iv_more) {
            g2(videoPlayList);
        }
    }

    public static List U1(Integer num) {
        List listU = tpb.j0().u(true);
        vmb.a("VideoPlayListFoldersFragment", "playListFolderSet: " + listU);
        return listU;
    }

    public static void W1(Throwable th) {
        Log.w("VideoPlayListFoldersFragment", "loadData " + th);
    }

    public void Y1(List list) {
        Log.d("VideoPlayListFoldersFragment", "playLists:" + list.size());
        postDelayLoadData();
    }

    public void Z1(Boolean bool) {
        Log.d("VideoPlayListFoldersFragment", "getIsMediaItemChange");
        postDelayLoadData();
    }

    private void d2() {
        if (this.d0 == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.main_empty_view, (ViewGroup) this.M, false);
            this.d0 = viewInflate;
            this.Z.setEmptyView(viewInflate);
        }
    }

    private void f2() {
        View view;
        if (this.r.size() != 0 || (view = this.d0) == null) {
            return;
        }
        ((TextView) view.findViewById(R.id.text_no_videos)).setText(R.string.no_playlist);
    }

    public final void O1(VideoPlayList videoPlayList) {
        VideoPlayListOperateFragment videoPlayListOperateFragment = (VideoPlayListOperateFragment) new VideoPlayListOperateFragment().e2(true, true).setBaseActivity(this.mActivity);
        Bundle bundle = new Bundle();
        ((VideoDataListModel) getViewModelByActivity(VideoDataListModel.class)).o(new ArrayList());
        bundle.putInt("fragment_playlist_id", videoPlayList.id);
        bundle.putString("fragment_playlist_name", videoPlayList.name);
        videoPlayListOperateFragment.setArguments(bundle);
        a64.n(videoPlayListOperateFragment, true, true);
    }

    @Override
    public void P0() {
        super.P0();
        View view = this.q;
        if (view != null) {
            ((TextView) view.findViewById(R.id.text_no_videos)).setText(R.string.no_playlist);
        }
    }

    public final String Q1(VideoPlayList videoPlayList) {
        int i = videoPlayList.mCategory;
        if (i != 1) {
            return i != 2 ? videoPlayList.name : this.mContext.getString(R.string.talkback_add_to_favorites);
        }
        return this.mContext.getString(R.string.recent_add);
    }

    public final void V1(List list) {
        this.r.clear();
        this.r.addAll(list);
        this.mbFragmentShowCompleted = true;
        updateUiForDataChanged();
        Log.w("VideoPlayListFoldersFragment", "loadData " + this.r.size());
    }

    public final void X1(rc7 rc7Var) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("nplaylist_amount", this.r.size());
        trackData.add("nplaylist_amount", this.r.size());
        ArrayList<String> arrayList = new ArrayList<>();
        VideoBucket videoBucket = new VideoBucket();
        Gson gson = new Gson();
        for (VideoPlayList videoPlayList : this.r) {
            videoBucket.setCnt(videoPlayList.count);
            videoBucket.setNplaylist_name(videoPlayList.name);
            arrayList.add(gson.toJson(videoBucket));
        }
        bundle.putStringArrayList("single", arrayList);
        trackData.add("single", bundle);
        p06.q0(trackData, bundle, "vd_playlist_show_p", 9324L);
        rc7Var.onNext(1);
        rc7Var.onComplete();
    }

    public final void a2(List list) {
        if (this.r.size() >= 2) {
            Object obj = this.r.get(1);
            if (!(obj instanceof VideoPlayList)) {
                postDelayLoadData();
                return;
            }
            ((VideoPlayList) obj).count = list.size();
            this.Z.notifyItemChanged(this.Z.getHeaderLayoutCount() + 1);
        }
    }

    public final void b2(View view) {
        P1();
    }

    public void c2() {
        mc7.h(new ed7() {
            @Override
            public final void subscribe(rc7 rc7Var) {
                this.a.X1(rc7Var);
            }
        }).g(bindFragmentToLifecycle()).d0(k29.d()).M(vb.a()).Y();
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i != 1053) {
            return;
        }
        postDelayLoadData();
    }

    public void e2() {
        if (this.e0) {
            return;
        }
        if (this.c0 == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.add_playlist_header, (ViewGroup) this.M, false);
            this.c0 = viewInflate;
            viewInflate.findViewById(R.id.ll_add_new_playList).setOnClickListener(new ha1(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.b2(view);
                }
            }));
        }
        Log.d("VideoPlayListFoldersFragment", "setHeaderView " + this.c0);
        this.Z.setHeaderView(this.c0);
        if (this.f0) {
            h2();
        }
    }

    @Override
    public void editMode(boolean z) {
    }

    public void g2(VideoPlayList videoPlayList) {
        if (videoPlayList == null) {
            Log.e("VideoPlayListFoldersFragment", "startShowPlaylist failed");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("bucket_fragment_buicket_id", videoPlayList.id);
        bundle.putString("bucket_fragment_buicket_name", Q1(videoPlayList));
        bundle.putInt("bucket_fragment_buicket_playlist_flag", videoPlayList.playlistFlag);
        VideoPlayListFragment videoPlayListFragment = (VideoPlayListFragment) new VideoPlayListFragment().setBaseActivity(baseActivity());
        videoPlayListFragment.setNeedBg(true);
        videoPlayListFragment.setArguments(bundle, 30);
        a64.n(videoPlayListFragment, true, true);
    }

    public void h2() {
        View view = this.c0;
        if (view != null) {
            View viewFindViewById = view.findViewById(R.id.ll_add_new_playList);
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
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1053);
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        super.loadData(z, z2);
        mc7.K(0).g(bindFragmentToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoPlayListFoldersFragment.U1((Integer) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.V1((List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                VideoPlayListFoldersFragment.W1((Throwable) obj);
            }
        });
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            r06.c(screen_type, "vd_playlist_show");
        }
    }

    @Override
    public void markPointVisiable(boolean z) {
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            c2();
            r06.e(this.mScreenType, null, "vd_playlist_show", 9324L);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        jwb jwbVar;
        super.onConfigurationChanged(configuration);
        if (this.f0) {
            h2();
            if (!this.h0 || (jwbVar = this.g0) == null) {
                return;
            }
            jwbVar.t();
            this.h0 = false;
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.O = true;
        VideoPlayListBucketAdapter videoPlayListBucketAdapter = new VideoPlayListBucketAdapter(this.mContext);
        this.Z = videoPlayListBucketAdapter;
        videoPlayListBucketAdapter.setHeaderAndEmpty(true);
        VideoPlayListModel videoPlayListModel = (VideoPlayListModel) getViewModelByActivity(VideoPlayListModel.class);
        videoPlayListModel.g().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.Y1((List) obj);
            }
        });
        videoPlayListModel.f().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.Z1((Boolean) obj);
            }
        });
        videoPlayListModel.e().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.a2((List) obj);
            }
        });
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.l = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.c0 = null;
        this.d0 = null;
    }

    @Override
    public int onLayoutId() {
        return R.layout.playlist_folders_fragment;
    }

    @Override
    public void onPause() {
        super.onPause();
        VideoPlayManager.X().u2(this);
        sq3.a().c(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        if (U0()) {
            return;
        }
        postDelayLoadData();
        VideoPlayManager.X().C1(this);
        sq3.a().b(this);
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
    public void onUnSelectInViewPage() {
        super.onUnSelectInViewPage();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.M = (VideoMainRecyclerView) view.findViewById(R.id.rv_main_fragment);
        this.N = (RecyclerViewFastScroller) view.findViewById(R.id.rv_fast_scroller);
        this.f0 = com.transsion.utils.a.A();
        this.a0 = new CustomGridLayoutManager(getContext(), 2);
        this.b0 = new a(2, getResources().getDimensionPixelOffset(R.dimen.video_operate_views_padding));
        this.a0.setSpanCount(1);
        this.M.setLayoutManager(this.a0);
        this.M.setAdapter(this.Z);
        this.M.addOnItemTouchListener(this.mSimpleOnItemTouchListener);
        this.M.setType("video");
        e2();
        d2();
        R1();
        IOverScrollDecor upOverScroll = OverScrollDecorHelper.setUpOverScroll(this.M, 0, true);
        this.mOverScrollDecor = upOverScroll;
        IOverScrollListener iOverScrollListener = this.mOverScrollListener;
        if (iOverScrollListener != null && upOverScroll != null) {
            upOverScroll.setOverScrollListener(iOverScrollListener);
        }
        PlayBaseFragment.b bVar = this.mBounceListener;
        if (bVar != null) {
            bVar.a(this.mOverScrollDecor);
        }
        super.onViewCreatedEnd(view, bundle);
    }

    @Override
    public void refresh() {
        Log.d("VideoPlayListFoldersFragment", "refresh");
    }

    @Override
    public void scrollToTop() {
        super.scrollToTop();
        VideoMainRecyclerView videoMainRecyclerView = this.M;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.scrollToPosition(0);
        }
    }

    @Override
    public void t(boolean z) {
        super.t(z);
        if (z) {
            postDelayLoadData();
        }
    }

    @Override
    public void updateShowUI() {
        super.updateShowUI();
        this.Z.setNewData(this.r);
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            c2();
        }
        f2();
    }
}
