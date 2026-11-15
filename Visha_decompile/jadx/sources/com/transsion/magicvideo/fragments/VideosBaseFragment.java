package com.transsion.magicvideo.fragments;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.MediaStore;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p003activity.result.ActivityResult;
import androidx.p003activity.result.ActivityResultCallback;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p003activity.result.contract.ActivityResultContracts;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.ThreadUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoSheetDialogActivity;
import com.transsion.magicvideo.adapter.BucketDateAdapter;
import com.transsion.magicvideo.fragments.VideosBaseFragment;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.playercommon.videomodel.VideoPlayListModel;
import com.transsion.playercommon.widgets.AppFootActionBar;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.utils.BaseConstant;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import com.transsion.widgetslib.widget.FootOperationBar;
import defpackage.cc0;
import defpackage.chc;
import defpackage.f5;
import defpackage.h27;
import defpackage.hb0;
import defpackage.k29;
import defpackage.kz5;
import defpackage.mc7;
import defpackage.p06;
import defpackage.pp3;
import defpackage.sq3;
import defpackage.t74;
import defpackage.tpb;
import defpackage.uq3;
import defpackage.vb;
import defpackage.vg9;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

public class VideosBaseFragment extends PlayBaseFragment implements VideoPlayManager.c, sq3.a, BucketDateAdapter.b, FootOperationBar.n {
    public int A;
    public String B;
    public View C;
    public int D;
    public VideoPlayListModel G;
    public PlayListModel H;
    public boolean I;
    public boolean K;
    public VideoMainRecyclerView M;
    public RecyclerViewFastScroller N;
    public boolean O;
    public MainViewModel P;
    public d S;
    public View l;
    public boolean m;
    public boolean n;
    public boolean o;
    public TextView p;
    public View q;
    public BucketDateAdapter t;
    public ImageView u;
    public AppFootActionBar v;
    public int w;
    public TextView x;
    public boolean y;
    public boolean z;
    public ArrayList r = new ArrayList();
    public int s = 0;
    public ArrayList E = new ArrayList();
    public ArrayList F = new ArrayList();
    public boolean J = false;
    public boolean L = false;
    public boolean Q = false;
    public final Runnable R = new Runnable() {
        @Override
        public final void run() {
            this.b.c1();
        }
    };
    public Runnable T = null;
    public ActivityResultLauncher U = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() {
        @Override
        public final void onActivityResult(Object obj) {
            this.a.d1((ActivityResult) obj);
        }
    });
    public final ArrayList V = new ArrayList();
    public final Observer W = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.e1((Boolean) obj);
        }
    };
    public final Observer X = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.f1((Boolean) obj);
        }
    };
    public AppBarLayout.OnOffsetChangedListener Y = new AppBarLayout.OnOffsetChangedListener() {
        @Override
        public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            this.b.g1(appBarLayout, i);
        }
    };

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            VideosBaseFragment videosBaseFragment = VideosBaseFragment.this;
            videosBaseFragment.t.R(((PlayBaseFragment) videosBaseFragment).mAllCheckBox.isChecked());
        }
    }

    public class b implements View.OnClickListener {
        public final boolean b;

        public b(boolean z) {
            this.b = z;
        }

        @Override
        public void onClick(View view) {
            if (this.b) {
                VideosBaseFragment.this.editMode(false);
            } else {
                ((BaseFragment) VideosBaseFragment.this).mActivity.onBackPressed();
            }
        }
    }

    public class c implements FileOperateUtils.k {
        public c() {
        }

        @Override
        public void b() {
            VideosBaseFragment.this.editMode(false);
        }

        @Override
        public void d() {
        }

        @Override
        public void e() {
            VideosBaseFragment.this.editMode(false);
            VideosBaseFragment.this.postDelayLoadData();
            VideoPlayManager.X().b1();
            hb0.markTrackTwo("vd_more_hide_file_add", "from", 2, hb0.KEY_NAME_NUM, Integer.valueOf(VideosBaseFragment.this.E.size()));
            if (pp3.p) {
                h27.c().e(1139, new Object[0]);
            }
        }

        @Override
        public void g(String str, String str2) {
        }
    }

    public static class d extends chc {
        public d(VideosBaseFragment videosBaseFragment) {
            super(videosBaseFragment);
        }

        @Override
        public void b(VideosBaseFragment videosBaseFragment, boolean z) {
            if (uq3.a()) {
                return;
            }
            if (videosBaseFragment.m) {
                videosBaseFragment.t1();
            } else {
                videosBaseFragment.z = true;
            }
        }
    }

    private void B1() {
        View view = this.q;
        if (view != null) {
            view.setPadding(0, 0, 0, this.mActivity.isInMultiWindowMode() ? this.mEmptyPaddingBottomInMulti : this.mEmptyPaddingBottom);
        }
    }

    private void C1() {
        if (this.y || this.v == null) {
            return;
        }
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null && this.I) {
            List listF = bucketDateAdapter.F();
            this.v.enableHide(listF == null || listF.size() <= 0);
        }
        this.v.setAllEnable((this.w == 0 || this.L) ? false : true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addVideoBarShowStateObserver() {
        if (this.O) {
            MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
            this.P = mainViewModel;
            mainViewModel.g.observe(getViewLifecycleOwner(), this.W);
            this.P.c.observe(getViewLifecycleOwner(), this.X);
            notifyVideoBarShowStateChange(((Boolean) this.P.g.getValue()).booleanValue());
        }
    }

    public void c1() {
        if (!this.m) {
            this.z = true;
        } else {
            this.z = false;
            postDelayLoadDataChange();
        }
    }

    private int getBottomPadding(boolean z) {
        int i;
        MainViewModel mainViewModel = this.P;
        boolean z2 = mainViewModel == null || Boolean.TRUE.equals(mainViewModel.c.getValue());
        boolean zIsFoldScreen = isFoldScreen();
        int i2 = this.s;
        boolean z3 = i2 == 2;
        if (z2 && zIsFoldScreen && z) {
            i = 115;
        } else if (z || ((this.isInEditMode && i2 != 3) || (z2 && zIsFoldScreen))) {
            i = com.transsion.utils.a.D(this.mContext) ? 72 : 60;
        } else {
            i = 0;
        }
        int i3 = (z3 && z2 && !zIsFoldScreen && !z && this.isInEditMode) ? 0 : i;
        if (z2 && zIsFoldScreen && this.isInEditMode && !z) {
            return 115;
        }
        return i3;
    }

    private void hideLoadingView() {
    }

    public static Integer k1(MediaItem mediaItem) {
        return Integer.valueOf(mediaItem.id);
    }

    public static void o1(Throwable th) {
        Log.e("VideosBaseFragment", "onRenameSuccess exception");
        uq3.b(false);
    }

    public void p1(int i) {
        if (i >= 0) {
            try {
                if (i < this.t.getData().size()) {
                    this.t.remove(i);
                }
            } catch (Exception e) {
                Log.e("VideosBaseFragment", "removeAdapterItemSafely: " + e.getMessage());
            }
        }
    }

    private void y1() {
    }

    public void A1(int i, int i2, int i3) {
    }

    public final void E0(final int i) {
        BaseActivity baseActivity;
        if (this.M == null) {
            return;
        }
        int iResolveNavigationBarInsetPx = resolveNavigationBarInsetPx() + i;
        View viewN0 = N0();
        if (viewN0 != null && viewN0.getVisibility() == 0) {
            if (viewN0.getHeight() > 0) {
                iResolveNavigationBarInsetPx = Math.max(iResolveNavigationBarInsetPx, viewN0.getHeight());
            } else {
                viewN0.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.V0(i);
                    }
                });
            }
        }
        int iD = iResolveNavigationBarInsetPx + com.transsion.utils.a.d(this.mContext, 10.0f);
        this.M.setClipToPadding(false);
        if (this.M.getPaddingBottom() != iD) {
            VideoMainRecyclerView videoMainRecyclerView = this.M;
            videoMainRecyclerView.setPaddingRelative(videoMainRecyclerView.getPaddingStart(), this.M.getPaddingTop(), this.M.getPaddingEnd(), iD);
        }
        if (resolveNavigationBarInsetPx() != 0 || (baseActivity = this.mActivity) == null || baseActivity.getApplicationInfo().targetSdkVersion < 36) {
            return;
        }
        this.M.post(new Runnable() {
            @Override
            public final void run() {
                this.b.W0(i);
            }
        });
    }

    public void F0(ArrayList arrayList) {
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter == null) {
            return;
        }
        this.E = bucketDateAdapter.D();
        if (arrayList == null || this.D == arrayList.size() || this.E.size() == arrayList.size() || this.E.isEmpty()) {
            return;
        }
        this.D = this.r.size();
        this.w = 0;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            MediaItem mediaItem = (MediaItem) it.next();
            if (this.E.contains(mediaItem)) {
                this.w++;
                arrayList2.add(mediaItem);
            }
        }
        this.t.a0(arrayList2);
        Log.d("VideosBaseFragment", "checkSelectCount " + this.D + StringUtils.COMMA + this.w + ":::::" + arrayList2.size());
    }

    public void G0() {
        if ((this.isInEditMode || this.y) && this.t != null) {
            CheckBox checkBox = this.mAllCheckBox;
            if (checkBox == null || !checkBox.isChecked()) {
                z1(this.w);
            } else {
                this.t.R(true);
            }
        }
    }

    public void H0(List list) {
        this.A = 0;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((MediaItem) it.next()).isTimeItem) {
                this.A++;
            }
        }
    }

    public void I0(MediaItem mediaItem, FileOperateItem fileOperateItem) {
        if (this.mFileOperateUtils != null) {
            if (this.s == 1) {
                VideoPlayManager.X().S0();
            }
            this.mFileOperateUtils.X(fileOperateItem, "video", true);
        }
    }

    public void J0(MediaItem mediaItem, FileOperateItem fileOperateItem) {
        if (this.mFileOperateUtils != null) {
            if (this.s == 1) {
                VideoPlayManager.X().S0();
            }
            this.mFileOperateUtils.X(fileOperateItem, "video", true);
        }
    }

    public void K0() {
        VideoPlayManager.X().u2(this);
        if (this.s != 1) {
            sq3.a().c(this);
        }
    }

    public void L0() {
        this.Q = false;
    }

    public void M0() {
        if (!isAdded() || getView() == null || this.M == null || this.t == null || this.o || T0()) {
            return;
        }
        boolean z = this.t.getData() == null || this.t.getData().isEmpty();
        boolean z2 = !z && this.M.getWidth() > 0 && this.M.getHeight() > 0 && this.M.getChildCount() == 0 && !this.M.isComputingLayout() && this.M.getScrollState() == 0;
        if (z || z2) {
            Log.w("VideosBaseFragment", "ensureListUiBoundIfNeeded rebind, adapterEmpty=" + z + ", childCount=" + this.M.getChildCount() + ", dataSize=" + this.r.size());
            this.o = true;
            try {
                if (z) {
                    updateShowUI();
                } else {
                    this.t.notifyDataSetChanged();
                    this.M.requestLayout();
                }
                this.o = false;
            } catch (Throwable th) {
                this.o = false;
                throw th;
            }
        }
    }

    public final View N0() {
        int identifier;
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity == null || (identifier = baseActivity.getResources().getIdentifier("bottom_bar", TtmlNode.ATTR_ID, this.mActivity.getPackageName())) == 0) {
            return null;
        }
        return this.mActivity.findViewById(identifier);
    }

    public int O0() {
        return this.r.size() - this.A;
    }

    public void P0() {
        View view;
        if (this.q != null || (view = this.l) == null) {
            return;
        }
        this.q = ((ViewStub) view.findViewById(R.id.main_empty_view)).inflate();
        B1();
        int i = this.s;
        if (i == 2 || i == 13) {
            p06.q0(null, null, "vd_all_video_gd_show", 9324L);
            TextView textView = (TextView) this.q.findViewById(R.id.add_video_tv);
            textView.setVisibility(0);
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.Y0(view2);
                }
            });
            textView.setText(R.string.go_download);
            if (this.s == 13) {
                TextView textView2 = (TextView) this.q.findViewById(R.id.text_no_videos);
                this.p = textView2;
                textView2.setText(R.string.no_recently_add);
            }
            CustomSwipeRefreshLayout customSwipeRefreshLayout = this.mPullDampingLayout;
            if (customSwipeRefreshLayout != null) {
                customSwipeRefreshLayout.requestDisallowInterceptTouchEvent(true);
            }
        } else if (i == 42) {
            ((TextView) this.q.findViewById(R.id.text_no_videos)).setText(R.string.no_videos);
        }
        TextView textView3 = (TextView) this.q.findViewById(R.id.text_no_videos);
        int i2 = this.s;
        if (i2 == 1) {
            textView3.setText(R.string.no_history);
        } else if (i2 != 13) {
            textView3.setText(R.string.no_videos);
        }
    }

    public void Q0(View view, VideoMainRecyclerView videoMainRecyclerView) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout = (CustomSwipeRefreshLayout) view.findViewById(R.id.pull_damping_layout);
        this.mPullDampingLayout = customSwipeRefreshLayout;
        if (customSwipeRefreshLayout == null) {
            return;
        }
        customSwipeRefreshLayout.setDistanceToTriggerSync(15);
        this.mPullDampingLayout.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
            @Override
            public final void onRefresh() {
                this.a.a1();
            }
        });
        PlayBaseFragment.b bVar = this.mBounceListener;
        if (bVar != null) {
            bVar.a(this.mOverScrollDecor);
        }
        setRvOverScrollDecorListener(videoMainRecyclerView);
        this.mPullDampingLayout.setOnChildScrollUpCallback(new CustomSwipeRefreshLayout.OnChildScrollUpCallback() {
            @Override
            public final boolean canChildScrollUp(CustomSwipeRefreshLayout customSwipeRefreshLayout2, View view2) {
                return this.a.b1(customSwipeRefreshLayout2, view2);
            }
        });
    }

    public boolean R0() {
        return this.r.isEmpty();
    }

    public boolean S0() {
        int i = this.s;
        return (i == 1 || i == 3 || i == 30) ? false : true;
    }

    public boolean T0() {
        return this.r.isEmpty();
    }

    public boolean U0() {
        if (this.r.isEmpty() || !this.J) {
            this.J = false;
            return false;
        }
        this.J = false;
        return true;
    }

    public final void V0(int i) {
        if (this.isInEditMode) {
            E0(i);
        }
    }

    public final void W0(int i) {
        if (!this.isInEditMode || resolveNavigationBarInsetPx() <= 0) {
            return;
        }
        E0(i);
    }

    public final void X0() {
        AppFootActionBar appFootActionBar = this.v;
        if (appFootActionBar != null) {
            applyEditFootBarBottomInset(appFootActionBar);
            this.v.openFootOperationBar();
        }
    }

    public final void Y0(View view) {
        p06.q0(null, null, "vd_all_video_gd_cl", 9324L);
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(0).withParam(new RouterBean.RouterData(3, 1)).build(), this.mContext, true);
    }

    public final void Z0() {
        this.mPullDampingLayout.setRefreshing(false);
        loadData(false);
    }

    public final void a1() {
        Log.d("VideosBaseFragment", "onRefresh " + this.s);
        this.mContext.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
        this.mPullDampingLayout.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.Z0();
            }
        }, 1000L);
    }

    public void b(int i) {
        z1(i);
    }

    public final boolean b1(CustomSwipeRefreshLayout customSwipeRefreshLayout, View view) {
        return this.M.canScrollVertically(-1);
    }

    public void c(boolean z) {
        z1(z ? O0() : 0);
    }

    public final void d1(ActivityResult activityResult) {
        Intent data;
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        int intExtra = data.getIntExtra(SheetDialogParamsConstant.OUT_PARAM_ITEM_CLICK_DATA, 0);
        MediaItem mediaItem = (MediaItem) data.getParcelableExtra(SheetDialogParamsConstant.OUT_PARAM_DATA);
        FileOperateItem fileOperateItem = new FileOperateItem(R.drawable.ic_delete, R.string.delete, intExtra);
        if (this.s != 42) {
            if (intExtra == 5) {
                J0(mediaItem, fileOperateItem);
                return;
            }
            if (intExtra == 12) {
                I0(mediaItem, fileOperateItem);
                return;
            } else {
                if (this.mFileOperateUtils == null) {
                    Log.e("VideosBaseFragment", "mFileOperateUtils is null onMenuItemClick");
                    return;
                }
                if (fileOperateItem.getFlag() == 2) {
                    this.Q = true;
                }
                this.mFileOperateUtils.X(fileOperateItem, "video", true);
                return;
            }
        }
        FileOperateUtils fileOperateUtils = this.mFileOperateUtils;
        if (fileOperateUtils == null) {
            Log.e("VideosBaseFragment", "mFileOperateUtils is null");
            return;
        }
        if (intExtra == 5) {
            fileOperateUtils.i0();
        } else if (intExtra != 1) {
            fileOperateUtils.X(fileOperateItem, "video", true);
        } else {
            hb0.markTrackSingle("vd_more_hide_file_rec", hb0.KEY_NAME_NUM, 1);
            this.mFileOperateUtils.d0(false);
        }
    }

    public final void e1(Boolean bool) {
        notifyVideoBarShowStateChange(bool.booleanValue());
    }

    @Override
    public void editMode(boolean z) {
        MainViewModel mainViewModel;
        super.editMode(z);
        this.isInEditMode = z;
        setMainViewModelEditMode(z);
        if (this.s != 2) {
            inflateOperationBar();
            AppFootActionBar appFootActionBar = this.v;
            if (appFootActionBar != null) {
                if (z) {
                    applyEditFootBarBottomInset(appFootActionBar);
                }
                this.v.initShow(z);
                if (z) {
                    this.v.postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.X0();
                        }
                    }, 150L);
                } else {
                    this.v.closeFootOperationBar();
                }
            }
        }
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null) {
            if (z) {
                bucketDateAdapter.R(false);
            }
            BucketDateAdapter bucketDateAdapter2 = this.t;
            int i = this.s;
            if (z) {
                if (i == 1) {
                    i = 6;
                } else if (i == 14) {
                    i = 15;
                } else {
                    i = i == 16 ? 17 : 4;
                }
            }
            bucketDateAdapter2.X(i);
            this.t.notifyDataSetChanged();
        }
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null && z) {
            dVar.d(true, this.s, true);
        }
        TextView textView = this.x;
        if (textView != null) {
            textView.setEnabled(!z);
        }
        View view = this.C;
        if (view != null) {
            view.setEnabled(!z);
            this.C.setAlpha(z ? 0.4f : 1.0f);
        }
        ImageView imageView = this.u;
        if (imageView != null) {
            imageView.setEnabled(!z);
        }
        CheckBox checkBox = this.mAllCheckBox;
        if (checkBox != null) {
            checkBox.setChecked(false);
            this.mAllCheckBox.setVisibility(z ? 0 : 8);
            this.mAllCheckBox.setOnClickListener(new a());
        }
        View view2 = this.mSortIv;
        if (view2 != null) {
            view2.setVisibility(z ? 8 : 0);
        }
        if (this.mBackIv != null) {
            updateBackIcon(z);
            this.mBackIv.setOnClickListener(new b(z));
        }
        TextView textView2 = this.mTitleTv;
        if (textView2 != null && !z) {
            textView2.setText(this.B);
        }
        if (!this.O || (mainViewModel = this.P) == null) {
            return;
        }
        notifyVideoBarShowStateChange(Boolean.TRUE.equals(mainViewModel.g.getValue()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f1(Boolean bool) {
        MainViewModel mainViewModel = this.P;
        if (mainViewModel != null) {
            notifyVideoBarShowStateChange(((Boolean) mainViewModel.g.getValue()).booleanValue());
        }
    }

    public final void g1(AppBarLayout appBarLayout, int i) {
        isAppBarLayoutExpand(i, appBarLayout.getTotalScrollRange());
    }

    public final void h1(boolean z) {
        AppFootActionBar appFootActionBar;
        if (this.isInEditMode) {
            if (resolveNavigationBarInsetPx() > 0 || ((appFootActionBar = this.v) != null && appFootActionBar.getHeight() > 0)) {
                notifyVideoBarShowStateChange(z);
            }
        }
    }

    public final void i1(boolean z) {
        if (resolveNavigationBarInsetPx() > 0) {
            notifyVideoBarShowStateChange(z);
        }
    }

    public void isAppBarLayoutExpand(int i, int i2) {
        VideoMainRecyclerView videoMainRecyclerView = this.M;
        if (videoMainRecyclerView == null) {
            return;
        }
        if (i2 <= 0) {
            videoMainRecyclerView.setAppBarExpand(false);
            return;
        }
        int iAbs = Math.abs(i);
        if (iAbs <= 0 || iAbs >= i2) {
            this.M.setAppBarExpand(false);
        } else {
            this.M.setAppBarExpand(true);
        }
    }

    public final void j1() {
        editMode(false);
    }

    public final Pair l1(final String str, boolean z, final MediaItem mediaItem, VideosBaseFragment videosBaseFragment) {
        MediaItem mediaItem2;
        MediaItem mediaItem3;
        MediaItem mediaItemM = tpb.j0().m(str);
        if (mediaItemM == null) {
            if (z) {
                return null;
            }
            this.T = new Runnable() {
                @Override
                public void run() {
                    VideosBaseFragment.this.r1(mediaItem, str, true);
                }
            };
            ThreadUtils.o().postDelayed(this.T, 350L);
            return null;
        }
        ArrayList arrayList = new ArrayList(this.r);
        if (!arrayList.isEmpty()) {
            int i = 0;
            while (true) {
                if (i >= arrayList.size()) {
                    i = -1;
                    break;
                }
                if ((arrayList.get(i) instanceof MediaItem) && (mediaItem3 = (MediaItem) arrayList.get(i)) != null && !mediaItem3.isTimeItem && mediaItem != null && mediaItem3.id == mediaItem.id) {
                    MediaItem.copy(mediaItemM, mediaItem3);
                    SortUtil.z(arrayList);
                    break;
                }
                i++;
            }
            if (i >= 0 && mediaItemM.data != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (size != i && (arrayList.get(size) instanceof MediaItem) && (mediaItem2 = (MediaItem) arrayList.get(size)) != null && !mediaItem2.isTimeItem && mediaItemM.data.equals(mediaItem2.data)) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return new Pair(mediaItemM, arrayList);
    }

    public final void m1(Parcelable parcelable) {
        if (this.M.getLayoutManager() != null) {
            this.M.getLayoutManager().onRestoreInstanceState(parcelable);
        }
    }

    public final void n1(MediaItem mediaItem, MediaItem mediaItem2, String str, Pair pair) {
        VideoMainRecyclerView videoMainRecyclerView;
        if (pair == null) {
            return;
        }
        Object obj = pair.second;
        if (obj != null && this.t != null) {
            this.r = (ArrayList) obj;
            VideoMainRecyclerView videoMainRecyclerView2 = this.M;
            final Parcelable parcelableOnSaveInstanceState = (videoMainRecyclerView2 == null || videoMainRecyclerView2.getLayoutManager() == null) ? null : this.M.getLayoutManager().onSaveInstanceState();
            this.t.setNewData((List) pair.second);
            if (parcelableOnSaveInstanceState != null && (videoMainRecyclerView = this.M) != null && videoMainRecyclerView.getLayoutManager() != null) {
                this.M.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.m1(parcelableOnSaveInstanceState);
                    }
                });
            }
        }
        Object obj2 = pair.first;
        if (obj2 != null && mediaItem != null && mediaItem2 != null && mediaItem2.id == mediaItem.id) {
            mediaItem2.id = ((MediaItem) obj2).id;
            mediaItem2.data = str;
            VideoPlayManager.X().z2(mediaItem2);
        }
        uq3.b(false);
    }

    public void notifyVideoBarShowStateChange(final boolean z) {
        BaseActivity baseActivity;
        BaseActivity baseActivity2;
        AppFootActionBar appFootActionBar;
        if (this.N != null) {
            int bottomPadding = getBottomPadding(z);
            MainViewModel mainViewModel = this.P;
            boolean z2 = mainViewModel == null || Boolean.TRUE.equals(mainViewModel.c.getValue());
            boolean z3 = z2 && isFoldScreen();
            if (z3 && this.isInEditMode) {
                RecyclerViewFastScroller recyclerViewFastScroller = this.N;
                recyclerViewFastScroller.setPadding(recyclerViewFastScroller.getPaddingStart(), this.N.getPaddingTop(), this.N.getPaddingEnd(), 0);
                E0(com.transsion.utils.a.d(this.mContext, Math.max(bottomPadding, 70)));
                return;
            }
            int iD = com.transsion.utils.a.d(this.mContext, bottomPadding);
            if (z2) {
                RecyclerViewFastScroller recyclerViewFastScroller2 = this.N;
                recyclerViewFastScroller2.setPadding(recyclerViewFastScroller2.getPaddingStart(), this.N.getPaddingTop(), this.N.getPaddingEnd(), iD);
                applyRecyclerViewNavBottomPadding(this.M, z3);
                return;
            }
            int iResolveNavigationBarInsetPx = resolveNavigationBarInsetPx();
            if (!this.isInEditMode) {
                RecyclerViewFastScroller recyclerViewFastScroller3 = this.N;
                recyclerViewFastScroller3.setPadding(recyclerViewFastScroller3.getPaddingStart(), this.N.getPaddingTop(), this.N.getPaddingEnd(), iResolveNavigationBarInsetPx);
                applyRecyclerViewBottomPaddingPx(this.M, z ? com.transsion.utils.a.d(this.mContext, 60.0f) : 0);
                if (iResolveNavigationBarInsetPx != 0 || (baseActivity = this.mActivity) == null || baseActivity.getApplicationInfo().targetSdkVersion < 36) {
                    return;
                }
                this.N.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.i1(z);
                    }
                });
                return;
            }
            applyEditFootBarBottomInset(this.v);
            RecyclerViewFastScroller recyclerViewFastScroller4 = this.N;
            recyclerViewFastScroller4.setPadding(recyclerViewFastScroller4.getPaddingStart(), this.N.getPaddingTop(), this.N.getPaddingEnd(), 0);
            int iD2 = com.transsion.utils.a.d(this.mContext, 70.0f) + iResolveNavigationBarInsetPx;
            AppFootActionBar appFootActionBar2 = this.v;
            if (appFootActionBar2 != null) {
                iD2 = Math.max(iD2, appFootActionBar2.getHeight());
            }
            applyRecyclerViewBottomPaddingPx(this.M, iD2);
            if ((iResolveNavigationBarInsetPx == 0 || ((appFootActionBar = this.v) != null && appFootActionBar.getHeight() == 0)) && (baseActivity2 = this.mActivity) != null && baseActivity2.getApplicationInfo().targetSdkVersion >= 36) {
                this.N.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.h1(z);
                    }
                });
            }
        }
    }

    @Override
    public boolean onBackPressed() {
        if (!this.isInEditMode) {
            return super.onBackPressed();
        }
        editMode(false);
        return true;
    }

    @Override
    public void onClick(View view) {
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initResources();
        this.G = (VideoPlayListModel) getViewModelByActivity(VideoPlayListModel.class);
        this.H = (PlayListModel) getViewModelByActivity(PlayListModel.class);
        if (q1()) {
            this.S = new d(this);
            this.mContext.getContentResolver().registerContentObserver(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, true, this.S);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ThreadUtils.o().removeCallbacks(this.R);
        if (this.S != null) {
            try {
                this.mContext.getContentResolver().unregisterContentObserver(this.S);
            } catch (Exception unused) {
            }
        }
        if (this.T != null) {
            ThreadUtils.o().removeCallbacks(this.T);
        }
        this.S = null;
    }

    @Override
    public void onDestroyView() {
        MainViewModel mainViewModel;
        super.onDestroyView();
        this.q = null;
        this.l = null;
        this.v = null;
        VideoMainRecyclerView videoMainRecyclerView = this.M;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.removeOnItemTouchListener(this.mSimpleOnItemTouchListener);
            this.mSimpleOnItemTouchListener = null;
        }
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout != null) {
            appBarLayout.removeOnOffsetChangedListener(this.Y);
        }
        CustomSwipeRefreshLayout customSwipeRefreshLayout = this.mPullDampingLayout;
        if (customSwipeRefreshLayout != null) {
            customSwipeRefreshLayout.setOnChildScrollUpCallback(null);
        }
        if (!this.O || (mainViewModel = this.P) == null) {
            return;
        }
        mainViewModel.g.removeObserver(this.W);
        this.P.c.removeObserver(this.X);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        MainViewModel mainViewModel;
        super.onFragmentScreenTypeChange(screen_type);
        if (!this.O || (mainViewModel = this.P) == null) {
            return;
        }
        notifyVideoBarShowStateChange(((Boolean) mainViewModel.g.getValue()).booleanValue());
    }

    public void onItemClick(int i) {
        if (this.y) {
            return;
        }
        this.v.setSelectItems(this.t.D());
        this.v.setOperateFinishListener(new AppFootActionBar.c() {
            @Override
            public final void finish() {
                this.a.j1();
            }
        });
        if (this.s == 1) {
            VideoPlayManager.X().S0();
            if (this.t.D().size() == this.r.size() - this.A) {
                A1(R.string.talkback_clear_history, R.string.clear_empty, 0);
                return;
            }
            FileOperateUtils fileOperateUtils = new FileOperateUtils(this.mContext, this.t.D(), this.s, true);
            this.mFileOperateUtils = fileOperateUtils;
            this.v.setFileOperateUtils(fileOperateUtils);
            this.v.preDelete(0, this.t.D(), true);
            return;
        }
        int iCheckItemIndex = this.v.checkItemIndex(i);
        if (iCheckItemIndex == 1) {
            FileOperateUtils fileOperateUtils2 = new FileOperateUtils(this.mContext, this.E, this.s, true);
            fileOperateUtils2.f0(new c());
            if (pp3.p) {
                fileOperateUtils2.x("video");
                return;
            } else {
                fileOperateUtils2.V();
                editMode(false);
                return;
            }
        }
        if (iCheckItemIndex == 2) {
            p06.f0(null, "vd_mul_addlist_cl", 9324L);
            ArrayList<Integer> arrayList = (ArrayList) this.t.D().stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return VideosBaseFragment.k1((MediaItem) obj);
                }
            }).collect(Collectors.toList());
            Intent intent = new Intent();
            intent.putIntegerArrayListExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS, arrayList);
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
            vg9.g(this.V);
            vg9.h(this.E);
            intent.setClass(getActivity(), VideoSheetDialogActivity.class);
            f5.b(intent, 1247, getActivity());
            return;
        }
        if (iCheckItemIndex != 3) {
            if (iCheckItemIndex != 4) {
                this.v.onItemClick(iCheckItemIndex, true);
                return;
            }
            FileOperateUtils fileOperateUtils3 = new FileOperateUtils(this.mContext, this.t.D(), this.s, true);
            this.mFileOperateUtils = fileOperateUtils3;
            this.v.setFileOperateUtils(fileOperateUtils3);
            this.v.preDelete(0, this.t.D(), true);
            kz5.b("vd_mul_del_cl", true, this.t.D().size());
            return;
        }
        int i2 = this.s;
        if (i2 == 30 || i2 == 33) {
            showRemoveDialog();
            return;
        }
        FileOperateUtils fileOperateUtils4 = new FileOperateUtils(this.mContext, this.t.D(), this.s, true);
        this.mFileOperateUtils = fileOperateUtils4;
        this.v.setFileOperateUtils(fileOperateUtils4);
        this.v.preDelete(0, this.t.D(), true);
        kz5.b("vd_mul_del_cl", true, this.t.D().size());
    }

    @Override
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        this.K = z;
        Log.d(this.mFragmentTag, "onMultiWindowModeChanged : " + this.K);
        B1();
    }

    @Override
    public void onPause() {
        super.onPause();
        this.m = false;
        this.J = false;
    }

    public void onPlayItemChanged(MediaItem mediaItem) {
    }

    @Override
    public void onResume() {
        super.onResume();
        this.m = true;
        if (!this.n) {
            this.n = true;
            postDelayLoadData();
        }
        if (this.z) {
            t1();
        }
        VideoPlayManager.X().C1(this);
        if (this.s != 1) {
            sq3.a().b(this);
        }
    }

    @Override
    public void onSelectTabViewPager() {
        if (!isAdded() || getContext() == null) {
            return;
        }
        super.onSelectTabViewPager();
        M0();
        x1();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.needBg) {
            backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        }
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout != null) {
            appBarLayout.addOnOffsetChangedListener(this.Y);
        }
    }

    @Override
    public void onViewCreatedEnd(View view, Bundle bundle) {
        super.onViewCreatedEnd(view, bundle);
        addVideoBarShowStateObserver();
        y1();
    }

    public boolean q1() {
        return true;
    }

    public void r1(final MediaItem mediaItem, final String str, final boolean z) {
        final MediaItem mediaItemC0 = VideoPlayManager.X().c0();
        mc7.K(this).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.l1(str, z, mediaItem, (VideosBaseFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.n1(mediaItem, mediaItemC0, str, (Pair) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                VideosBaseFragment.o1((Throwable) obj);
            }
        });
    }

    @Override
    public void refresh() {
        Log.d("VideosBaseFragment", "refresh");
        loadData(false);
    }

    public void s1(final int i) {
        if (this.M == null || this.t == null) {
            return;
        }
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.p1(i);
            }
        };
        if (this.M.isComputingLayout()) {
            this.M.post(runnable);
        } else {
            runnable.run();
        }
    }

    @Override
    public void selectAll(boolean z) {
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null) {
            bucketDateAdapter.R(z);
        }
    }

    public void t(boolean z) {
    }

    public final void t1() {
        ThreadUtils.o().removeCallbacks(this.R);
        ThreadUtils.o().postDelayed(this.R, 800L);
    }

    public void u1(BaseQuickAdapter baseQuickAdapter, View view, int i, boolean z) {
        if (baseQuickAdapter.getData().size() == 0) {
            return;
        }
        ((BucketDateAdapter) baseQuickAdapter).T((MediaItem) baseQuickAdapter.getData().get(i), z == ((CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox)).isChecked(), i);
    }

    public void v1(List list) {
        cc0.c(this.M, this.t, list);
    }

    public void w1(boolean z) {
        BucketDateAdapter bucketDateAdapter;
        this.L = z;
        if (this.isInEditMode) {
            if (this.mEditModeListener != null && (bucketDateAdapter = this.t) != null) {
                ArrayList arrayListD = bucketDateAdapter.D();
                boolean z2 = false;
                int size = arrayListD != null ? arrayListD.size() : 0;
                int iO0 = O0();
                if (size != 0 && size == iO0) {
                    z2 = true;
                }
                this.mEditModeListener.b(arrayListD, z2, this.L);
            }
            C1();
        }
    }

    public void x1() {
        boolean zT0 = T0();
        if (zT0) {
            P0();
        }
        View view = this.q;
        if (view != null) {
            view.setVisibility(zT0 ? 0 : 8);
        }
        ImageView imageView = this.u;
        if (imageView != null && !this.isInEditMode) {
            imageView.setVisibility(zT0 ? 8 : 0);
        }
        View view2 = this.mSortIv;
        if (view2 != null && !this.isInEditMode) {
            view2.setEnabled(!zT0);
            this.mSortIv.setVisibility(zT0 ? 8 : 0);
        }
        TextView textView = this.x;
        if (textView != null && !this.isInEditMode) {
            textView.setVisibility(zT0 ? 8 : 0);
        }
        hideLoadingView();
    }

    public void z1(int i) {
        BucketDateAdapter bucketDateAdapter;
        this.w = i;
        if (this.mTitleTv != null && getContext() != null) {
            if (i == 0) {
                this.mTitleTv.setText(getContext().getString(R.string.none_select));
            } else {
                this.mTitleTv.setText(getContext().getString(i > 1 ? R.string.items : R.string.item, Integer.valueOf(i)));
            }
        }
        CheckBox checkBox = this.mAllCheckBox;
        if (checkBox != null) {
            checkBox.setChecked(i != 0 && i == O0());
        }
        C1();
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar == null || (bucketDateAdapter = this.t) == null) {
            return;
        }
        dVar.b(bucketDateAdapter.D(), i != 0 && i == O0(), this.L);
    }
}
