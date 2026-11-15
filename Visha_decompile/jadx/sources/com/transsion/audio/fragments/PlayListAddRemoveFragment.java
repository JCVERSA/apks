package com.transsion.audio.fragments;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.p004lifecycle.ViewModelStoreOwner;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.audio.R;
import com.transsion.audio.adapter.AudioItemAdapter;
import com.transsion.audio.fragments.PlayListAddRemoveFragment;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.database.PlayList;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.videomodel.AudioDataListModel;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import com.transsion.widgetslib.dialog.c;
import com.transsion.widgetslib.dialog.d;
import defpackage.a64;
import defpackage.ao;
import defpackage.h27;
import defpackage.k29;
import defpackage.mc7;
import defpackage.r06;
import defpackage.raa;
import defpackage.t74;
import defpackage.vb;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PlayListAddRemoveFragment extends AudioBaseFragment implements View.OnClickListener {
    public Button W;
    public boolean X;
    public boolean Y;
    public String Z;
    public String a0;
    public int b0;
    public PlayListModel c0;
    public boolean d0;
    public ArrayList V = new ArrayList();
    public final Runnable e0 = new Runnable() {
        @Override
        public final void run() {
            this.b.Z1();
        }
    };

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            PlayListAddRemoveFragment playListAddRemoveFragment = PlayListAddRemoveFragment.this;
            playListAddRemoveFragment.u.O(((PlayBaseFragment) playListAddRemoveFragment).mAllCheckBox.isChecked());
        }
    }

    private void S1() {
        this.u.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.T1(baseQuickAdapter, view, i);
            }
        });
        this.u.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() {
            @Override
            public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                return this.a.U1(baseQuickAdapter, view, i);
            }
        });
        this.u.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.V1(baseQuickAdapter, view, i);
            }
        });
    }

    public void T1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        y1(baseQuickAdapter, view, i, false);
    }

    public void Z1() {
        RecyclerViewFastScroller recyclerViewFastScroller = this.I;
        if (recyclerViewFastScroller == null || recyclerViewFastScroller.getVisibility() == 0) {
            return;
        }
        this.I.setVisibility(0);
        i2();
    }

    private ArrayList d2() {
        ArrayList arrayListC2 = c2();
        this.B = this.u.G();
        if (arrayListC2 != null && this.A != arrayListC2.size() && this.B.size() != arrayListC2.size() && this.B.size() != 0) {
            Log.d("PlayListAddRemoveFragment", "checkSelectCount");
            this.A = this.q.size();
            this.x = 0;
            Iterator it = arrayListC2.iterator();
            while (it.hasNext()) {
                if (this.B.contains((AudioItem) it.next())) {
                    this.x++;
                }
            }
        }
        return arrayListC2;
    }

    public static long[] e2(int i, ArrayList arrayList, Boolean bool) {
        long[] jArr = new long[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (arrayList.get(i2) != null) {
                jArr[i2] = ao.U().r((AudioItem) arrayList.get(i2), i, ((AudioItem) arrayList.get(i2)).id, bool.booleanValue());
            }
        }
        return jArr;
    }

    @Override
    public void C1(int i) {
        super.C1(i);
        this.W.setEnabled(i != 0);
    }

    public final long[] P1(ArrayList arrayList) {
        if (this.X) {
            ao.U().o0("", this.b0, arrayList, true);
        } else {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                AudioItem audioItem = (AudioItem) it.next();
                if (audioItem != null) {
                    ao.U().r(audioItem, this.b0, audioItem.id, true);
                }
            }
        }
        h27.c().e(1055, new Object[0]);
        return new long[]{0};
    }

    public final void Q1(d dVar) {
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    public final void R1() {
        View view = this.mBackIv;
        if (view != null) {
            view.setVisibility(4);
        }
        TextView textView = this.mTitleTv;
        if (textView != null) {
            textView.setVisibility(4);
        }
    }

    public final boolean U1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        y1(baseQuickAdapter, view, i, false);
        return true;
    }

    public final void V1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.iv_bucket_fragment_checkBox) {
            y1(baseQuickAdapter, view, i, true);
        }
    }

    public final void W1(View view) {
        R1();
        this.mActivity.onBackPressed();
    }

    public final ArrayList X1(PlayListAddRemoveFragment playListAddRemoveFragment) {
        return d2();
    }

    public final void Y1(ArrayList arrayList) {
        this.q.clear();
        this.q.addAll(arrayList);
        this.u.setNewData(this.q);
        Log.d("PlayListAddRemoveFragment", "loadData " + this.q.size() + StringUtils.COMMA + arrayList.isEmpty());
        if (arrayList.isEmpty()) {
            this.u.O(false);
            this.mAllCheckBox.setChecked(false);
        }
        this.mAllCheckBox.setClickable(!arrayList.isEmpty());
        H0();
        A1();
    }

    public final Object a2(PlayListAddRemoveFragment playListAddRemoveFragment) {
        if (this.d0) {
            return P1(this.u.G());
        }
        if (this.X) {
            return ao.U().o0(this.a0, this.b0, this.u.G(), false);
        }
        List<PlayList> listN = this.c0.n();
        if (listN != null) {
            for (PlayList playList : listN) {
                if (playList.id == this.b0) {
                    Iterator it = this.u.G().iterator();
                    while (it.hasNext()) {
                        if (TextUtils.equals(((AudioItem) it.next()).data, playList.uri.toString())) {
                            playList.uri = null;
                            break;
                        }
                    }
                }
            }
        }
        return e2(this.b0, this.u.G(), Boolean.FALSE);
    }

    public final void b2(d dVar, Object obj) {
        Q1(dVar);
        if (this.X) {
            ToastUtils.v(this.mContext, this.d0 ? getString(R.string.add_favorites) : getString(R.string.add_to_playlist_toast, this.a0));
        } else {
            ToastUtils.s(this.d0 ? R.string.song_removed_from_favorites : R.string.remove_from_the_playlist);
        }
        this.c0.p(true);
        if (this.Y) {
            k2();
        } else {
            a64.a((BaseActivity) this.mContext);
        }
    }

    public ArrayList c2() {
        if (this.X) {
            return new ArrayList(this.V.isEmpty() ? (List) ao.U().x(null).getSecond() : ao.U().N(this.V, null, true));
        }
        return this.d0 ? new ArrayList((List) ao.U().y(true).getSecond()) : new ArrayList(ao.U().Y(this.b0, this.z));
    }

    public final void f2(BaseConstant.SCREEN_TYPE screen_type) {
        if (this.W != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_PORT) {
                layoutParams.setMargins(com.transsion.utils.a.d(this.mContext, 100.0f), com.transsion.utils.a.d(this.mContext, 10.0f), com.transsion.utils.a.d(this.mContext, 100.0f), com.transsion.utils.a.d(this.mContext, 30.0f));
            } else if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_LAND) {
                layoutParams.setMargins(com.transsion.utils.a.d(this.mContext, 127.0f), com.transsion.utils.a.d(this.mContext, 10.0f), com.transsion.utils.a.d(this.mContext, 127.0f), com.transsion.utils.a.d(this.mContext, 30.0f));
            } else {
                layoutParams.setMargins(com.transsion.utils.a.d(this.mContext, 72.0f), com.transsion.utils.a.d(this.mContext, 10.0f), com.transsion.utils.a.d(this.mContext, 72.0f), com.transsion.utils.a.d(this.mContext, 30.0f));
            }
            layoutParams.addRule(12);
            this.W.setLayoutParams(layoutParams);
            applyBottomMarginNavInset(this.W, com.transsion.utils.a.d(this.mContext, 30.0f));
        }
    }

    public BaseFragment g2(boolean z) {
        return h2(z, false);
    }

    @Override
    public int getDefaultListFlag() {
        return 29;
    }

    public BaseFragment h2(boolean z, boolean z2) {
        this.X = z;
        this.Y = z2;
        return this;
    }

    public final void i2() {
        if (!isAdded() || isDetached() || getContext() == null) {
            return;
        }
        updateBackIcon(true);
        View view = this.mBackIv;
        if (view != null) {
            view.setVisibility(0);
        }
        TextView textView = this.mTitleTv;
        if (textView != null) {
            textView.setVisibility(0);
        }
        C1(0);
    }

    @Override
    public void initTitleBar(View view) {
        super.initTitleBar(view);
        this.mAllCheckBox.setVisibility(0);
        this.mAllCheckBox.setOnClickListener(new a());
        View view2 = this.mBackIv;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    this.b.W1(view3);
                }
            });
        }
    }

    public final d j2(boolean z) {
        c cVar = new c(this.mContext);
        cVar.j(this.mContext.getResources().getString(z ? R.string.is_adding : com.transsion.playercommon.R.string.delete_progress));
        return cVar.l();
    }

    public final void k2() {
        Bundle bundle = new Bundle();
        bundle.putLong("bucket_fragment_buicket_id", this.b0);
        bundle.putString("bucket_fragment_buicket_name", this.a0);
        PlayListFragment playListFragment = (PlayListFragment) new PlayListFragment().setBaseActivity(baseActivity());
        playListFragment.setNeedBg(true);
        playListFragment.setArguments(bundle, 30);
        a64.h(this.mActivity);
        a64.o(playListFragment, true, true, false);
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        Log.d("PlayListAddRemoveFragment", "PlayListAddRemoveFragment loadData " + this.s);
        mc7.K(this).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.X1((PlayListAddRemoveFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.Y1((ArrayList) obj);
            }
        });
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            r06.c(screen_type, "vd_add_audio_page_to_playlist_show");
        }
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.add_remove_to_playlist) {
            final d dVarJ2 = j2(this.X);
            mc7.K(this).g(this.mActivity.bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.a2((PlayListAddRemoveFragment) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.b2(dVarJ2, obj);
                }
            });
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        AudioItemAdapter audioItemAdapter;
        ArrayList arrayList;
        this.E = true;
        super.onCreate(bundle);
        this.J = false;
        this.u = new AudioItemAdapter(this.mContext);
        this.t = true;
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.a0 = arguments.getString("fragment_playlist_name");
            this.b0 = arguments.getInt("fragment_playlist_id");
            this.Z = arguments.getString("action");
            int i = arguments.getInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG);
            this.s = i;
            this.d0 = i == 33;
            AudioDataListModel audioDataListModel = (AudioDataListModel) getViewModelByActivity(AudioDataListModel.class);
            ArrayList arrayList2 = new ArrayList();
            try {
                arrayList = new ArrayList(audioDataListModel.a());
                try {
                    Log.e("PlayListAddRemoveFragment", "onCreate arrayList:" + arrayList.hashCode());
                    audioDataListModel.b(new ArrayList());
                    if (!arrayList.isEmpty()) {
                        this.V = (ArrayList) arrayList.clone();
                    }
                    this.q = arrayList;
                } catch (Exception e) {
                    e = e;
                    arrayList2 = arrayList;
                    Log.e("PlayListAddRemoveFragment", "onCreate e:" + e.getMessage());
                    arrayList = arrayList2;
                }
            } catch (Exception e2) {
                e = e2;
            }
            Log.d("PlayListAddRemoveFragment", "onCreate mExitDataList:" + this.V.size());
            if (!this.X) {
                this.u.setNewData(arrayList);
            }
        }
        this.u.Q(true);
        this.u.setOnSelectListener(this);
        this.c0 = (PlayListModel) new ViewModelProvider((ViewModelStoreOwner) getContext(), new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(PlayListModel.class);
        if (!raa.i(this.mContext) || (audioItemAdapter = this.u) == null) {
            return;
        }
        audioItemAdapter.setHasStableIds(true);
    }

    @Override
    public Animation onCreateAnimation(int i, boolean z, int i2) {
        if (!z && i2 != 0) {
            R1();
        }
        return super.onCreateAnimation(i, z, i2);
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
        RecyclerViewFastScroller recyclerViewFastScroller = this.I;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.removeCallbacks(this.e0);
        }
        setMainViewModePlayListOperateMode(false);
    }

    @Override
    public void onFragmentAnimationEnd(Animation animation) {
        super.onFragmentAnimationEnd(animation);
        i2();
        RecyclerViewFastScroller recyclerViewFastScroller = this.I;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.removeCallbacks(this.e0);
            this.I.setVisibility(0);
        }
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        f2(screen_type);
    }

    @Override
    public void onItemClick(int i) {
    }

    @Override
    public int onLayoutId() {
        return R.layout.playlist_add_remove_fragment;
    }

    @Override
    public void onPause() {
        super.onPause();
        RecyclerViewFastScroller recyclerViewFastScroller = this.I;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.removeCallbacks(this.e0);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        RecyclerViewFastScroller recyclerViewFastScroller = this.I;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.removeCallbacks(this.e0);
            this.I.postDelayed(this.e0, 500L);
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        RecyclerViewFastScroller recyclerViewFastScroller;
        super.onViewCreated(view, bundle);
        initTitleBar(view);
        this.H = (VideoMainRecyclerView) view.findViewById(R.id.rv_main_fragment);
        this.I = (RecyclerViewFastScroller) view.findViewById(R.id.rv_fast_scroller);
        this.H.setLayoutManager(new CustomLinearLayoutManager(this.mContext));
        OverScrollDecorHelper.setUpOverScroll(this.H, 0);
        this.H.setAdapter(this.u);
        this.u.bindToRecyclerView(this.H);
        S1();
        Button button = (Button) view.findViewById(R.id.add_remove_to_playlist);
        this.W = button;
        button.setOnClickListener(this);
        if (!this.X) {
            this.W.setText(this.d0 ? R.string.remove_favorites : R.string.remove);
        }
        f2(this.mScreenType);
        r06.e(this.mScreenType, null, "vd_add_audio_page_to_playlist_show", 932460000118L);
        R1();
        if (this.mbFragmentShowCompleted) {
            i2();
        }
        setMainViewModePlayListOperateMode(true);
        setNeedBg(true);
        if (this.mbFragmentShowCompleted || (recyclerViewFastScroller = this.I) == null) {
            RecyclerViewFastScroller recyclerViewFastScroller2 = this.I;
            if (recyclerViewFastScroller2 != null) {
                recyclerViewFastScroller2.setVisibility(0);
            }
        } else {
            recyclerViewFastScroller.setVisibility(4);
        }
        super.onViewCreatedEnd(view, bundle);
    }
}
