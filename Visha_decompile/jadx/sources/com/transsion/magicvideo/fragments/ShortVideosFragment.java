package com.transsion.magicvideo.fragments;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.ShortVideosAdapter;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.av3;
import defpackage.h27;
import defpackage.k29;
import defpackage.ls1;
import defpackage.mc7;
import defpackage.ps1;
import defpackage.r06;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;

public class ShortVideosFragment extends VideosFragment {
    public int a1 = -1;
    public boolean b1 = false;

    public class a extends RecyclerView.OnScrollListener {
        public a() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 2 || i == 1) {
                h27.c().e(1157, Integer.valueOf(BaseFragment.SCROLL_START));
            } else {
                h27.c().e(1157, Integer.valueOf(BaseFragment.SCROLL_END));
            }
        }
    }

    public class b extends CustomGridLayoutManager {
        public b(Context context, int i) {
            super(context, i);
        }

        @Override
        public boolean canScrollVertically() {
            if (ShortVideosFragment.this.r.isEmpty()) {
                return false;
            }
            return super.canScrollVertically();
        }
    }

    @Override
    public void S2(View view) {
        ShortVideosAdapter shortVideosAdapter = new ShortVideosAdapter(getActivity());
        this.t = shortVideosAdapter;
        shortVideosAdapter.U(true);
        this.t.X(this.s);
        this.t.Z(this.mScreenType);
        VideoMainRecyclerView videoMainRecyclerView = (VideoMainRecyclerView) view.findViewById(R.id.rv_main_fragment);
        this.M = videoMainRecyclerView;
        videoMainRecyclerView.addOnItemTouchListener(this.mSimpleOnItemTouchListener);
        this.M.addOnScrollListener(new a());
        this.N = (RecyclerViewFastScroller) view.findViewById(R.id.rv_fast_scroller);
        this.M.setLayoutManager(new b(getContext(), 3));
        this.M.setAdapter(this.t);
        this.M.setType("video");
        this.r0 = true;
        e4();
    }

    @Override
    public void V3() {
        Log.d("ShortVideosFragment", "switchRecyclerViewLayout:" + this);
    }

    @Override
    public void e4() {
        if (this.M != null) {
            int iD = com.transsion.utils.a.d(this.mActivity, 20.0f);
            boolean z = av3.z();
            VideoMainRecyclerView videoMainRecyclerView = this.M;
            int i = z ? 0 : iD;
            int paddingTop = videoMainRecyclerView.getPaddingTop();
            if (!z) {
                iD = 0;
            }
            videoMainRecyclerView.setPadding(i, paddingTop, iD, this.M.getPaddingBottom());
        }
        RecyclerViewFastScroller recyclerViewFastScroller = this.N;
        if (recyclerViewFastScroller != null) {
            int paddingBottom = recyclerViewFastScroller.getPaddingBottom();
            RecyclerViewFastScroller recyclerViewFastScroller2 = this.N;
            recyclerViewFastScroller2.setPadding(recyclerViewFastScroller2.getPaddingStart(), this.N.getPaddingTop(), this.N.getPaddingEnd(), paddingBottom);
        }
    }

    public final ArrayList i4(BaseActivity baseActivity) {
        ArrayList arrayListK4 = k4();
        ls1.a(arrayListK4);
        return arrayListK4;
    }

    public final void j4(ArrayList arrayList) {
        this.r.clear();
        this.r.addAll(arrayList);
        this.mbFragmentShowCompleted = true;
        updateUiForDataChanged();
        Log.d("ShortVideosFragment", "loadData:" + arrayList.size() + ", " + this);
    }

    public final ArrayList k4() {
        return new ArrayList(tpb.j0().e0(Integer.MAX_VALUE));
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        this.a1 = SortUtil.l().getValue();
        this.b1 = SortUtil.n();
        mc7.K(this.mActivity).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.i4((BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.j4((ArrayList) obj);
            }
        });
    }

    @Override
    public void markPointVisiable(boolean z) {
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            r06.c(this.mScreenType, "vd_short_show");
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.s = 14;
    }

    @Override
    public int onLayoutId() {
        return R.layout.videos_short_fragment;
    }

    @Override
    public void onResume() {
        super.onResume();
        int i = this.a1;
        if (i != -1) {
            if (i == SortUtil.l().getValue() && this.b1 == SortUtil.n()) {
                return;
            }
            loadData(false, false);
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.l = view;
        S2(view);
        Q0(view, this.M);
        P2();
        super.onViewCreatedEnd(view, bundle);
    }

    @Override
    public void t(boolean z) {
        if (z) {
            loadData(false, false);
        }
    }

    @Override
    public void updateShowUI() {
        this.t.setNewData(this.r);
        ps1.b(this.r);
        x1();
    }
}
