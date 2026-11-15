package com.transsion.magicvideo.fragments;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.gson.Gson;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.VideoTotalTrack;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.MainAdapter;
import com.transsion.magicvideo.data.VideoBucket;
import com.transsion.magicvideo.fragments.FoldersFragment;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.a64;
import defpackage.hb0;
import defpackage.jf;
import defpackage.k29;
import defpackage.mc7;
import defpackage.p06;
import defpackage.ps1;
import defpackage.r06;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.BooleanUtils;

public class FoldersFragment extends VideosBaseFragment {
    public MainAdapter Z;
    public CustomGridLayoutManager a0;
    public View b0;

    public class a extends CustomGridLayoutManager {
        public a(Context context, int i) {
            super(context, i);
        }

        @Override
        public boolean canScrollVertically() {
            if (FoldersFragment.this.r.size() == 0) {
                return false;
            }
            return super.canScrollVertically();
        }
    }

    private void J1() {
        this.Z.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.M1(baseQuickAdapter, view, i);
            }
        });
    }

    private void L1(View view) {
        View viewFindViewById = view.findViewById(R.id.tab_menu_layout);
        this.b0 = viewFindViewById;
        viewFindViewById.setVisibility(8);
    }

    public void M1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        MediaBucket mediaBucket = (MediaBucket) view.getTag();
        Bundle bundle = new Bundle();
        bundle.putBoolean("bucket_fragment_is_internet", mediaBucket.fromInternal);
        bundle.putLong("bucket_fragment_buicket_id", mediaBucket.bucketId);
        bundle.putString("bucket_fragment_buicket_path", mediaBucket.parentPath);
        bundle.putString("bucket_fragment_buicket_name", mediaBucket.getParentName());
        bundle.putString("bucket_fragment_buicket_virtual_match_name", mediaBucket.getVirtualFolderMatchName());
        bundle.putBoolean("bucket_fragment_buicket_isVirtual", mediaBucket.isVirtualFolder());
        U1(bundle);
        TrackData trackData = new TrackData();
        trackData.add(hb0.KEY_NAME_NUM, "" + mediaBucket.count);
        trackData.add("path", mediaBucket.parentPath);
        trackData.add("name", mediaBucket.parentName);
        boolean z = mediaBucket.isLabelFolder;
        String str = BooleanUtils.NO;
        trackData.add("flag_label", z ? BooleanUtils.YES : BooleanUtils.NO);
        trackData.add("flag_virtual_folder", mediaBucket.isVirtualFolder ? BooleanUtils.YES : BooleanUtils.NO);
        p06.p0(trackData, "vd_foldermg_cl", 932460000001L);
        Bundle bundle2 = new Bundle();
        bundle2.putString(hb0.KEY_NAME_NUM, "" + mediaBucket.count);
        bundle2.putString("path", "" + mediaBucket.parentPath);
        bundle2.putString("name", "" + mediaBucket.parentName);
        bundle2.putString("flag_label", mediaBucket.isLabelFolder ? BooleanUtils.YES : BooleanUtils.NO);
        if (mediaBucket.isVirtualFolder) {
            str = BooleanUtils.YES;
        }
        bundle2.putString("flag_virtual_folder", str);
        p06.r0(bundle2, "vd_foldermanager_cl");
    }

    public static List N1(BaseActivity baseActivity) {
        return tpb.j0().d0();
    }

    public void O1(List list) {
        this.r.clear();
        this.r.addAll(list);
        this.mbFragmentShowCompleted = true;
        updateUiForDataChanged();
        Log.d("FoldersFragment", "loadData:" + list.size() + ", " + this);
    }

    public static VideoTotalTrack P1(ArrayList arrayList) {
        return tpb.j0().H();
    }

    public static void Q1(VideoTotalTrack videoTotalTrack) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("videos_count", videoTotalTrack.getTotalCountStr());
        bundle.putString("videos_size", videoTotalTrack.getTotalSizeStr());
        trackData.add("v_num", videoTotalTrack.getTotalCountStr());
        trackData.add(PlayAudioData.TAG_SIZE, videoTotalTrack.getTotalSizeStr());
        p06.r0(bundle, "vd_foldermanager");
        p06.p0(trackData, "vd_folermg_ep", 932460000002L);
    }

    private void V1() {
        if (this.x == null || this.mActivity == null) {
            return;
        }
        int size = this.r.size();
        TextView textView = this.x;
        StringBuilder sb = new StringBuilder();
        sb.append(size > 1 ? this.mActivity.getResources().getString(R.string.folders) : this.mActivity.getResources().getString(R.string.folder_tab));
        sb.append("(");
        sb.append(jf.a(size));
        sb.append(")");
        textView.setText(sb.toString());
    }

    public void K1(View view) {
        this.M = (VideoMainRecyclerView) view.findViewById(R.id.rv_main_fragment);
        this.N = (RecyclerViewFastScroller) view.findViewById(R.id.rv_fast_scroller);
        this.a0 = new a(getContext(), 1);
        this.Z.r(1);
        this.a0.setSpanCount(1);
        this.M.setLayoutManager(this.a0);
    }

    public final Boolean R1(FoldersFragment foldersFragment) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("folder_amount", this.r.size());
        trackData.add("folder_amount", this.r.size());
        ArrayList<String> arrayList = new ArrayList<>();
        VideoBucket videoBucket = new VideoBucket();
        Gson gson = new Gson();
        for (MediaBucket mediaBucket : this.r) {
            videoBucket.setCnt(mediaBucket.getCount());
            videoBucket.setFolder_name(mediaBucket.getParentName());
            arrayList.add(gson.toJson(videoBucket));
        }
        bundle.putStringArrayList("single", arrayList);
        trackData.add("single", bundle);
        p06.q0(trackData, bundle, "vd_video_folder_in_show_p", 9324L);
        return Boolean.TRUE;
    }

    public final void S1() {
        mc7.K(this.r).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return FoldersFragment.P1((ArrayList) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                FoldersFragment.Q1((VideoTotalTrack) obj);
            }
        });
    }

    public void T1() {
        mc7.K(this).g(baseActivity().bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.R1((FoldersFragment) obj);
            }
        }).d0(k29.d()).M(vb.a()).Y();
    }

    public void U1(Bundle bundle) {
        VideosFragment videosFragment = (VideosFragment) new VideosFragment().setBaseActivity(baseActivity());
        videosFragment.setArguments(bundle, 3);
        videosFragment.setNeedBg(true);
        a64.n(videosFragment, true, true);
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
        super.loadData(z, z2);
        mc7.K(this.mActivity).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return FoldersFragment.N1((BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.O1((List) obj);
            }
        });
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            r06.c(screen_type, "vd_video_folder_in_show");
        }
    }

    @Override
    public void markPointVisiable(boolean z) {
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            S1();
            T1();
            r06.e(this.mScreenType, null, "vd_video_folder_in_show", 9324L);
        }
    }

    @Override
    public void onClick(View view) {
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.O = true;
        this.s = 8;
        this.r.clear();
        this.r.addAll(ps1.a());
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public int onLayoutId() {
        return R.layout.folders_fragment;
    }

    @Override
    public void onPause() {
        super.onPause();
        K0();
    }

    @Override
    public void onPlayItemChanged(MediaItem mediaItem) {
        MainAdapter mainAdapter = this.Z;
        if (mainAdapter != null) {
            mainAdapter.s(mediaItem);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (U0()) {
            return;
        }
        L0();
    }

    @Override
    public void onSelectInViewPage() {
        super.onSelectInViewPage();
    }

    @Override
    public void onUnSelectInViewPage() {
        super.onUnSelectInViewPage();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        MainAdapter mainAdapter = new MainAdapter(this.mContext);
        this.Z = mainAdapter;
        mainAdapter.setNewData(this.r);
        this.l = view;
        K1(view);
        Q0(view, this.M);
        this.M.setAdapter(this.Z);
        this.M.addOnItemTouchListener(this.mSimpleOnItemTouchListener);
        this.M.setType("video");
        L1(view);
        this.x = (TextView) view.findViewById(R.id.tv_tab_info);
        V1();
        J1();
        super.onViewCreatedEnd(view, bundle);
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
        if (z) {
            loadData(false);
        }
    }

    @Override
    public void updateShowUI() {
        super.updateShowUI();
        MainAdapter mainAdapter = this.Z;
        if (mainAdapter != null) {
            mainAdapter.setNewData(this.r);
            this.Z.g();
        }
        ps1.b(this.r);
        V1();
        x1();
        Log.d("FoldersFragment", "markPointVisiable11" + this.mIsVisibleToUser);
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            T1();
            S1();
        }
    }

    @Override
    public void x1() {
        super.x1();
    }
}
