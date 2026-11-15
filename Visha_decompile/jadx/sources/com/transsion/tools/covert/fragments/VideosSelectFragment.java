package com.transsion.tools.covert.fragments;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.magicvideo.adapter.BucketDateAdapter;
import com.transsion.magicvideo.fragments.VideosBaseFragment;
import com.transsion.playercommon.convert.ConvertingTaskManager;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.tools.R;
import com.transsion.tools.covert.fragments.VideosSelectFragment;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.h27;
import defpackage.k16;
import defpackage.k29;
import defpackage.lpb;
import defpackage.ls1;
import defpackage.mc7;
import defpackage.p06;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class VideosSelectFragment extends VideosBaseFragment implements h27.b, ConvertingTaskManager.b {
    public VideoMainRecyclerView Z;
    public MediaBucket a0;
    public CustomGridLayoutManager c0;
    public int b0 = 1;
    public RecyclerView.OnScrollListener d0 = new a();

    public class a extends RecyclerView.OnScrollListener {
        public a() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 2 || i == 1) {
                Glide.with(VideosSelectFragment.this).pauseRequests();
            } else {
                Glide.with(VideosSelectFragment.this).resumeRequests();
            }
        }
    }

    public class b extends CustomGridLayoutManager {
        public b(Context context, int i) {
            super(context, i);
        }

        @Override
        public boolean canScrollVertically() {
            if (VideosSelectFragment.this.r.size() == 0) {
                return false;
            }
            return super.canScrollVertically();
        }
    }

    public void M1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        this.mFirstClickTime = System.currentTimeMillis();
        if (i >= baseQuickAdapter.getData().size() || ((MediaItem) baseQuickAdapter.getData().get(i)).isTimeItem) {
            return;
        }
        u1(baseQuickAdapter, view, i, false);
    }

    public void O1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        this.mFirstClickTime = System.currentTimeMillis();
        if (i < baseQuickAdapter.getData().size()) {
            u1(baseQuickAdapter, view, i, true);
        }
    }

    public void P1(View view) {
        this.mActivity.onBackPressed();
    }

    public void R1(ArrayList arrayList) {
        this.r.clear();
        this.r.addAll(arrayList);
        this.mDataUpdated = true;
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof SelectVideoMainFragment) {
            if (((SelectVideoMainFragment) parentFragment).B0()) {
                U1();
            }
        } else if (this.mbFragmentShowCompleted) {
            U1();
        }
    }

    public static VideosSelectFragment S1(int i) {
        VideosSelectFragment videosSelectFragment = new VideosSelectFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, i);
        videosSelectFragment.setArguments(bundle);
        return videosSelectFragment;
    }

    private ArrayList T1(boolean z) {
        ArrayList arrayList = new ArrayList();
        if (this.s == 9) {
            arrayList.addAll(tpb.j0().U(z ? 30 : Integer.MAX_VALUE));
        } else if (this.a0 != null) {
            arrayList.addAll(tpb.j0().i(this.a0));
        }
        return arrayList;
    }

    @Override
    public void H0(List list) {
        this.A = 0;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((MediaItem) it.next()).isTimeItem) {
                this.A++;
            }
        }
    }

    public void K1() {
        this.t.setOnSelectListener(this);
        this.t.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.M1(baseQuickAdapter, view, i);
            }
        });
        this.t.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() {
            @Override
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                return this.a.N1(baseQuickAdapter, view, i);
            }
        });
        this.t.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.O1(baseQuickAdapter, view, i);
            }
        });
    }

    public void L1(View view) {
        BucketDateAdapter bucketDateAdapter = new BucketDateAdapter(this.mContext);
        this.t = bucketDateAdapter;
        bucketDateAdapter.X(this.s);
        if (this.s == 99) {
            this.t.c0(false);
        }
        this.Z = (VideoMainRecyclerView) view.findViewById(R.id.rv_main_fragment);
        this.N = (RecyclerViewFastScroller) view.findViewById(com.transsion.magicvideo.R.id.rv_fast_scroller);
        this.c0 = new b(getContext(), this.b0);
        this.Z.addOnScrollListener(this.d0);
        this.t.U(false);
        this.c0.setSpanCount(this.b0);
        this.Z.setLayoutManager(this.c0);
        this.Z.setAdapter(this.t);
        this.Z.setType(this.s != 9 ? "video" : "tomp3");
    }

    public final boolean N1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (i >= baseQuickAdapter.getData().size() || ((MediaItem) baseQuickAdapter.getData().get(i)).isTimeItem) {
            return true;
        }
        u1(baseQuickAdapter, view, i, false);
        return true;
    }

    public final ArrayList Q1(boolean z, VideosSelectFragment videosSelectFragment) {
        ArrayList arrayListT1 = T1(z);
        ls1.a(arrayListT1);
        F0(arrayListT1);
        return arrayListT1;
    }

    public void U1() {
        LogUtils.j("VideosSelectFragment", "updateUI");
        this.t.setNewData(this.r);
        x1();
        H0(this.r);
        if (this.r.isEmpty() && this.isInEditMode) {
            this.t.R(false);
        }
        G0();
        this.mDataUpdated = false;
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i != 1028) {
            if (i == 1118) {
                if (this.mDataUpdated) {
                    U1();
                    return;
                }
                return;
            } else {
                if (i == 1052) {
                    int iIntValue = ((Integer) objArr[0]).intValue();
                    if (this.I) {
                        refresh();
                    } else {
                        BucketDateAdapter bucketDateAdapter = this.t;
                        if (bucketDateAdapter != null) {
                            bucketDateAdapter.notifyItemChanged(iIntValue);
                        }
                    }
                    HashMap map = new HashMap();
                    map.put("from", Integer.valueOf(this.s));
                    map.put("type", "video");
                    map.put("status", Integer.valueOf(1 ^ (((Boolean) objArr[1]).booleanValue() ? 1 : 0)));
                    p06.b0("vd_vmore_favorite_cl", map);
                    return;
                }
                if (i != 1053) {
                    return;
                }
            }
        }
        BucketDateAdapter bucketDateAdapter2 = this.t;
        if (bucketDateAdapter2 != null) {
            bucketDateAdapter2.notifyItemRangeChanged(0, bucketDateAdapter2.getItemCount());
        }
    }

    @Override
    public int getActivityMenuSwitchFlag() {
        return 1;
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(Integer.valueOf(AnalyticsListener.EVENT_PLAYER_RELEASED));
        this.mEvents.add(1052);
        this.mEvents.add(1053);
    }

    @Override
    public void initTitleBar(View view) {
        if (this.s != 9) {
            View viewInflate = ((ViewStub) view.findViewById(R.id.title_bar)).inflate();
            this.mTitleTv = (TextView) viewInflate.findViewById(R.id.title_bar_title);
            View viewFindViewById = viewInflate.findViewById(R.id.title_bar_back);
            this.mBackIv = viewFindViewById;
            viewFindViewById.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.P1(view2);
                }
            });
            this.mAllCheckBox = (CheckBox) viewInflate.findViewById(com.transsion.playercommon.R.id.title_bar_checkBox);
            this.mMenuMore = viewInflate.findViewById(R.id.menu_more);
            initSortView(viewInflate, true);
            this.mTitleTv.setText(this.B);
        }
    }

    @Override
    public void loadData(final boolean z, boolean z2) {
        super.loadData(z, z2);
        mc7.K(this).i(this.mIsVisibleToUser ? 0L : 800L, TimeUnit.MILLISECONDS).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.Q1(z, (VideosSelectFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.R1((ArrayList) obj);
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
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.s = arguments.getInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG);
        } else {
            this.s = 9;
        }
        if (this.s != 9) {
            this.O = true;
        }
        MediaBucket mediaBucket = new MediaBucket();
        this.a0 = mediaBucket;
        if (arguments != null) {
            mediaBucket.setBucketId(arguments.getLong("bucket_fragment_buicket_id"));
            this.a0.fromInternal = arguments.getBoolean("bucket_fragment_is_internet");
            this.B = arguments.getString("bucket_fragment_buicket_name");
            this.a0.setVirtualFolder(arguments.getBoolean("bucket_fragment_buicket_isVirtual"));
            this.a0.setVirtualFolderMatchName(arguments.getString("bucket_fragment_buicket_virtual_match_name"));
            this.a0.setParentPath(arguments.getString("bucket_fragment_buicket_path"));
        }
        h27.c().b(this, 1118);
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
        h27.c().f(this, 1118);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        VideoMainRecyclerView videoMainRecyclerView = this.Z;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.removeOnScrollListener(this.d0);
        }
    }

    @Override
    public void onFragmentAnimationEnd(Animation animation) {
        LogUtils.j("VideosSelectFragment", "onAnimationEnd :" + this);
        this.mbFragmentShowCompleted = true;
        if (this.mDataUpdated) {
            U1();
        }
    }

    @Override
    public int onLayoutId() {
        return R.layout.medias_select_fragment;
    }

    @Override
    public void onPause() {
        super.onPause();
        ConvertingTaskManager.j().E("VideosSelectFragment");
        K0();
    }

    @Override
    public void onPlayItemChanged(MediaItem mediaItem) {
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null) {
            bucketDateAdapter.P(mediaItem);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        ConvertingTaskManager.j().K("VideosSelectFragment", this);
        L0();
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mEmptyPaddingBottom = getResources().getDimensionPixelSize(com.transsion.playercommon.R.dimen.convert_main_empty_imgView_marginBottom);
        L1(view);
        K1();
        OverScrollDecorHelper.setUpOverScroll(this.Z, 0);
        initTitleBar(view);
        super.onViewCreatedEnd(view, bundle);
    }

    @Override
    public void q(int i) {
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null) {
            bucketDateAdapter.notifyDataSetChanged();
        }
    }

    @Override
    public void scrollToTop() {
        super.scrollToTop();
        VideoMainRecyclerView videoMainRecyclerView = this.Z;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.scrollToPosition(0);
        }
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        BucketDateAdapter bucketDateAdapter;
        if (z && !this.mIsVisibleToUser && (bucketDateAdapter = this.t) != null && this.s == 9) {
            bucketDateAdapter.notifyDataSetChanged();
        }
        super.setUserVisibleHint(z);
    }

    @Override
    public void t(boolean z) {
        int i;
        if (!z || (i = this.s) == 1 || i == 99) {
            return;
        }
        postDelayLoadData();
        p06.B(this.s, Boolean.TRUE);
    }

    @Override
    public void u1(BaseQuickAdapter baseQuickAdapter, View view, int i, boolean z) {
        if (baseQuickAdapter.getData().size() == 0) {
            return;
        }
        MediaItem mediaItem = (MediaItem) baseQuickAdapter.getData().get(i);
        if (lpb.h(mediaItem)) {
            return;
        }
        boolean zIsChecked = ((CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox)).isChecked();
        if (!z) {
            zIsChecked = !zIsChecked;
        }
        ((BucketDateAdapter) baseQuickAdapter).T(mediaItem, zIsChecked, i);
        h27.c().e(1111, mediaItem, Boolean.valueOf(zIsChecked));
        k16.c(this.s, zIsChecked);
    }

    @Override
    public void updateShowUI() {
        super.updateShowUI();
        U1();
    }

    @Override
    public void x1() {
        super.x1();
        BaseFragment.d dVar = this.mMenuShowListener;
        if (dVar != null) {
            dVar.a(this.r.size() != 0);
        }
    }

    @Override
    public void z1(int i) {
    }
}
