package com.transsion.audio.fragments;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p003activity.result.ActivityResult;
import androidx.p003activity.result.ActivityResultCallback;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p003activity.result.contract.ActivityResultContracts;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioSheetDialogActivity;
import com.transsion.audio.adapter.AudioItemAdapter;
import com.transsion.audio.fragments.AudioBaseFragment;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.widgets.AudioAppFootActionBar;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.playercommon.widgets.AppFootActionBar;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import com.transsion.widgetslib.widget.FootOperationBar;
import defpackage.ao;
import defpackage.br;
import defpackage.chc;
import defpackage.h27;
import defpackage.hb0;
import defpackage.if7;
import defpackage.k29;
import defpackage.kz5;
import defpackage.mc7;
import defpackage.p06;
import defpackage.p10;
import defpackage.pp3;
import defpackage.raa;
import defpackage.ry5;
import defpackage.sq3;
import defpackage.t74;
import defpackage.uq3;
import defpackage.vb;
import defpackage.vg9;
import defpackage.w6c;
import defpackage.ydc;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class AudioBaseFragment extends PlayBaseFragment implements sq3.a, MusicPlayManager.c, AudioItemAdapter.c, FootOperationBar.n {
    public int A;
    public PlayListModel D;
    public boolean E;
    public boolean F;
    public VideoMainRecyclerView H;
    public RecyclerViewFastScroller I;
    public boolean J;
    public MainViewModel K;
    public AudioItem O;
    public a Q;
    public View l;
    public boolean m;
    public boolean n;
    public View o;
    public TextView p;
    public boolean t;
    public AudioItemAdapter u;
    public if7 v;
    public TextView w;
    public int x;
    public AudioAppFootActionBar y;
    public String z;
    public ArrayList q = new ArrayList();
    public boolean r = false;
    public int s = 0;
    public ArrayList B = new ArrayList();
    public ArrayList C = new ArrayList();
    public boolean G = false;
    public boolean L = false;
    public boolean M = false;
    public Long N = 0L;
    public boolean P = false;
    public AppBarLayout.OnOffsetChangedListener R = new AppBarLayout.OnOffsetChangedListener() {
        @Override
        public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            this.b.c1(appBarLayout, i);
        }
    };
    public ActivityResultLauncher S = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() {
        @Override
        public final void onActivityResult(Object obj) {
            this.a.d1((ActivityResult) obj);
        }
    });
    public final Observer T = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.e1((Boolean) obj);
        }
    };
    public final Observer U = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.f1((Boolean) obj);
        }
    };

    public static class a extends chc {
        public a(AudioBaseFragment audioBaseFragment) {
            super(audioBaseFragment);
        }

        @Override
        public void b(AudioBaseFragment audioBaseFragment, boolean z) {
            if (!audioBaseFragment.m) {
                audioBaseFragment.F = true;
            } else {
                audioBaseFragment.F = false;
                audioBaseFragment.postDelayLoadDataChange();
            }
        }
    }

    public static boolean Z0(String str) {
        return (str == null || str.isEmpty()) ? false : true;
    }

    private void hideLoadingView() {
    }

    public static Integer j1(MediaItem mediaItem) {
        return Integer.valueOf(mediaItem.id);
    }

    public static void n1(boolean z, Throwable th) {
        Log.e("AudioBaseFragment", "onRenameSuccess exception");
        if (z) {
            uq3.b(false);
        }
    }

    public void A1() {
        ImageView imageView;
        StringBuilder sb = new StringBuilder();
        sb.append("setEmptyView ");
        sb.append(this.s == 32);
        Log.d("AudioBaseFragment", sb.toString());
        boolean zIsEmpty = this.q.isEmpty();
        if (zIsEmpty) {
            N0();
        }
        View view = this.l;
        if (view != null) {
            view.setVisibility(zIsEmpty ? 0 : 8);
        }
        View view2 = this.mSortIv;
        if (view2 != null && !this.isInEditMode && !this.M) {
            view2.setEnabled(!zIsEmpty);
            this.mSortIv.setVisibility(zIsEmpty ? 8 : 0);
            if (this.mSortIv.getVisibility() == 8 && (imageView = this.mAudioSortPoint) != null) {
                imageView.setVisibility(8);
            }
        }
        TextView textView = this.w;
        if (textView != null && !this.isInEditMode && !this.M) {
            textView.setVisibility(zIsEmpty ? 8 : 0);
        }
        if (zIsEmpty && this.M) {
            startDragMode(false, this.s, false);
        }
        hideLoadingView();
    }

    public final void B1() {
    }

    public void C1(int i) {
        AudioItemAdapter audioItemAdapter;
        this.x = i;
        if (this.mTitleTv != null && getContext() != null) {
            if (i == 0) {
                this.mTitleTv.setText(getContext().getString(R.string.none_select));
            } else {
                this.mTitleTv.setText(getContext().getString(i > 1 ? R.string.items : R.string.item, Integer.valueOf(i)));
            }
        }
        CheckBox checkBox = this.mAllCheckBox;
        if (checkBox != null) {
            checkBox.setChecked(i != 0 && i == this.q.size());
        }
        E1();
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar == null || (audioItemAdapter = this.u) == null) {
            return;
        }
        dVar.b(audioItemAdapter.G(), i != 0 && i == this.q.size(), this.G);
        if (this.x == 0 || this.G) {
            return;
        }
        this.u.H();
    }

    public void D1() {
        View view = this.l;
        if (view != null) {
            view.setPadding(0, 0, 0, this.mActivity.isInMultiWindowMode() ? this.mEmptyPaddingBottomInMulti : this.mEmptyPaddingBottom);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void E0() {
        if (this.J) {
            MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
            this.K = mainViewModel;
            mainViewModel.g.observe(getViewLifecycleOwner(), this.T);
            this.K.c.observe(getViewLifecycleOwner(), this.U);
            r1(((Boolean) this.K.g.getValue()).booleanValue());
        }
    }

    public final void E1() {
        AudioAppFootActionBar audioAppFootActionBar = this.y;
        if (audioAppFootActionBar != null) {
            audioAppFootActionBar.setAllEnable((this.x == 0 || this.G) ? false : true);
        }
    }

    public void F0(AudioItem audioItem, String str, String str2) {
    }

    public void G0(List list) {
        this.B = this.u.G();
        if (list == null || this.A == list.size() || this.B.size() == list.size() || this.B.size() == 0) {
            return;
        }
        this.A = this.q.size();
        this.x = 0;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AudioItem audioItem = (AudioItem) it.next();
            if (this.B.contains(audioItem)) {
                this.x++;
                arrayList.add(audioItem);
            }
        }
        this.u.V(arrayList);
        Log.d("AudioBaseFragment", "checkSelectCount " + this.A + StringUtils.COMMA + this.x + ":::::" + arrayList.size());
    }

    public void H0() {
        if (this.isInEditMode || this.E) {
            if (!this.mAllCheckBox.isChecked()) {
                C1(this.x);
                return;
            }
            AudioItemAdapter audioItemAdapter = this.u;
            if (audioItemAdapter != null) {
                audioItemAdapter.O(true);
            }
        }
    }

    public void I0(AudioItem audioItem, FileOperateItem fileOperateItem) {
        FileOperateUtils fileOperateUtils = this.mFileOperateUtils;
        if (fileOperateUtils != null) {
            fileOperateUtils.X(fileOperateItem, "audio", false);
        }
    }

    public void J0(AudioItem audioItem, FileOperateItem fileOperateItem) {
        FileOperateUtils fileOperateUtils = this.mFileOperateUtils;
        if (fileOperateUtils != null) {
            fileOperateUtils.X(fileOperateItem, "audio", false);
        }
    }

    public void K0(final boolean z) {
        LogUtils.j("AudioBaseFragment", "dragMode enter = " + z);
        h27.c().e(1142, Boolean.valueOf(z), Integer.valueOf(this.s));
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            audioItemAdapter.S(z);
            w1();
        }
        TextView textView = this.w;
        if (textView != null) {
            textView.setEnabled(!z);
        }
        View view = this.mSortIv;
        if (view != null) {
            view.setVisibility(!z ? 0 : 8);
        }
        if (this.mBackIv != null) {
            updateBackIcon(z);
            this.mBackIv.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.S0(z, view2);
                }
            });
        }
        TextView textView2 = this.mTitleTv;
        if (textView2 == null || z) {
            return;
        }
        textView2.setText(this.z);
    }

    public void L0() {
        ArrayList arrayList;
        RecyclerView.Adapter adapter;
        if (this.H == null || (arrayList = this.q) == null || arrayList.isEmpty() || (adapter = this.H.getAdapter()) == null) {
            return;
        }
        boolean z = false;
        boolean z2 = adapter.getItemCount() == 0;
        if (adapter.getItemCount() > 0 && this.H.getChildCount() == 0 && this.H.getHeight() > 0) {
            z = true;
        }
        if (z2) {
            updateShowUI();
        } else if (z) {
            x1(new Runnable() {
                @Override
                public final void run() {
                    this.b.X0();
                }
            });
        }
    }

    public void M0(boolean z) {
        String str;
        String str2;
        ArrayList<MediaItem> arrayListG = this.u.G();
        if (arrayListG == null || arrayListG.isEmpty()) {
            return;
        }
        Set set = (Set) arrayListG.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((MediaItem) obj).data;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AudioBaseFragment.Z0((String) obj);
            }
        }).collect(Collectors.toSet());
        if (set.size() < arrayListG.size()) {
            for (MediaItem mediaItem : arrayListG) {
                if (mediaItem != null && ((str = mediaItem.data) == null || str.isEmpty())) {
                    AudioItem audioItemF = ao.U().F(mediaItem.id);
                    if (audioItemF != null && (str2 = audioItemF.data) != null && !str2.isEmpty()) {
                        set.add(audioItemF.data);
                    }
                }
            }
        }
        if (set.isEmpty()) {
            return;
        }
        if (z) {
            AudioFilterUtils.i(set);
            hb0.markDirect("vd_mul_cancel_filt_cl");
        } else {
            AudioFilterUtils.k(set);
            hb0.markDirect("vd_mul_filt_cl");
        }
        editMode(false);
        h27.c().e(1109, new Object[0]);
    }

    public void N0() {
        View view;
        if (this.l == null && (view = this.o) != null) {
            this.l = ((ViewStub) view.findViewById(R.id.main_empty_view)).inflate();
            if (raa.i(this.mContext)) {
                this.l.setContentDescription(getString(this.s == 32 ? R.string.no_history : R.string.file_empty));
            }
            TextView textView = (TextView) this.l.findViewById(R.id.add_play_list_tv);
            textView.setOnClickListener(this);
            int i = this.s;
            if (i == 28 || i == 31) {
                textView.setVisibility(8);
            } else if ((i == 21 || i == 30 || i == 41 || i == 33) && !this.t) {
                textView.setVisibility(0);
                int i2 = this.s;
                textView.setText((i2 == 21 || i2 == 41) ? R.string.go_download : R.string.add_to_playlist);
                int i3 = this.s;
                if (i3 == 21 || i3 == 41) {
                    hb0.markDirect("vd_all_audio_gd_show");
                }
                if (this.s == 41) {
                    TextView textView2 = (TextView) this.l.findViewById(R.id.text_no_audios);
                    this.p = textView2;
                    textView2.setText(R.string.no_recently_add_audio);
                }
            } else if (i == 32) {
                TextView textView3 = (TextView) this.l.findViewById(R.id.text_no_audios);
                this.p = textView3;
                textView3.setText(R.string.no_history);
            }
            D1();
        }
        if (this.l == null || this.s == 98) {
            return;
        }
        q1();
    }

    public void O0(View view, RecyclerView recyclerView) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout = (CustomSwipeRefreshLayout) view.findViewById(R.id.pull_damping_layout);
        this.mPullDampingLayout = customSwipeRefreshLayout;
        if (customSwipeRefreshLayout == null) {
            return;
        }
        customSwipeRefreshLayout.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
            @Override
            public final void onRefresh() {
                this.a.b1();
            }
        });
        initOverScrollDecor(recyclerView);
    }

    public boolean P0() {
        return this.q.isEmpty();
    }

    public boolean Q0() {
        int i = this.s;
        return i == 24 || i == 53 || i == 32 || i == 21;
    }

    public boolean R0() {
        if (this.q.isEmpty() || !this.r) {
            this.r = false;
            return false;
        }
        this.r = false;
        return true;
    }

    public final void S0(boolean z, View view) {
        if (z) {
            startDragMode(false, this.s, false);
        } else {
            this.mActivity.onBackPressed();
        }
    }

    public final void T0(boolean z, View view) {
        if (z) {
            editMode(false);
        } else {
            this.mActivity.onBackPressed();
        }
    }

    public final void U0() {
        MainViewModel mainViewModel;
        if (!isAdded() || (mainViewModel = this.K) == null) {
            return;
        }
        r1(Boolean.TRUE.equals(mainViewModel.g.getValue()));
    }

    public final void V0() {
        AudioAppFootActionBar audioAppFootActionBar = this.y;
        if (audioAppFootActionBar != null) {
            applyEditFootBarBottomInset(audioAppFootActionBar);
            this.y.openFootOperationBar();
        }
    }

    public final void W0(View view) {
        this.u.O(this.mAllCheckBox.isChecked());
    }

    public final void X0() {
        VideoMainRecyclerView videoMainRecyclerView = this.H;
        RecyclerView.Adapter adapter = videoMainRecyclerView != null ? videoMainRecyclerView.getAdapter() : null;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
            this.H.requestLayout();
        }
    }

    public final void a1() {
        this.mPullDampingLayout.setRefreshing(false);
    }

    @Override
    public void b(int i) {
        C1(i);
    }

    public final void b1() {
        Log.d("AudioBaseFragment", "onRefresh " + this.s);
        this.mContext.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
        this.mPullDampingLayout.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.a1();
            }
        }, 1000L);
    }

    @Override
    public void c(boolean z) {
        C1(z ? this.q.size() : 0);
    }

    public final void c1(AppBarLayout appBarLayout, int i) {
        isAppBarLayoutExpand(i, appBarLayout.getTotalScrollRange());
    }

    public final void d1(ActivityResult activityResult) {
        Intent data;
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        int intExtra = data.getIntExtra(SheetDialogParamsConstant.OUT_PARAM_ITEM_CLICK_DATA, 0);
        AudioItem audioItem = (AudioItem) data.getParcelableExtra(SheetDialogParamsConstant.OUT_PARAM_DATA);
        FileOperateItem fileOperateItem = new FileOperateItem(R.drawable.ic_delete, R.string.delete, intExtra);
        if (intExtra == 8) {
            ry5.f(this.s, "vd_vmore_playnext_cl");
            br.c(audioItem);
            return;
        }
        if (intExtra == 9) {
            ry5.f(this.s, "vd_vmore_playlater_cl");
            if (MusicPlayManager.S().a0() != null && audioItem.data.equals(MusicPlayManager.S().a0().data)) {
                MusicPlayManager.S().X0();
            }
            ToastUtils.s(R.string.audio_added_current_playlist);
            if (PlayAudioListData.getInstance().getPlayList() == null || PlayAudioListData.getInstance().getPlayList().size() == 0) {
                MusicPlayManager.S().Y().setPlayMediaItem(audioItem).selectedPlayMediaItem();
                MusicPlayManager.S().P0(audioItem, false);
                h27.c().e(1083, new Object[0]);
            }
            PlayAudioListData.getInstance().later(audioItem);
            LiveEventBus.b().c("change_minibar_state", Boolean.TRUE);
            return;
        }
        if (intExtra == 5) {
            J0(audioItem, fileOperateItem);
            if (audioItem != null) {
                kz5.f("vd_vmore_del_cl", audioItem.isMusicVideo);
                return;
            } else {
                kz5.g("vd_vmore_del_cl", false);
                return;
            }
        }
        if (intExtra == 12) {
            I0(audioItem, fileOperateItem);
            if (audioItem != null) {
                kz5.f("vd_vmore_del_cl", audioItem.isMusicVideo);
                return;
            } else {
                kz5.g("vd_vmore_del_cl", false);
                return;
            }
        }
        if (intExtra == 1003) {
            FileOperateUtils fileOperateUtils = this.mFileOperateUtils;
            if (fileOperateUtils != null) {
                fileOperateUtils.X(fileOperateItem, "audio", true);
                return;
            }
            return;
        }
        if (pp3.E && intExtra == 2) {
            String stringExtra = data.getStringExtra(SheetDialogParamsConstant.OUT_PARAM_RENAME_DATA);
            FileOperateUtils fileOperateUtils2 = this.mFileOperateUtils;
            if (fileOperateUtils2 != null) {
                fileOperateUtils2.b0(stringExtra);
                return;
            }
            return;
        }
        if (intExtra == 15) {
            p10.a();
            return;
        }
        if (intExtra == 13) {
            postDelayLoadData();
            return;
        }
        if (intExtra == 16) {
            this.P = true;
            return;
        }
        FileOperateUtils fileOperateUtils3 = this.mFileOperateUtils;
        if (fileOperateUtils3 != null) {
            fileOperateUtils3.X(fileOperateItem, "audio", false);
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i == 1054) {
            AudioItemAdapter audioItemAdapter = this.u;
            if (audioItemAdapter != null) {
                audioItemAdapter.notifyItemChanged(((Integer) objArr[0]).intValue());
                HashMap map = new HashMap();
                map.put("from", Integer.valueOf(this.s));
                map.put("type", "audio");
                map.put("status", Integer.valueOf(1 ^ (((Boolean) objArr[1]).booleanValue() ? 1 : 0)));
                p06.b0("vd_vmore_favorite_cl", map);
                return;
            }
            return;
        }
        if (i == 1070) {
            AudioItemAdapter audioItemAdapter2 = this.u;
            if (audioItemAdapter2 != null) {
                audioItemAdapter2.T(null);
                w1();
                return;
            }
            return;
        }
        if (i == 1170 && objArr.length > 0) {
            Object obj = objArr[0];
            if (obj instanceof AudioItem) {
                this.O = (AudioItem) obj;
            }
        }
    }

    public final void e1(Boolean bool) {
        r1(bool.booleanValue());
    }

    @Override
    public void editMode(final boolean z) {
        MainViewModel mainViewModel;
        if (z) {
            setMainViewModelEditFrom(this.s);
        }
        super.editMode(z);
        this.isInEditMode = z;
        int i = this.s;
        if (i != 21 && i != 24 && i != 53 && i != 32 && i != 31) {
            if (this.o != null) {
                inflateOperationBar();
            }
            AudioAppFootActionBar audioAppFootActionBar = this.y;
            if (audioAppFootActionBar != null) {
                if (z) {
                    applyEditFootBarBottomInset(audioAppFootActionBar);
                }
                this.y.initShow(z);
                if (z) {
                    this.y.postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.V0();
                        }
                    }, 150L);
                } else {
                    this.y.closeFootOperationBar();
                }
            }
        }
        setMainViewModelEditMode(z);
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            if (z) {
                audioItemAdapter.O(false);
            }
            this.u.Q(z);
            w1();
        }
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null && z) {
            dVar.d(true, this.s, false);
        }
        TextView textView = this.w;
        if (textView != null) {
            textView.setEnabled(!z);
        }
        CheckBox checkBox = this.mAllCheckBox;
        if (checkBox != null) {
            checkBox.setChecked(false);
            this.mAllCheckBox.setVisibility(z ? 0 : 8);
            this.mAllCheckBox.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.W0(view);
                }
            });
        }
        View view = this.mSortIv;
        if (view != null) {
            view.setVisibility(!z ? 0 : 8);
        }
        if (this.mAudioSortPoint != null) {
            this.mAudioSortPoint.setVisibility((!w6c.c(this.mContext, "show_audio_sort_point", true) || ydc.e() || z || this.mSortIv.getVisibility() != 0) ? 8 : 0);
        }
        if (this.mBackIv != null) {
            updateBackIcon(z);
            this.mBackIv.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.T0(z, view2);
                }
            });
        }
        TextView textView2 = this.mTitleTv;
        if (textView2 != null && !z) {
            textView2.setText(this.z);
        }
        if (!this.J || (mainViewModel = this.K) == null) {
            return;
        }
        if (z) {
            r1(Boolean.TRUE.equals(mainViewModel.g.getValue()));
            return;
        }
        RecyclerViewFastScroller recyclerViewFastScroller = this.I;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.U0();
                }
            });
        } else {
            r1(Boolean.TRUE.equals(mainViewModel.g.getValue()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f1(Boolean bool) {
        MainViewModel mainViewModel = this.K;
        if (mainViewModel != null) {
            r1(((Boolean) mainViewModel.g.getValue()).booleanValue());
        }
    }

    public final void g1(boolean z) {
        AudioAppFootActionBar audioAppFootActionBar;
        if (this.isInEditMode) {
            if (resolveNavigationBarInsetPx() > 0 || ((audioAppFootActionBar = this.y) != null && audioAppFootActionBar.getHeight() > 0)) {
                r1(z);
            }
        }
    }

    public final void h1(boolean z) {
        if (resolveNavigationBarInsetPx() > 0) {
            r1(z);
        }
    }

    public final void i1() {
        editMode(false);
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1054);
        this.mEvents.add(1070);
        this.mEvents.add(1170);
    }

    @Override
    public void initSortView(View view, boolean z) {
        super.initSortView(view, z);
        this.mSortIv.setEnabled(false);
    }

    public void isAppBarLayoutExpand(int i, int i2) {
        VideoMainRecyclerView videoMainRecyclerView = this.H;
        if (videoMainRecyclerView == null) {
            return;
        }
        if (i2 <= 0) {
            videoMainRecyclerView.setAppBarExpand(false);
            return;
        }
        int iAbs = Math.abs(i);
        if (iAbs <= 0 || iAbs >= i2) {
            this.H.setAppBarExpand(false);
        } else {
            this.H.setAppBarExpand(true);
        }
    }

    public final Pair k1(String str, AudioItem audioItem, AudioBaseFragment audioBaseFragment) {
        AudioItem audioItem2;
        AudioItem audioItemG = ao.U().G(str);
        if (audioItemG == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.q);
        for (int i = 0; i < arrayList.size(); i++) {
            if ((arrayList.get(i) instanceof AudioItem) && (audioItem2 = (AudioItem) arrayList.get(i)) != null && audioItem != null && audioItem2.id == audioItem.id) {
                AudioItem.copy(audioItemG, audioItem2);
                SortUtil.u(arrayList);
                break;
            }
        }
        if (audioItem != null && audioItemG.data.equals(audioItem.data) && audioItemG.id != audioItem.id) {
            ao.U().s0(audioItemG.id, audioItemG.data, "");
        }
        return new Pair(audioItemG, arrayList);
    }

    public final void l1(ArrayList arrayList) {
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            audioItemAdapter.setNewData(arrayList);
        }
    }

    public final void m1(AudioItem audioItem, AudioItem audioItem2, boolean z, Pair pair) {
        if (pair == null) {
            return;
        }
        Object obj = pair.second;
        if (obj != null && this.u != null) {
            this.q = (ArrayList) obj;
            final ArrayList arrayList = (ArrayList) obj;
            x1(new Runnable() {
                @Override
                public final void run() {
                    this.b.l1(arrayList);
                }
            });
        }
        if (pair.first != null && audioItem != null && audioItem2 != null && audioItem2.id == audioItem.id && z) {
            MusicPlayManager.S().H1((AudioItem) pair.first);
        }
        if (z) {
            uq3.b(false);
        }
        this.O = null;
    }

    public final void o1(int i) {
        try {
            AudioItemAdapter audioItemAdapter = this.u;
            if (audioItemAdapter == null || i < 0 || i >= audioItemAdapter.getData().size()) {
                return;
            }
            this.u.remove(i);
        } catch (Exception e) {
            Log.e("AudioBaseFragment", "removeAdapterItemSafely: " + e.getMessage());
        }
    }

    @Override
    public boolean onBackPressed() {
        if (this.isInEditMode) {
            editMode(false);
            return true;
        }
        if (!this.M) {
            return super.onBackPressed();
        }
        startDragMode(false, this.s, false);
        ArrayList arrayList = this.q;
        if (arrayList == null || arrayList.isEmpty()) {
            return super.onBackPressed();
        }
        return true;
    }

    @Override
    public void onClick(View view) {
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initResources();
        this.D = (PlayListModel) getViewModelByActivity(PlayListModel.class);
        this.Q = new a(this);
        this.mContext.getContentResolver().registerContentObserver(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, true, this.Q);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        try {
            a aVar = this.Q;
            if (aVar != null) {
                aVar.c();
                this.mContext.getContentResolver().unregisterContentObserver(this.Q);
            }
        } catch (Exception unused) {
        }
        this.Q = null;
    }

    @Override
    public void onDestroyView() {
        MainViewModel mainViewModel;
        super.onDestroyView();
        this.l = null;
        this.o = null;
        this.y = null;
        VideoMainRecyclerView videoMainRecyclerView = this.H;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.removeOnItemTouchListener(this.mSimpleOnItemTouchListener);
            this.mSimpleOnItemTouchListener = null;
        }
        if (!this.J || (mainViewModel = this.K) == null) {
            return;
        }
        mainViewModel.c.removeObserver(this.U);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        MainViewModel mainViewModel;
        super.onFragmentScreenTypeChange(screen_type);
        if (!this.J || (mainViewModel = this.K) == null) {
            return;
        }
        r1(((Boolean) mainViewModel.g.getValue()).booleanValue());
    }

    @Override
    public void onItemClick(int i) {
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            this.y.setSelectItems(audioItemAdapter.G());
        }
        s1(i);
    }

    @Override
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        D1();
    }

    @Override
    public void onPause() {
        super.onPause();
        this.m = false;
        sq3.a().c(this);
        this.r = false;
    }

    public void onPlayItemChanged(AudioItem audioItem) {
    }

    @Override
    public void onResume() {
        super.onResume();
        this.m = true;
        if (!this.n) {
            this.n = true;
            loadData(false);
        }
        if (this.F) {
            this.F = false;
            postDelayLoadDataChange();
        }
        sq3.a().b(this);
    }

    @Override
    public void onSelectTabViewPager() {
        super.onSelectTabViewPager();
        L0();
        View view = this.l;
        if (view != null) {
            view.setVisibility((this.mIsRealVisibleToUser && this.q.isEmpty()) ? 0 : 8);
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        D1();
    }

    @Override
    public void onViewCreatedEnd(View view, Bundle bundle) {
        super.onViewCreatedEnd(view, bundle);
        if (this.needBg) {
            backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        }
        E0();
        B1();
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout != null) {
            appBarLayout.addOnOffsetChangedListener(this.R);
        }
    }

    public final void p1() {
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            audioItemAdapter.notifyDataSetChanged();
        }
    }

    public void q1() {
        int i;
        TextView textView = (TextView) this.l.findViewById(R.id.text_filtered_audios);
        if (this.N.longValue() <= 0 || !((i = this.s) == 21 || i == 22)) {
            textView.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        textView.setOnClickListener(this);
        textView.setText(this.mContext.getResources().getString(this.N.longValue() == 1 ? R.string.visha_look_filter_audio : R.string.visha_look_filter_audios, String.valueOf(this.N)));
        p06.a0("vd_audiolist_filt_show", hb0.KEY_NAME_NUM, String.valueOf(this.N));
    }

    public void r1(final boolean z) {
        BaseActivity baseActivity;
        BaseActivity baseActivity2;
        AudioAppFootActionBar audioAppFootActionBar;
        if (this.I == null || this.L) {
            return;
        }
        MainViewModel mainViewModel = this.K;
        boolean z2 = mainViewModel == null || Boolean.TRUE.equals(mainViewModel.c.getValue());
        int i = 50;
        if (z2 && isFoldScreen()) {
            if (this.isInEditMode) {
                applyRecyclerViewNavBottomPadding(this.H, true);
                return;
            } else if (z) {
                i = com.transsion.utils.a.D(this.mContext) ? 144 : 115;
            }
        } else if (!z) {
            i = 0;
        }
        int iD = com.transsion.utils.a.d(this.mContext, i);
        if (z2) {
            if (this.I.getPaddingBottom() != iD) {
                RecyclerViewFastScroller recyclerViewFastScroller = this.I;
                recyclerViewFastScroller.setPadding(recyclerViewFastScroller.getPaddingStart(), this.I.getPaddingTop(), this.I.getPaddingEnd(), iD);
            }
            applyRecyclerViewNavBottomPadding(this.H, z2 && isFoldScreen());
            return;
        }
        int iResolveNavigationBarInsetPx = resolveNavigationBarInsetPx();
        if (!this.isInEditMode) {
            RecyclerViewFastScroller recyclerViewFastScroller2 = this.I;
            recyclerViewFastScroller2.setPadding(recyclerViewFastScroller2.getPaddingStart(), this.I.getPaddingTop(), this.I.getPaddingEnd(), iResolveNavigationBarInsetPx);
            applyRecyclerViewBottomPaddingPx(this.H, z ? com.transsion.utils.a.d(this.mContext, 60.0f) : 0);
            if (iResolveNavigationBarInsetPx != 0 || (baseActivity = this.mActivity) == null || baseActivity.getApplicationInfo().targetSdkVersion < 36) {
                return;
            }
            this.I.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.h1(z);
                }
            });
            return;
        }
        applyEditFootBarBottomInset(this.y);
        RecyclerViewFastScroller recyclerViewFastScroller3 = this.I;
        recyclerViewFastScroller3.setPadding(recyclerViewFastScroller3.getPaddingStart(), this.I.getPaddingTop(), this.I.getPaddingEnd(), 0);
        int iD2 = com.transsion.utils.a.d(this.mContext, 70.0f) + iResolveNavigationBarInsetPx;
        AudioAppFootActionBar audioAppFootActionBar2 = this.y;
        if (audioAppFootActionBar2 != null) {
            iD2 = Math.max(iD2, audioAppFootActionBar2.getHeight());
        }
        applyRecyclerViewBottomPaddingPx(this.H, iD2);
        if ((iResolveNavigationBarInsetPx == 0 || ((audioAppFootActionBar = this.y) != null && audioAppFootActionBar.getHeight() == 0)) && (baseActivity2 = this.mActivity) != null && baseActivity2.getApplicationInfo().targetSdkVersion >= 36) {
            this.I.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.g1(z);
                }
            });
        }
    }

    @Override
    public void releaseWhenDestroyView() {
        super.releaseWhenDestroyView();
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout != null) {
            appBarLayout.removeOnOffsetChangedListener(this.R);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void s1(int i) {
        if (this.E) {
            return;
        }
        this.y.setSelectItems(this.u.G());
        this.y.setOperateFinishListener(new AppFootActionBar.c() {
            @Override
            public final void finish() {
                this.a.i1();
            }
        });
        if (i == 0) {
            this.y.preShare(false);
            p06.f0(null, "vd_mul_share_cl", 932460000041L);
            return;
        }
        if (i == 1) {
            M0(this.s == 36);
            postDelayLoadData();
            return;
        }
        if (i == 2) {
            ArrayList arrayListG = this.u.G();
            if (arrayListG == null || arrayListG.isEmpty()) {
                return;
            }
            ArrayList arrayList = (ArrayList) arrayListG.stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return AudioBaseFragment.j1((MediaItem) obj);
                }
            }).collect(Collectors.toList());
            Intent intent = new Intent();
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS, arrayList);
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
            vg9.e((ArrayList) this.D.d().getValue());
            vg9.f(arrayListG);
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, false);
            intent.setClass(this.mActivity, AudioSheetDialogActivity.class);
            this.S.launch(intent);
            return;
        }
        if (i != 3) {
            if (i != 4) {
                return;
            }
            FileOperateUtils fileOperateUtils = new FileOperateUtils(this.mContext, this.u.G(), this.s, true);
            this.mFileOperateUtils = fileOperateUtils;
            this.y.setFileOperateUtils(fileOperateUtils);
            this.y.preDelete(0, this.u.G(), false);
            kz5.b("vd_mul_del_cl", false, this.u.G().size());
            return;
        }
        int i2 = this.s;
        if (i2 == 30 || i2 == 32 || i2 == 33) {
            showRemoveDialog();
            return;
        }
        FileOperateUtils fileOperateUtils2 = new FileOperateUtils(this.mContext, this.u.G(), this.s, true);
        this.mFileOperateUtils = fileOperateUtils2;
        this.y.setFileOperateUtils(fileOperateUtils2);
        this.y.preDelete(0, this.u.G(), false);
        kz5.b("vd_mul_del_cl", false, this.u.G().size());
    }

    @Override
    public void selectAll(boolean z) {
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            audioItemAdapter.O(z);
        }
    }

    public void t(boolean z) {
    }

    public void t1(final AudioItem audioItem, final String str, final boolean z) {
        final AudioItem audioItemA0 = MusicPlayManager.S().a0();
        mc7.K(this).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.k1(str, audioItem, (AudioBaseFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.m1(audioItem, audioItemA0, z, (Pair) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                AudioBaseFragment.n1(z, (Throwable) obj);
            }
        });
    }

    public void u1() {
        if (this.u == null || PlayAudioListData.getInstance().playMediaItem() == null || this.u.F() == null) {
            return;
        }
        AudioItem audioItemPlayMediaItem = PlayAudioListData.getInstance().playMediaItem();
        AudioItem audioItemF = this.u.F();
        try {
            if (audioItemPlayMediaItem.equals(audioItemF)) {
                return;
            }
            boolean z = false;
            boolean z2 = false;
            for (int i = 0; i < this.u.getItemCount(); i++) {
                if (audioItemPlayMediaItem.equals(this.u.getItem(i))) {
                    this.u.U(audioItemPlayMediaItem);
                    this.u.notifyItemChanged(i);
                    z = true;
                } else if (audioItemF.equals(this.u.getItem(i))) {
                    this.u.notifyItemChanged(i);
                    z2 = true;
                }
                if (z && z2) {
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void v1(final int i) {
        if (this.H == null || this.u == null) {
            return;
        }
        x1(new Runnable() {
            @Override
            public final void run() {
                this.b.o1(i);
            }
        });
    }

    public void w1() {
        x1(new Runnable() {
            @Override
            public final void run() {
                this.b.p1();
            }
        });
    }

    public void x1(final Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (this.H == null) {
            runnable.run();
        } else {
            new Runnable() {
                int mRetryCount = 0;

                @Override
                public void run() {
                    int i;
                    VideoMainRecyclerView videoMainRecyclerView = AudioBaseFragment.this.H;
                    if (videoMainRecyclerView == null) {
                        return;
                    }
                    if ((videoMainRecyclerView.isComputingLayout() || AudioBaseFragment.this.H.getScrollState() != 0) && (i = this.mRetryCount) < 4) {
                        this.mRetryCount = i + 1;
                        AudioBaseFragment.this.H.post(this);
                        return;
                    }
                    try {
                        runnable.run();
                    } catch (IllegalStateException e) {
                        Log.e("AudioBaseFragment", "safeUpdateAdapter: " + e.getMessage());
                    }
                }
            }.run();
        }
    }

    public void y1(BaseQuickAdapter baseQuickAdapter, View view, int i, boolean z) {
        if (baseQuickAdapter.getData().size() <= i) {
            return;
        }
        AudioItem audioItem = (AudioItem) baseQuickAdapter.getData().get(i);
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox);
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            boolean zIsChecked = checkBox.isChecked();
            if (!z) {
                zIsChecked = !zIsChecked;
            }
            audioItemAdapter.P(audioItem, zIsChecked, i);
        }
    }

    public void z1(boolean z) {
        this.G = z;
        if (this.isInEditMode) {
            PlayBaseFragment.d dVar = this.mEditModeListener;
            if (dVar != null) {
                ArrayList arrayListG = this.u.G();
                int i = this.x;
                dVar.b(arrayListG, i != 0 && i == this.q.size(), this.G);
            }
            E1();
        }
    }
}
