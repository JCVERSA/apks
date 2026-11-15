package com.transsion.magicvideo.fragments;

import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.p004lifecycle.ViewModelProvider;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.BucketDateAdapter;
import com.transsion.magicvideo.fragments.VideoPlayListOperateFragment;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.videomodel.VideoDataListModel;
import com.transsion.playercommon.videomodel.VideoPlayListModel;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import com.transsion.widgetslib.dialog.c;
import com.transsion.widgetslib.dialog.d;
import defpackage.a64;
import defpackage.h27;
import defpackage.k29;
import defpackage.mc7;
import defpackage.raa;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class VideoPlayListOperateFragment extends VideosBaseFragment implements View.OnClickListener {
    public ArrayList Z = new ArrayList();
    public String a0;
    public int b0;
    public Button c0;
    public boolean d0;
    public boolean e0;
    public int f0;
    public VideoPlayListModel g0;
    public d h0;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            VideoPlayListOperateFragment videoPlayListOperateFragment = VideoPlayListOperateFragment.this;
            videoPlayListOperateFragment.t.R(((PlayBaseFragment) videoPlayListOperateFragment).mAllCheckBox.isChecked());
        }
    }

    private void O1(final ArrayList arrayList) {
        mc7.K(arrayList).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.R1(arrayList, (ArrayList) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.S1((Boolean) obj);
            }
        });
    }

    private void P1(d dVar) {
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    private void Q1() {
        this.t.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.T1(baseQuickAdapter, view, i);
            }
        });
        this.t.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() {
            @Override
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                return this.a.U1(baseQuickAdapter, view, i);
            }
        });
        this.t.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.V1(baseQuickAdapter, view, i);
            }
        });
    }

    public void S1(Boolean bool) {
        this.h0.dismiss();
        VideoPlayListModel videoPlayListModel = this.g0;
        if (videoPlayListModel != null) {
            videoPlayListModel.o(true);
        }
        a64.a((BaseActivity) this.mContext);
    }

    public void T1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        u1(baseQuickAdapter, view, i, false);
    }

    public boolean U1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        u1(baseQuickAdapter, view, i, false);
        return true;
    }

    public void V1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.iv_bucket_fragment_checkBox) {
            u1(baseQuickAdapter, view, i, true);
        }
    }

    private ArrayList b2(boolean z) {
        ArrayList arrayList = new ArrayList();
        if (this.d0) {
            arrayList.addAll(tpb.j0().p(this.Z));
        } else {
            arrayList.addAll(tpb.j0().E(this.f0));
        }
        Log.d("VideoPlayListOperateFragment", "queryVideoData oldDataSize:" + this.D + ",query data size:" + arrayList.size());
        this.E = this.t.D();
        if (this.D != arrayList.size() && this.E.size() != arrayList.size() && this.E.size() != 0) {
            this.D = this.r.size();
            this.w = 0;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (this.E.contains((MediaItem) it.next())) {
                    this.w++;
                }
            }
            Log.d("VideoPlayListOperateFragment", "checkSelectCount " + this.D + StringUtils.COMMA + this.w);
        }
        return arrayList;
    }

    private void c2(BaseConstant.SCREEN_TYPE screen_type) {
        if (this.c0 != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_PORT) {
                layoutParams.setMargins(com.transsion.utils.a.d(this.mContext, 100.0f), com.transsion.utils.a.d(this.mContext, 10.0f), com.transsion.utils.a.d(this.mContext, 100.0f), com.transsion.utils.a.d(this.mContext, 30.0f));
            } else if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_LAND) {
                layoutParams.setMargins(com.transsion.utils.a.d(this.mContext, 127.0f), com.transsion.utils.a.d(this.mContext, 10.0f), com.transsion.utils.a.d(this.mContext, 127.0f), com.transsion.utils.a.d(this.mContext, 30.0f));
            } else {
                layoutParams.setMargins(com.transsion.utils.a.d(this.mContext, 72.0f), com.transsion.utils.a.d(this.mContext, 10.0f), com.transsion.utils.a.d(this.mContext, 72.0f), com.transsion.utils.a.d(this.mContext, 30.0f));
            }
            layoutParams.addRule(12);
            this.c0.setLayoutParams(layoutParams);
            applyBottomMarginNavInset(this.c0, com.transsion.utils.a.d(this.mContext, 30.0f));
        }
    }

    private d f2(boolean z) {
        c cVar = new c(this.mContext);
        cVar.j(this.mContext.getResources().getString(z ? R.string.is_adding : com.transsion.playercommon.R.string.delete_progress));
        return cVar.l();
    }

    private void g2() {
        Bundle bundle = new Bundle();
        bundle.putLong("bucket_fragment_buicket_id", this.b0);
        bundle.putString("bucket_fragment_buicket_name", this.a0);
        VideoPlayListFragment videoPlayListFragment = (VideoPlayListFragment) new VideoPlayListFragment().setBaseActivity(baseActivity());
        videoPlayListFragment.setNeedBg(true);
        videoPlayListFragment.setArguments(bundle, 30);
        a64.h(this.mActivity);
        a64.o(videoPlayListFragment, true, true, false);
    }

    public final Boolean R1(ArrayList arrayList, ArrayList arrayList2) {
        tpb.j0().N(this.b0, arrayList, this.I);
        return Boolean.TRUE;
    }

    public final ArrayList W1(boolean z, VideoPlayListOperateFragment videoPlayListOperateFragment) {
        return b2(z);
    }

    public final void X1(ArrayList arrayList) {
        this.r.clear();
        this.r.addAll(arrayList);
        updateUiForDataChanged();
    }

    public final List Y1(VideoPlayListOperateFragment videoPlayListOperateFragment) {
        ArrayList arrayList = new ArrayList(this.t.D());
        return this.d0 ? tpb.j0().V(this.a0, this.f0, arrayList, this.I) : tpb.j0().N(this.b0, arrayList, this.I);
    }

    public final void Z1(d dVar, List list) {
        if (this.d0 && this.I) {
            h27.c().e(1053, new Object[0]);
        }
        P1(dVar);
        if (this.d0) {
            ToastUtils.v(this.mContext, this.I ? getString(R.string.add_favorites) : getString(R.string.add_to_playlist_toast, this.a0));
        } else {
            ToastUtils.s(this.I ? R.string.song_removed_from_favorites : R.string.remove_from_the_playlist);
        }
        this.g0.n(true);
        if (this.e0) {
            g2();
        } else {
            a64.a((BaseActivity) this.mContext);
        }
    }

    public final void a2(ArrayList arrayList, DialogInterface dialogInterface, int i) {
        c cVar = new c(this.mContext);
        cVar.j(this.mContext.getResources().getString(com.transsion.playercommon.R.string.delete_progress));
        this.h0 = cVar.l();
        O1(arrayList);
    }

    @Override
    public void b(int i) {
        z1(i);
    }

    @Override
    public void c(boolean z) {
        Log.d("VideoPlayListOperateFragment", "callSelectAll " + z);
        z1(z ? this.r.size() - this.A : 0);
    }

    public BaseFragment d2(boolean z) {
        return e2(z, false);
    }

    public BaseFragment e2(boolean z, boolean z2) {
        this.d0 = z;
        this.e0 = z2;
        return this;
    }

    @Override
    public void initTitleBar(View view) {
        super.initTitleBar(view);
        this.mAllCheckBox.setVisibility(0);
        this.mAllCheckBox.setOnClickListener(new a());
        updateBackIcon(true);
    }

    @Override
    public void loadData(final boolean z, boolean z2) {
        super.loadData(z, z2);
        mc7.K(this).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.W1(z, (VideoPlayListOperateFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.X1((ArrayList) obj);
            }
        });
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.add_remove_to_playlist) {
            final d dVarF2 = f2(this.d0);
            mc7.K(this).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.Y1((VideoPlayListOperateFragment) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.Z1(dVarF2, (List) obj);
                }
            });
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        BucketDateAdapter bucketDateAdapter;
        this.y = true;
        super.onCreate(bundle);
        this.t = new BucketDateAdapter(this.mContext);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f0 = arguments.getInt("fragment_playlist_id");
            int i = arguments.getInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG);
            this.s = i;
            this.I = i == 33;
            new ArrayList();
            VideoDataListModel videoDataListModel = (VideoDataListModel) getViewModelByActivity(VideoDataListModel.class);
            try {
                ArrayList arrayList = (ArrayList) videoDataListModel.g();
                videoDataListModel.o(new ArrayList());
                if (arrayList != null && !arrayList.isEmpty()) {
                    this.Z = (ArrayList) arrayList.clone();
                    this.r = arrayList;
                }
            } catch (Exception e) {
                Log.e("VideoPlayListOperateFragment", "onCreate: ", e);
            }
            ArrayList arrayList2 = this.r;
            this.D = arrayList2 == null ? arrayList2.size() : 0;
            this.a0 = arguments.getString("fragment_playlist_name");
            this.b0 = arguments.getInt("fragment_playlist_id");
            if (!this.d0) {
                this.t.setNewData(this.Z);
            }
        }
        this.g0 = (VideoPlayListModel) new ViewModelProvider(this.mActivity).get(VideoPlayListModel.class);
        this.t.X(29);
        this.t.setOnSelectListener(this);
        if (raa.i(this.mContext) && (bucketDateAdapter = this.t) != null) {
            bucketDateAdapter.setHasStableIds(true);
        }
        setNeedBg(true);
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
        setMainViewModePlayListOperateMode(false);
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        c2(screen_type);
    }

    @Override
    public void onItemClick(int i) {
        super.onItemClick(i);
    }

    @Override
    public int onLayoutId() {
        return R.layout.video_playlist_add_remove_fragment;
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        initTitleBar(view);
        this.M = (VideoMainRecyclerView) view.findViewById(R.id.rv_main_fragment);
        this.N = (RecyclerViewFastScroller) view.findViewById(R.id.rv_fast_scroller);
        this.M.setLayoutManager(new CustomLinearLayoutManager(this.mContext));
        this.M.setAdapter(this.t);
        OverScrollDecorHelper.setUpOverScroll(this.M, 0);
        Q1();
        Button button = (Button) view.findViewById(R.id.add_remove_to_playlist);
        this.c0 = button;
        button.setOnClickListener(this);
        if (!this.d0) {
            this.c0.setText(R.string.remove);
        }
        c2(this.mScreenType);
        z1(0);
        setMainViewModePlayListOperateMode(true);
    }

    @Override
    public void showRemoveDialog() {
        final ArrayList arrayListD = this.t.D();
        new d.a(this.mContext).j(arrayListD.size() > 1 ? R.string.remove_videos_new : R.string.remove_video_new).u(R.string.delete, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.a2(arrayListD, dialogInterface, i);
            }
        }).m(com.transsion.playercommon.R.string.cancel, null).a().show();
    }

    @Override
    public void updateShowUI() {
        LogUtils.N("VideoPlayListOperateFragment", "updateShowUI, data size = " + this.r.size());
        H0(this.r);
        if (this.t == null) {
            this.r.clear();
            this.mAllCheckBox.setChecked(false);
        } else if (this.r.isEmpty()) {
            this.mAllCheckBox.setChecked(false);
        } else {
            this.t.setNewData(this.r);
            this.mAllCheckBox.setClickable(true);
            G0();
        }
        x1();
    }

    @Override
    public void z1(int i) {
        super.z1(i);
        this.w = i;
        Log.d("VideoPlayListOperateFragment", "setTitle " + this.w);
        if (getContext() != null) {
            if (i == 0) {
                this.mTitleTv.setText(getContext().getString(R.string.none_select));
            } else {
                this.mTitleTv.setText(getContext().getString(i > 1 ? R.string.items : R.string.item, Integer.valueOf(i)));
            }
        }
        this.mAllCheckBox.setChecked(i != 0 && i == this.r.size() - this.A);
        this.c0.setEnabled(i != 0);
    }
}
