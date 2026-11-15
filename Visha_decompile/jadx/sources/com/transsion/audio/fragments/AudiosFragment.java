package com.transsion.audio.fragments;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.WindowInsets;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.WindowInsetsCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.tencent.mmkv.MMKV;
import com.transsion.athena.data.TrackData;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioBucketListActivity;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.activities.AudioSheetDialogActivity;
import com.transsion.audio.activities.FilterResultActivity;
import com.transsion.audio.adapter.AudioItemAdapter;
import com.transsion.audio.fragments.AudiosFragment;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.widgets.AudioAppFootActionBar;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.audiomodel.AudioDataListModel;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.preload.OptimizeListAdapter;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.vishaads.views.AdBannerView;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import com.transsion.widgets.RoundImageView;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.a9;
import defpackage.af9;
import defpackage.ao;
import defpackage.bg5;
import defpackage.f5;
import defpackage.fi1;
import defpackage.gd1;
import defpackage.h27;
import defpackage.ha1;
import defpackage.hb0;
import defpackage.hf7;
import defpackage.if7;
import defpackage.iia;
import defpackage.k29;
import defpackage.mc7;
import defpackage.mn5;
import defpackage.p06;
import defpackage.pp3;
import defpackage.r44;
import defpackage.raa;
import defpackage.s06;
import defpackage.sq3;
import defpackage.t06;
import defpackage.t55;
import defpackage.t74;
import defpackage.uy5;
import defpackage.vb;
import defpackage.vdb;
import defpackage.vg9;
import defpackage.vmb;
import defpackage.w6c;
import defpackage.xdc;
import defpackage.ydc;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;

public class AudiosFragment extends AudioDragBaseFragment implements View.OnClickListener {
    public int A0;
    public View B0;
    public LinearLayout.LayoutParams C0;
    public BroadcastReceiver D0;
    public IntentFilter E0;
    public View F0;
    public ConstraintLayout G0;
    public AudioDataListModel H0;
    public View K0;
    public ImageView L0;
    public TextView M0;
    public int O0;
    public boolean P0;
    public AdBannerView Q0;
    public AdItemBean R0;
    public MediaBucket w0;
    public boolean z0;
    public String x0 = null;
    public AudioItem y0 = null;
    public boolean I0 = false;
    public boolean J0 = false;
    public gd1 N0 = new gd1();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            try {
                AudiosFragment.this.l3(true);
            } catch (Exception e) {
                Log.e("AudiosFragment", "initFirstPaly mCustomReceiver " + e.getMessage());
            }
        }
    }

    public class b extends RecyclerView.OnScrollListener {
        public b() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 2 || i == 1) {
                AudiosFragment audiosFragment = AudiosFragment.this;
                int i2 = audiosFragment.s;
                if (i2 == 21 || i2 == 24) {
                    h27.c().e(1156, Integer.valueOf(BaseFragment.SCROLL_START));
                    return;
                } else {
                    audiosFragment.hideShuffleBtn();
                    return;
                }
            }
            AudiosFragment audiosFragment2 = AudiosFragment.this;
            int i3 = audiosFragment2.s;
            if (i3 == 21 || i3 == 24) {
                h27.c().e(1156, Integer.valueOf(BaseFragment.SCROLL_END));
            } else {
                if (((PlayBaseFragment) audiosFragment2).isInEditMode) {
                    return;
                }
                AudiosFragment audiosFragment3 = AudiosFragment.this;
                if (audiosFragment3.G) {
                    return;
                }
                audiosFragment3.showShuffleBtn();
            }
        }
    }

    public class c extends if7 {
        public c(int i, boolean z) {
            super(i, z);
        }

        @Override
        public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (i < 0 || i >= baseQuickAdapter.getData().size() || ((PlayBaseFragment) AudiosFragment.this).mIsDialogShowing) {
                return;
            }
            boolean z = false;
            if (((PlayBaseFragment) AudiosFragment.this).isInEditMode) {
                AudiosFragment.this.y1(baseQuickAdapter, view, i, false);
                AudiosFragment.this.V1((AudioItem) baseQuickAdapter.getData().get(i), view);
                return;
            }
            AudioItem audioItem = (AudioItem) baseQuickAdapter.getData().get(i);
            audioItem.setSelectedPos(i);
            AudiosFragment.this.u.T(audioItem);
            if (AudiosFragment.this.s == 22) {
                p06.w(baseQuickAdapter.getData().size(), AudiosFragment.this.w0.parentPath);
            }
            if (AudiosFragment.this.baseActivity() instanceof AudioBucketListActivity) {
                List listD = com.blankj.utilcode.util.a.d();
                if (listD.size() > 1) {
                    Activity activity = (Activity) listD.get(1);
                    if (AudioPlayerActivity.class.equals(activity.getClass())) {
                        z = listD.size() == 2;
                        activity.finish();
                        LogUtils.O("AudiosFragment", "finish AudioPlayerActivity");
                    }
                }
                LogUtils.v("AudiosFragment", "finish");
            }
            if (AudiosFragment.this.s == 24) {
                p06.r();
            }
            AudiosFragment audiosFragment = AudiosFragment.this;
            audiosFragment.j3(audioItem, p06.y(audiosFragment.s, ao.U().f0(audioItem)), z);
            if (AudioBucketListActivity.class.equals(AudiosFragment.this.baseActivity().getClass())) {
                AudiosFragment.this.baseActivity().finish();
            }
        }
    }

    public class d implements FileOperateUtils.k {
        public final AudioItem a;
        public final int b;

        public d(AudioItem audioItem, int i) {
            this.a = audioItem;
            this.b = i;
        }

        @Override
        public void d() {
            int i = this.b;
            if (i != -1 && i < AudiosFragment.this.q.size()) {
                Handler handlerO = ThreadUtils.o();
                final int i2 = this.b;
                handlerO.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.k(i2);
                    }
                });
                AudiosFragment.this.A1();
            }
            if (((PlayBaseFragment) AudiosFragment.this).isInEditMode) {
                AudiosFragment.this.editMode(false);
            }
            LogUtils.i("AudiosFragment", "deleteSuccess");
        }

        @Override
        public void g(String str, String str2) {
            AudiosFragment.this.F0(this.a, str, str2);
            AudiosFragment.this.t1(this.a, str2, true);
        }

        public final void k(int i) {
            AudiosFragment.this.v1(i);
        }
    }

    public class e extends hf7 {
        public e(String str) {
            super(str);
        }

        @Override
        public void a(int i) {
            b(i == 0 ? 1000 : 500);
            AudiosFragment.this.onItemClick(i);
        }
    }

    private void E2() {
        this.u.setOnSelectListener(this);
        c cVar = new c(1000, true);
        this.v = cVar;
        this.u.setOnItemClickListener(cVar);
        this.u.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.M2(baseQuickAdapter, view, i);
            }
        });
        O1();
    }

    private void H2(View view) {
        LogUtils.i("AudiosFragment", "initOverScroll " + this.z0);
        if (!this.z0) {
            initOverScrollDecor(this.H);
        } else {
            O0(view, this.H);
            this.mPullDampingLayout.setOnChildScrollUpCallback(new CustomSwipeRefreshLayout.OnChildScrollUpCallback() {
                @Override
                public final boolean canChildScrollUp(CustomSwipeRefreshLayout customSwipeRefreshLayout, View view2) {
                    return this.a.N2(customSwipeRefreshLayout, view2);
                }
            });
        }
    }

    private boolean J2() {
        ArrayList arrayList = this.q;
        return arrayList == null || arrayList.size() == 0;
    }

    private void Y2() {
        AdItemBean adItemBean;
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser && (adItemBean = this.R0) != null) {
            a9.a(null, adItemBean.getId(), "vd_ad_adbanner_show");
        }
    }

    public static AudiosFragment a3(int i) {
        AudiosFragment audiosFragment = new AudiosFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, i);
        audiosFragment.setArguments(bundle);
        return audiosFragment;
    }

    private void b3() {
        l3(false);
        LiveEventBus.b().c("change_minibar_state", Boolean.TRUE);
    }

    @Override
    public void A1() {
        LinearLayout.LayoutParams layoutParams;
        super.A1();
        int i = 0;
        if (this.B0 != null && (layoutParams = this.C0) != null) {
            layoutParams.topMargin = this.q.size() == 0 ? 0 : this.A0;
            this.B0.setLayoutParams(this.C0);
        }
        if (raa.i(this.mContext)) {
            VideoMainRecyclerView videoMainRecyclerView = this.H;
            ArrayList arrayList = this.q;
            videoMainRecyclerView.setVisibility((arrayList == null || arrayList.size() == 0) ? 8 : 0);
        }
        int i2 = this.s;
        if (i2 != 21) {
            if (i2 != 24) {
                setShuffleBtnVisible(!J2(), "audio");
                return;
            }
            i = 3;
        }
        if (J2()) {
            h27.c().e(1162, Boolean.FALSE, Integer.valueOf(i));
        } else {
            h27.c().e(1162, Boolean.TRUE, Integer.valueOf(i));
        }
    }

    public final void C2() {
        this.L0.setVisibility(8);
        w6c.r(this.mContext, "show_audio_sort_point", false);
    }

    public final void D2() {
        if (this.s == 21) {
            AudioDataListModel audioDataListModel = (AudioDataListModel) getViewModelByActivity(AudioDataListModel.class);
            this.H0 = audioDataListModel;
            if (audioDataListModel.d() == null || this.H0.d().isEmpty()) {
                this.H0.b.observe(getViewLifecycleOwner(), new Observer() {
                    @Override
                    public final void onChanged(Object obj) {
                        this.a.L2((List) obj);
                    }
                });
            } else {
                if (this.I0) {
                    return;
                }
                d3(this.H0.d());
                updateUiForDataChanged();
                this.J0 = true;
            }
        }
    }

    @Override
    public void F0(AudioItem audioItem, String str, String str2) {
        super.F0(audioItem, str, str2);
        this.x0 = str2;
        this.y0 = audioItem;
    }

    public final void F2() {
        IntentFilter intentFilter = new IntentFilter();
        this.E0 = intentFilter;
        intentFilter.addAction("com.transsion.visha.music.firstclick");
        this.D0 = new a();
        LocalBroadcastManager.getInstance(getApplicationContext()).registerReceiver(this.D0, this.E0);
    }

    public final void G2() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.layout_audio_footer_view, (ViewGroup) this.H, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_audio_filtered_audios);
        this.M0 = textView;
        textView.setOnClickListener(this);
        this.H.addFooterView(viewInflate);
    }

    public final void I2(View view) {
        if (this.s == 21) {
            this.A0 = getResources().getDimensionPixelSize(R.dimen.tab_menu_layout_height);
            this.B0 = view.findViewById(R.id.scrollbar_layout);
        }
        View viewFindViewById = view.findViewById(R.id.tab_menu_layout);
        this.F0 = viewFindViewById;
        int i = this.s;
        if (i == 36 || i == 21) {
            viewFindViewById.setVisibility(8);
        }
        View view2 = this.F0;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    this.b.O2(view3);
                }
            });
            this.w = (TextView) this.F0.findViewById(R.id.media_num);
        }
        this.K0 = view.findViewById(R.id.audio_sort);
        this.L0 = (ImageView) view.findViewById(R.id.iv_point);
        View view3 = this.K0;
        if (view3 != null) {
            view3.setOnClickListener(new ha1(new View.OnClickListener() {
                @Override
                public final void onClick(View view4) {
                    this.b.P2(view4);
                }
            }));
        }
        i3();
    }

    @Override
    public void K0(boolean z) {
        LogUtils.j("AudiosFragment", "dragMode enter = " + z);
        super.K0(z);
        View view = this.F0;
        if (view != null) {
            view.setEnabled(!z);
            this.F0.setAlpha(z ? 0.4f : 1.0f);
        }
        o3(z);
        int i = this.s;
        if (i == 21 || i == 24) {
            return;
        }
        setShuffleBtnVisible(!z, "audio");
    }

    public final void K2() {
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            audioItemAdapter.notifyItemRangeChanged(0, audioItemAdapter.getItemCount());
        }
    }

    public final void L2(List list) {
        if (this.I0 || list == null || list.isEmpty()) {
            return;
        }
        d3(list);
        updateUiForDataChanged();
        this.J0 = true;
    }

    public final void M2(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (!ingoreClickEvent() || this.isInEditMode) {
            this.mFirstClickTime = System.currentTimeMillis();
            if (baseQuickAdapter.getData().size() <= i) {
                return;
            }
            AudioItem audioItem = (AudioItem) baseQuickAdapter.getData().get(i);
            if (this.isInEditMode) {
                y1(baseQuickAdapter, view, i, true);
                V1(audioItem, this.H.getLayoutManager().findViewByPosition(i));
                return;
            }
            if (view.getId() == R.id.iv_item_more) {
                h3("file_operate_menu_tag", audioItem, i);
                Bundle bundle = new Bundle();
                TrackData trackData = new TrackData();
                String strA = p06.A(this.s);
                bundle.putString("from", strA);
                bundle.putString("TYPE", "audio");
                trackData.add("from", strA);
                trackData.add("TYPE", "audio");
                p06.q0(trackData, bundle, "vd_vmore_show", 9324L);
            }
        }
    }

    public final boolean N2(CustomSwipeRefreshLayout customSwipeRefreshLayout, View view) {
        return this.H.canScrollVertically(-1);
    }

    public final void O2(View view) {
        b3();
    }

    public final void P2(View view) {
        h27.c().e(1024, view);
        C2();
    }

    public final WindowInsets Q2(ViewGroup viewGroup, View view, WindowInsets windowInsets) {
        DisplayCutout displayCutout = windowInsets.getDisplayCutout();
        int safeInsetLeft = displayCutout != null ? displayCutout.getSafeInsetLeft() : 0;
        int safeInsetRight = displayCutout != null ? displayCutout.getSafeInsetRight() : 0;
        int i = windowInsets.getInsets(WindowInsetsCompat.Type.statusBars()).top;
        int i2 = windowInsets.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom;
        if (viewGroup != null) {
            viewGroup.setPadding(0, i, 0, i2);
        }
        n3(safeInsetLeft, safeInsetRight);
        return view.onApplyWindowInsets(windowInsets);
    }

    public final List R2(AudiosFragment audiosFragment) {
        ArrayList<AudioItem> arrayListC3 = c3();
        if (this.y0 != null && arrayListC3 != null) {
            AudioAlbum audioAlbumD = ao.U().D(this.y0.id);
            if (audioAlbumD != null) {
                for (AudioItem audioItem : arrayListC3) {
                    if (TextUtils.equals(audioItem.data, this.x0)) {
                        audioAlbumD.id = Integer.valueOf(audioItem.id);
                        ao.U().s0(audioAlbumD.id.intValue(), audioItem.data, "");
                        G0(arrayListC3);
                        return arrayListC3;
                    }
                }
            }
            this.y0 = null;
            this.x0 = null;
        }
        G0(arrayListC3);
        PlayAudioListData.getInstance().restore(arrayListC3);
        return arrayListC3;
    }

    public final void S2(List list) {
        this.I0 = true;
        d3(list);
        updateUiForDataChanged();
        vdb.g("AudiosFragment", "loadData end");
        if (MMKV.p().e("mmkv_key_triggered_show_mv_switch", false)) {
            MMKV.p().y("mmkv_key_triggered_show_mv_switch", false);
            if (PlayAudioListData.getInstance().getPlayListFlag() == 21) {
                PlayAudioListData.getInstance().setPlayList((ArrayList) list, null);
            }
        }
    }

    public final void T2(ArrayList arrayList) {
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            audioItemAdapter.setNewData(arrayList);
        }
    }

    public final void U2() {
        int i = 0;
        List listB0 = ao.U().b0(false, null);
        ArrayList arrayList = new ArrayList(this.q);
        for (Object obj : arrayList) {
            if ((obj instanceof AudioItem) && ((AudioItem) obj).isMusicVideo) {
                i++;
            }
        }
        int size = listB0.size();
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("audio_amount", arrayList.size() + "");
        trackData.add("audio_amount", arrayList.size());
        bundle.putString("mv_amount", i + "");
        trackData.add("mv_amount", i);
        bundle.putInt("new_amount", size);
        trackData.add("new_amount", size);
        p06.q0(trackData, bundle, "vd_all_audio_show_p", 9324L);
    }

    public final void V2(List list) {
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            audioItemAdapter.setNewData(list);
        }
    }

    public void W2(boolean z) {
        if (this.s == 36 && Build.VERSION.SDK_INT > 29) {
            BaseActivity baseActivity = this.mActivity;
            final ViewGroup viewGroup = baseActivity != null ? (ViewGroup) baseActivity.getWindow().getDecorView().findViewById(android.R.id.content) : null;
            this.mActivity.getWindow().getDecorView().setOnApplyWindowInsetsListener(z ? new View.OnApplyWindowInsetsListener() {
                @Override
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return this.a.Q2(viewGroup, view, windowInsets);
                }
            } : null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void X2() {
        if (this.M) {
            return;
        }
        if (this.s == 21) {
            boolean z = !this.q.isEmpty();
            if (!Objects.equals((Boolean) LiveEventBus.b().d("have_audio").getValue(), Boolean.valueOf(z))) {
                LiveEventBus.b().d("have_audio").postValue(Boolean.valueOf(z));
            }
        }
        if (MusicPlayManager.S().a0() == null) {
            String strL = MMKV.p().l("music_playing");
            if (!TextUtils.isEmpty(strL)) {
                this.u.U((AudioItem) fi1.b(strL, AudioItem.class));
            }
        } else {
            this.u.U(MusicPlayManager.S().a0());
        }
        try {
            final ArrayList arrayList = this.q;
            x1(new Runnable() {
                @Override
                public final void run() {
                    this.b.T2(arrayList);
                }
            });
            vdb.g("AudiosFragment", "loadDataUpdateView setNewData " + this.q.size());
        } catch (Exception e2) {
            vdb.g("AudiosFragment", "setData error " + e2.getMessage());
            Log.e("AudiosFragment", "loadDataUpdateView setData error " + e2.getMessage());
        }
        A1();
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            Z2();
        }
        H0();
        p3();
        m3();
        h27.c().e(1143, new Object[0]);
    }

    public final void Z2() {
        if (this.s == 21) {
            iia.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.U2();
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0075  */
    public final ArrayList c3() {
        boolean z;
        LogUtils.i("AudiosFragment", "queryAudioData " + this.s);
        vdb.g("AudiosFragment", "loadData queryAudioData " + this.s);
        int i = this.s;
        if (i == 21) {
            Pair pairX = ao.U().x(this.z);
            this.N = Long.valueOf(((Integer) pairX.getFirst()).intValue());
            return new ArrayList((Collection) pairX.getSecond());
        }
        if (i == 36) {
            if (pp3.y) {
                z = MMKV.p().e("music_video", true);
            }
            return new ArrayList(ao.U().Q(this.z, z));
        }
        if (i == 24) {
            return new ArrayList(ao.U().b(this.z));
        }
        if (i == 22) {
            ao aoVarU = ao.U();
            MediaBucket mediaBucket = this.w0;
            Pair pairK = aoVarU.K(mediaBucket.bucketId, mediaBucket.parentPath, this.z, true);
            this.N = Long.valueOf(((Integer) pairK.getFirst()).intValue());
            return new ArrayList((Collection) pairK.getSecond());
        }
        if (i == 25) {
            return new ArrayList(ao.U().I(this.w0.parentName, this.z));
        }
        if (i == 26) {
            return new ArrayList(ao.U().J(this.w0.parentName, this.z));
        }
        vmb.i("AudiosFragment", "queryAudioData unsupported flag:" + this.s);
        return new ArrayList();
    }

    public void d3(List list) {
        if (list == null) {
            return;
        }
        this.q.clear();
        this.q.addAll(list);
        if (this.s == 21) {
            h27.c().e(1180, Boolean.valueOf(!this.q.isEmpty()));
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i == 1024) {
            if (objArr.length == 2) {
                showSortPopupWindow((View) objArr[0], false, ((Boolean) objArr[1]).booleanValue());
                return;
            } else {
                showSortPopupWindow((View) objArr[0], false);
                return;
            }
        }
        if (i == 1055) {
            x1(new Runnable() {
                @Override
                public final void run() {
                    this.b.K2();
                }
            });
            return;
        }
        if (i == 1070) {
            AudioItemAdapter audioItemAdapter = this.u;
            if (audioItemAdapter != null) {
                audioItemAdapter.T(null);
                w1();
                return;
            }
            return;
        }
        if (i == 1077) {
            if (System.currentTimeMillis() - af9.f < 1000) {
                return;
            }
            af9.f = System.currentTimeMillis();
            uy5.l("audio");
            if (bg5.g(this.mActivity)) {
                bg5.d(this.mActivity);
            }
            g3("file_operate_menu_tag", (AudioItem) objArr[0]);
            return;
        }
        if (i == 1089) {
            if (this.u != null) {
                this.u.T(MusicPlayManager.S().P());
                w1();
                return;
            }
            return;
        }
        if (i == 1109) {
            if (this.P) {
                return;
            }
            postDelayLoadData();
        } else {
            if (i != 1142) {
                if (i == 1153 || i == 1187) {
                    loadData(false);
                    return;
                }
                return;
            }
            if (objArr.length > 0) {
                boolean zBooleanValue = ((Boolean) objArr[0]).booleanValue();
                if (!zBooleanValue) {
                    loadData(false);
                }
                if (this.M != zBooleanValue) {
                    startDragMode(zBooleanValue, this.s, false);
                }
            }
        }
    }

    public void e3() {
        if (this.s != 21) {
            return;
        }
        this.R0 = xdc.a();
        LogUtils.l("AudiosFragment", "setHeaderView audioBanner:" + this.R0);
        if (this.R0 != null) {
            this.u.setHeaderAndEmpty(true);
            if (this.Q0 == null) {
                AdBannerView adBannerView = (AdBannerView) LayoutInflater.from(getContext()).inflate(R.layout.ad_view_layout, (ViewGroup) this.H, false);
                this.Q0 = adBannerView;
                adBannerView.setAdBannerClick(new AdBannerView.AdBannerClick() {
                    @Override
                    public void closeAdBanner() {
                        LogUtils.v("AudiosFragment", "closeAdBanner audioBanner:" + AudiosFragment.this.R0);
                        AudiosFragment.this.H.post(new Runnable() {
                            @Override
                            public void run() {
                                try {
                                    AudiosFragment audiosFragment = AudiosFragment.this;
                                    audiosFragment.u.removeHeaderView(audiosFragment.Q0);
                                } catch (Exception e2) {
                                    LogUtils.l("AudiosFragment", "closeAdBanner audioBanner:" + e2.getMessage());
                                }
                            }
                        });
                        AudiosFragment.this.u.setHeaderAndEmpty(false);
                        AudiosFragment.this.Q0.setAdBannerClick(null);
                        if (AudiosFragment.this.R0.isLocalAd) {
                            mn5.a().m(false);
                        }
                        a9.b("", AudiosFragment.this.R0.getId(), "vd_ad_adbanner_close_cl");
                    }

                    @Override
                    public void jumpLink() {
                        a9.b(AudiosFragment.this.R0.getJumpLink(), AudiosFragment.this.R0.getId(), "vd_ad_adbanner_cl");
                    }
                });
                this.Q0.showAd(this.R0);
                Y2();
            }
            LogUtils.i("AudiosFragment", "setHeaderView " + this.Q0);
            this.u.setHeaderView(this.Q0);
        }
    }

    @Override
    public void editMode(boolean z) {
        super.editMode(z);
        if7 if7Var = this.v;
        if (if7Var != null) {
            if (z) {
                if7Var.setIntervalTime(150);
            } else {
                if7Var.setIntervalTime(1000);
                this.v.resetClickTime();
            }
        }
        if (z) {
            if (this.s != 21) {
                setDragAnimationView(this.G0);
            }
            T1(this.o);
        } else {
            Z1();
        }
        View view = this.F0;
        if (view != null) {
            view.setEnabled(!z);
            this.F0.setAlpha(z ? 0.4f : 1.0f);
        }
        o3(z);
        int i = this.s;
        if (i == 21 || i == 24) {
            return;
        }
        setShuffleBtnVisible(!z, "audio");
    }

    public final void f3(int i) {
        if (this.H.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.H.getLayoutParams();
            marginLayoutParams.topMargin = com.transsion.utils.a.d(this.mContext, i);
            this.H.setLayoutParams(marginLayoutParams);
        }
    }

    public final void g3(String str, AudioItem audioItem) {
        h3(str, audioItem, this.q.indexOf(audioItem));
    }

    @Override
    public int getActivityMenuSwitchFlag() {
        return 1;
    }

    @Override
    public int getDefaultListFlag() {
        return 21;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void h3(String str, AudioItem audioItem, int i) {
        Intent intent = new Intent();
        intent.putExtra("data", audioItem);
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
        vg9.e((ArrayList) this.D.d().getValue());
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, true);
        intent.setClass(this.mActivity, AudioSheetDialogActivity.class);
        this.S.launch(intent);
        FileOperateUtils fileOperateUtils = new FileOperateUtils(getContext(), audioItem, this.s);
        this.mFileOperateUtils = fileOperateUtils;
        fileOperateUtils.e0(true);
        this.mFileOperateUtils.f0(new d(audioItem, i));
    }

    @Override
    public void handleManual(boolean z) {
        super.handleManual(z);
        if (z) {
            p06.B(this.s, Boolean.FALSE);
        }
    }

    public final void i3() {
        View view = this.K0;
        if (view != null) {
            int i = 8;
            view.setVisibility((this.s != 24 || this.q.isEmpty()) ? 8 : 0);
            boolean zC = w6c.c(this.mContext, "show_audio_sort_point", true);
            ImageView imageView = this.L0;
            if (zC && !ydc.e() && this.K0.getVisibility() == 0) {
                i = 0;
            }
            imageView.setVisibility(i);
        }
    }

    @Override
    public void inflateOperationBar() {
        if (this.y != null) {
            return;
        }
        View view = this.o;
        if (view == null) {
            LogUtils.O("AudiosFragment", "inflateOperationBar mFragmentView == null");
            return;
        }
        ViewStub viewStub = (ViewStub) view.findViewById(R.id.bottom_audio_action_bar);
        if (viewStub == null) {
            LogUtils.O("AudiosFragment", "inflateOperationBar bottom_audio_action_bar stub == null");
            return;
        }
        AudioAppFootActionBar audioAppFootActionBar = (AudioAppFootActionBar) viewStub.inflate();
        this.y = audioAppFootActionBar;
        audioAppFootActionBar.setOnFootOptBarClickListener(new e("AudiosFragment"));
        this.y.setListFlag(this.s);
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1024);
        this.mEvents.add(1054);
        this.mEvents.add(1055);
        this.mEvents.add(1089);
        this.mEvents.add(1070);
        this.mEvents.add(1077);
        this.mEvents.add(1155);
        this.mEvents.add(1109);
    }

    @Override
    public void initTitleBar(View view) {
        super.initTitleBar(view);
        int i = this.s;
        if (i == 21 || i == 24) {
            return;
        }
        this.mTitleBarLayout.setVisibility(0);
        this.mTitleTv.setText(this.z);
        if (this.s == 25) {
            initSortView(view, false, true);
        } else {
            initSortView(view, false);
        }
    }

    public final void j3(AudioItem audioItem, String str, boolean z) {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
        if (playAudioDataConvertToPlayAudioData == null) {
            LogUtils.m("AudiosFragment", "startOpenVideo: playAudioData is null");
            return;
        }
        playAudioDataConvertToPlayAudioData.listFlag = this.s;
        playAudioDataConvertToPlayAudioData.autoPlay = true;
        playAudioDataConvertToPlayAudioData.folderName = this.z;
        playAudioDataConvertToPlayAudioData.sourceAction = str;
        LogUtils.N("AudiosFragment", "sourceAction:" + playAudioDataConvertToPlayAudioData.sourceAction, "needForcePlay:" + z, "mListFlag:" + this.s, "mTitle:" + this.z, "audioItem:" + audioItem);
        if (this.s == 36 || z) {
            AudioPlayerActivity.D1(this.mActivity, playAudioDataConvertToPlayAudioData);
        } else {
            LiveEventBus.b().c("launch_audio_player_activity_from_audio_list", playAudioDataConvertToPlayAudioData);
        }
    }

    public final void k3(AudioItem audioItem, String str, boolean z, boolean z2) {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
        if (playAudioDataConvertToPlayAudioData == null) {
            LogUtils.m("AudiosFragment", "startOpenVideo: playAudioData is null");
            return;
        }
        playAudioDataConvertToPlayAudioData.listFlag = this.s;
        playAudioDataConvertToPlayAudioData.autoPlay = true;
        playAudioDataConvertToPlayAudioData.folderName = this.z;
        playAudioDataConvertToPlayAudioData.sourceAction = str;
        playAudioDataConvertToPlayAudioData.isShuffle = z2;
        LogUtils.N("AudiosFragment", "sourceAction:" + playAudioDataConvertToPlayAudioData.sourceAction, "needForcePlay:" + z, "mListFlag:" + this.s, "mTitle:" + this.z, "audioItem:" + audioItem);
        if (this.s == 36 || z) {
            AudioPlayerActivity.D1(this.mActivity, playAudioDataConvertToPlayAudioData);
        } else {
            LiveEventBus.b().c("launch_audio_player_activity_from_audio_list", playAudioDataConvertToPlayAudioData);
        }
    }

    public void l3(boolean z) {
        int iNextInt;
        int iD = w6c.d(getContext(), "audio_play_repeat_mode", 1);
        if (iD == 3) {
            try {
                iNextInt = new Random().nextInt(this.u.getData().size());
            } catch (Exception e2) {
                LogUtils.v("AudiosFragment", "startPlay exception:" + e2.getMessage());
                iNextInt = 0;
            }
        } else {
            iNextInt = 0;
        }
        AudioItem item = this.u.getItem(iNextInt);
        PlayAudioListData.getInstance().setPlayList((ArrayList) this.u.getData(), null);
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(item);
        if (z) {
            p06.d0("vd_miniplayer_none");
        }
        if (playAudioDataConvertToPlayAudioData != null) {
            playAudioDataConvertToPlayAudioData.listFlag = this.s;
            PlayAudioListData.getInstance().setSource(playAudioDataConvertToPlayAudioData, "");
            playAudioDataConvertToPlayAudioData.playListId = this.w0.bucketId;
            playAudioDataConvertToPlayAudioData.autoPlay = true;
            playAudioDataConvertToPlayAudioData.folderName = this.z;
            playAudioDataConvertToPlayAudioData.sourceAction = p06.y(this.s, ao.U().f0(item));
            MusicPlayManager.S().C(getApplicationContext());
            PlayAudioListData.getInstance().setRepeatMode(iD);
            MusicPlayManager.S().u1(item);
            MusicPlayManager.S().N0(playAudioDataConvertToPlayAudioData);
        }
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        t55.u(this.z);
        LogUtils.i("AudiosFragment", "AudiosFragment loadData ");
        vdb.g("AudiosFragment", "loadData start");
        super.loadData(z, z2);
        if (this.J0) {
            this.J0 = false;
            this.I0 = true;
        } else {
            gd1 gd1Var = this.N0;
            if (gd1Var != null) {
                gd1Var.d();
            }
            this.N0.b(mc7.K(this).i(this.mIsVisibleToUser ? 0L : 800L, TimeUnit.MILLISECONDS).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.R2((AudiosFragment) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.S2((List) obj);
                }
            }));
        }
    }

    public final void m3() {
        int i;
        if (this.M0 == null) {
            return;
        }
        if (this.q.isEmpty() || this.N.longValue() <= 0 || !((i = this.s) == 21 || i == 22)) {
            this.M0.setVisibility(8);
            return;
        }
        this.M0.setVisibility(0);
        this.M0.setText(this.mContext.getResources().getString(this.N.longValue() == 1 ? R.string.visha_look_filter_audio : R.string.visha_look_filter_audios, String.valueOf(this.N)));
        boolean globalVisibleRect = this.M0.getGlobalVisibleRect(new Rect());
        LogUtils.l("isVisible = " + globalVisibleRect);
        if (globalVisibleRect) {
            p06.a0("vd_audiolist_filt_show", hb0.KEY_NAME_NUM, String.valueOf(this.N));
        }
    }

    @Override
    public void markPointVisiable(boolean z) {
        super.markPointVisiable(z);
        if (this.s == 21) {
            if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
                Z2();
                p06.f0(null, "vd_all_audio_show", 932460000057L);
            }
            Y2();
        }
    }

    public final void n3(int i, int i2) {
        View viewFindViewById = this.o.findViewById(R.id.title_bar);
        if (viewFindViewById != null) {
            viewFindViewById.setPadding(i, 0, i2, 0);
        }
        VideoMainRecyclerView videoMainRecyclerView = this.H;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.setPadding(i, 0, i2, 0);
        }
    }

    public final void o3(boolean z) {
        View view = this.K0;
        if (view != null) {
            view.setEnabled(!z);
            this.K0.setAlpha(z ? 0.4f : 1.0f);
        }
    }

    @Override
    public void onClick(View view) {
        super.onClick(view);
        if (ingoreClickEvent()) {
            return;
        }
        if (view.getId() == R.id.add_play_list_tv && this.s == 21) {
            hb0.markDirect("vd_all_audio_gd_cl");
            h27.c().e(1059, new Object[0]);
        }
        if (view.getId() == R.id.text_filtered_audios || view.getId() == R.id.tv_audio_filtered_audios) {
            f5.c(new Intent(this.mActivity, (Class<?>) FilterResultActivity.class), this.mActivity);
            p06.j0("vd_audiolist_filt_cl");
        }
        if (view.getId() == R.id.iv_play_shuffle) {
            startShufflePlay();
        }
        this.mFirstClickTime = System.currentTimeMillis();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        MediaBucket mediaBucket = new MediaBucket();
        this.w0 = mediaBucket;
        boolean z = true;
        this.J = true;
        this.s = 21;
        if (arguments != null) {
            mediaBucket.setBucketId(arguments.getLong("bucket_fragment_buicket_id"));
            this.w0.setParentPath(arguments.getString("bucket_fragment_buicket_path"));
            String string = arguments.getString("bucket_fragment_buicket_name");
            this.z = string;
            this.w0.setParentName(string);
            this.s = arguments.getInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG);
        }
        if (this.s == 36) {
            this.z = getResources().getString(R.string.audio_filter_view_title);
        }
        int i = this.s;
        if (i != 21 && i != 22 && i != 24) {
            z = false;
        }
        this.z0 = z;
        LogUtils.i("AudiosFragment", "mListFlag:" + this.s + StringUtils.COMMA + this);
        F2();
        h27.c().b(this, 1142);
        h27.c().b(this, 1153);
        h27.c().b(this, 1187);
        registerBottomBarVisibleChanged();
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
        LocalBroadcastManager.getInstance(getApplicationContext()).unregisterReceiver(this.D0);
        h27.c().f(this, 1142);
        h27.c().f(this, 1153);
        h27.c().f(this, 1187);
        if (this.L && this.M) {
            h27.c().e(1142, Boolean.FALSE, 36);
        }
    }

    @Override
    public void onDestroyView() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        this.N0.d();
        super.onDestroyView();
        W2(false);
        if (!this.z0 || (customSwipeRefreshLayout = this.mPullDampingLayout) == null) {
            return;
        }
        customSwipeRefreshLayout.setOnChildScrollUpCallback(null);
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        a2();
    }

    @Override
    public int onLayoutId() {
        return this.z0 ? R.layout.audios_fragment_pull_damping : R.layout.audios_fragment;
    }

    @Override
    public void onPause() {
        super.onPause();
        LogUtils.i("AudiosFragment", "onPause:" + this.s);
        this.m = false;
        sq3.a().c(this);
        MusicPlayManager.S().E1(this);
        if (this.s != 25 || Build.VERSION.SDK_INT <= 29) {
            return;
        }
        SortUtil.q(this.O0);
        SortUtil.p(this.P0);
    }

    @Override
    public void onPlayItemChanged(AudioItem audioItem) {
        if (audioItem != null) {
            LogUtils.i("AudiosFragment", "onPlayItemChanged:  mediaItem = " + audioItem.toString());
            this.u.T(audioItem);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        LogUtils.i("AudiosFragment", "onResume:" + this.s);
        if (R0()) {
            u1();
        } else {
            if (!this.P) {
                postDelayLoadData();
            }
            this.P = false;
            sq3.a().b(this);
        }
        if (this.s == 25 && Build.VERSION.SDK_INT > 29) {
            boolean zC = w6c.c(getActivity(), "audio_pref_sort_by_album", false);
            int iD = w6c.d(getActivity(), "audio_pref_sort_name_album", SortUtil.SortType.NUMBER.getValue());
            this.O0 = SortUtil.c().getValue();
            this.P0 = SortUtil.m();
            SortUtil.q(iD);
            SortUtil.p(zC);
        }
        if (this.mDataUpdated) {
            updateShowUI();
        }
        MusicPlayManager.S().e1(this);
    }

    @Override
    public void onSelectInViewPage() {
        super.onSelectInViewPage();
        if (this.s == 24) {
            s06.d();
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        LogUtils.i("AudiosFragment", "onStop:" + this.s);
    }

    @Override
    public void onUnSelectInViewPage() {
        super.onUnSelectInViewPage();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AudioItemAdapter audioItemAdapter = new AudioItemAdapter(this.mContext);
        this.u = audioItemAdapter;
        audioItemAdapter.R(this.s);
        initTitleBar(view);
        this.G0 = (ConstraintLayout) view.findViewById(R.id.cl_drag_animation_view);
        this.H = (VideoMainRecyclerView) view.findViewById(R.id.rv_main_fragment);
        if (this.s == 21) {
            f3(com.transsion.utils.a.d(this.mContext, 2.0f));
        }
        int i = this.s;
        if (i == 21 || i == 24) {
            this.H.addOnItemTouchListener(this.mSimpleOnItemTouchListener);
        }
        this.H.addOnScrollListener(new b());
        this.I = (RecyclerViewFastScroller) view.findViewById(R.id.rv_fast_scroller);
        this.H.setLayoutManager(new CustomLinearLayoutManager(this.mContext));
        G2();
        this.H.getRecycledViewPool().setMaxRecycledViews(0, 20);
        this.H.setAdapter(this.u);
        this.u.bindToRecyclerView(this.H);
        VideoMainRecyclerView videoMainRecyclerView = this.H;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.setType("audio");
        }
        OptimizeListAdapter.h().e(this.H, R.layout.rv_item_search_audio_list_v2, 5);
        RoundImageView roundImageView = (RoundImageView) view.findViewById(R.id.iv_play_shuffle);
        this.mIvShufflePlayBtn = roundImageView;
        if (roundImageView != null) {
            roundImageView.setVisibility(8);
            this.mIvShufflePlayBtn.setOnClickListener(this);
        }
        this.H.setRecyclerItemAnimator(true);
        H2(view);
        int i2 = this.s;
        if (i2 == 21 || i2 == 24) {
            setRvOverScrollDecorListener(this.H);
        }
        I2(view);
        E2();
        e3();
        W2(true);
        D2();
        super.onViewCreatedEnd(view, bundle);
        N1();
    }

    @Override
    public void onVisibleChanged(boolean z) {
        super.onVisibleChanged(z);
    }

    public final void p3() {
        if (this.w != null) {
            int size = this.q.size();
            this.w.setText(r44.a(size));
            View view = this.F0;
            int i = this.s;
            view.setVisibility((i == 36 || i == 21 || this.q.isEmpty()) ? 8 : 0);
            h27.c().e(1025, Boolean.valueOf(size > 0));
        }
        i3();
    }

    @Override
    public void refresh() {
        LogUtils.i("AudiosFragment", "refresh " + this.s);
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
    public void showSortPopupWindow(View view, boolean z, boolean z2, boolean z3) {
        if (this.m) {
            super.showSortPopupWindow(view, z, z2, z3);
        }
    }

    @Override
    public void startShufflePlay() {
        AudioItemAdapter audioItemAdapter;
        if (!this.m || (audioItemAdapter = this.u) == null || audioItemAdapter.getData().size() <= 0) {
            return;
        }
        int iNextInt = new Random().nextInt(this.u.getData().size());
        AudioItem audioItem = this.u.getData().get(iNextInt);
        audioItem.setSelectedPos(iNextInt);
        this.u.T(audioItem);
        t06.a("audio");
        k3(audioItem, "", false, true);
    }

    @Override
    public void t(boolean z) {
        if (z) {
            return;
        }
        final List listU = SortUtil.u(this.u.getData());
        x1(new Runnable() {
            @Override
            public final void run() {
                this.b.V2(listU);
            }
        });
        p06.B(this.s, Boolean.FALSE);
    }

    @Override
    public void updateShowUI() {
        super.updateShowUI();
        X2();
    }

    @Override
    public void updateUiForDataChanged() {
        if (Q0() || this.s == 36) {
            this.mbFragmentShowCompleted = true;
        }
        super.updateUiForDataChanged();
    }

    @Override
    public void y1(BaseQuickAdapter baseQuickAdapter, View view, int i, boolean z) {
        if (baseQuickAdapter.getData().size() <= i) {
            return;
        }
        AudioItem audioItem = (AudioItem) baseQuickAdapter.getData().get(i);
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox);
        if (checkBox != null) {
            AudioItemAdapter audioItemAdapter = this.u;
            boolean zIsChecked = checkBox.isChecked();
            if (!z) {
                zIsChecked = !zIsChecked;
            }
            audioItemAdapter.P(audioItem, zIsChecked, i);
        }
        a2();
    }
}
