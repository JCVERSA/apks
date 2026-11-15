package com.transsion.playercommon.fragments;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.effectengine.bounceeffect.IOverScrollDecor;
import com.transsion.effectengine.bounceeffect.IOverScrollListener;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.widgets.SortGroup;
import com.transsion.playercommon.widgets.SortItem;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import defpackage.af9;
import defpackage.av3;
import defpackage.h27;
import defpackage.oa1;
import defpackage.pz5;
import defpackage.w6c;
import defpackage.ydc;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class PlayBaseFragment extends BaseFragment implements View.OnClickListener, h27.b, AppBarLayout.OnOffsetChangedListener {
    protected static final int HISTORY_LOAD_DATA_DELAY = 100;
    protected static final int LOAD_DATA_DELAY = 800;
    private static final String TAG = "PlayBaseFragment";
    protected SortItem gridModeItem;
    protected boolean isInEditMode;
    protected SortItem listModeItem;
    protected ImageView mAddSongIv;
    protected CheckBox mAllCheckBox;
    private int mAppBarHeight;
    protected AppBarLayout mAppBarLayout;
    private ViewGroup.LayoutParams mAppBarLayoutParams;
    protected ImageView mAudioSortPoint;
    protected View mBackIv;
    protected b mBounceListener;
    protected ConstraintLayout mDragAnimationView;
    protected c mDragModeListener;
    protected d mEditModeListener;
    protected int mEmptyPaddingBottom;
    protected int mEmptyPaddingBottomInMulti;
    protected FileOperateUtils mFileOperateUtils;
    protected long mFirstClickTime;
    protected ViewGroup mMenuLayout;
    protected View mMenuMore;
    protected int mOrientation;
    protected IOverScrollDecor mOverScrollDecor;
    protected CustomSwipeRefreshLayout mPullDampingLayout;
    protected e mSearchListener;
    protected View mSortIv;
    protected LinearLayout mSortModeContainer;
    protected PopupWindow mSortPopupWindow;
    protected ViewGroup mTitleBarLayout;
    protected TextView mTitleTv;
    protected CollapsingToolbarLayout mToolBarLayout;
    private int mToolBarLayoutHeight;
    private ViewGroup.LayoutParams mToolBarLayoutParams;
    protected SortItem sortItemCount;
    protected SortItem sortItemDate;
    protected SortItem sortItemLength;
    protected SortItem sortItemManual;
    protected SortItem sortItemName;
    protected SortItem sortItemNum;
    protected SortItem sortItemSize;
    protected RecyclerView.SimpleOnItemTouchListener mSimpleOnItemTouchListener = new a();
    protected IOverScrollListener mOverScrollListener = new IOverScrollListener() {
        @Override
        public final void onOverScrollUpdated(float f) {
            PlayBaseFragment.b0(f);
        }
    };
    protected boolean mIsDialogShowing = false;
    public List<Integer> mEvents = new ArrayList();
    protected Map<Integer, Boolean> showShuffleMap = new HashMap();
    protected Handler mUpdateDataHandler = new Handler(new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            return this.b.c0(message);
        }
    });

    public class a extends RecyclerView.SimpleOnItemTouchListener {
        public a() {
        }
    }

    public interface b {
        void a(IOverScrollDecor iOverScrollDecor);
    }

    public interface c {
    }

    public interface d {
        default void a(boolean z) {
        }

        void b(ArrayList arrayList, boolean z, boolean z2);

        default void c(boolean z, int i) {
        }

        void d(boolean z, int i, boolean z2);
    }

    public interface e {
        void a(int i);
    }

    public void Z(View view) {
        this.mActivity.onBackPressed();
    }

    public static void b0(float f) {
    }

    public final void X(boolean z, View view) {
        if (ingoreClickEvent()) {
            return;
        }
        this.mFirstClickTime = System.currentTimeMillis();
        showSortPopupWindow(view, z);
        ImageView imageView = this.mAudioSortPoint;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        w6c.r(this.mContext, "show_audio_sort_point", false);
    }

    public final void Y(boolean z, boolean z2, View view) {
        if (ingoreClickEvent()) {
            return;
        }
        this.mFirstClickTime = System.currentTimeMillis();
        showSortPopupWindow(view, z, false, z2);
        ImageView imageView = this.mAudioSortPoint;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        w6c.r(this.mContext, "show_audio_sort_point", false);
    }

    public final void a0(float f) {
        if (Float.compare(f, 0.0f) >= 0) {
            ViewGroup.LayoutParams layoutParams = this.mToolBarLayoutParams;
            layoutParams.height = this.mToolBarLayoutHeight + ((int) f);
            this.mToolBarLayout.setLayoutParams(layoutParams);
        }
    }

    public final boolean c0(Message message) {
        if (message.what == 1) {
            loadData(false, true);
        }
        return true;
    }

    public void convertSelectItem(MediaItem mediaItem, boolean z) {
    }

    public final void d0(SortGroup sortGroup, int i, int i2) {
        w6c.s(this.mContext, "video_adapter_grid_type", i2 == -2);
        h27.c().e(1154, Boolean.valueOf(i2 == SortUtil.SortType.MANUAL.getValue()), Integer.valueOf(getListFlag()));
        this.mSortPopupWindow.dismiss();
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
    }

    public final void e0(boolean z, boolean z2, SortGroup sortGroup, int i, int i2) {
        boolean z3 = i2 == SortUtil.SortType.MANUAL.getValue();
        if (z3) {
            onManualSortRequested(sortGroup.getSortByNameValue(), sortGroup.getIsAscending(), z);
        }
        handleManual(z3);
        h27.c().e(1142, Boolean.valueOf(z3), Integer.valueOf(getListFlag()));
        if (!z2) {
            pz5.b(getListFlag());
        }
        this.mSortPopupWindow.dismiss();
    }

    public void editMode(boolean z) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout = this.mPullDampingLayout;
        if (customSwipeRefreshLayout != null) {
            customSwipeRefreshLayout.changeEditMode(z);
        }
    }

    public int getDeleteIconResId() {
        return R.drawable.ic_delete;
    }

    public int getDeleteTextResId() {
        return R.string.delete;
    }

    public ConstraintLayout getDragAnimationView() {
        return this.mDragAnimationView;
    }

    public Point getPopupPosition(View view, View view2, Boolean bool, Boolean bool2) {
        int measuredWidth;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[1];
        int width = iArr[0];
        if (!av3.z()) {
            if (bool.booleanValue() && bool2.booleanValue()) {
                width += view.getWidth() / 2;
                measuredWidth = view2.getMeasuredWidth() / 2;
            }
            return new Point(width, (i - view2.getMeasuredHeight()) - com.transsion.utils.a.d(getContext(), 20.0f));
        }
        measuredWidth = view2.getMeasuredWidth();
        width -= measuredWidth;
        return new Point(width, (i - view2.getMeasuredHeight()) - com.transsion.utils.a.d(getContext(), 20.0f));
    }

    public void handleManual(boolean z) {
    }

    public void inflateOperationBar() {
    }

    public boolean ingoreClickEvent() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.mFirstClickTime;
        Log.w(TAG, "ingoreClickEvent interval:" + jCurrentTimeMillis);
        return Math.abs(jCurrentTimeMillis) < ((long) oa1.a());
    }

    public void initEvents() {
    }

    public void initOverScrollDecor(RecyclerView recyclerView) {
        if (this.mOverScrollDecor == null) {
            this.mOverScrollDecor = OverScrollDecorHelper.setUpOverScroll(recyclerView, 0);
        }
    }

    public void initResources() {
        this.mEmptyPaddingBottom = getContext().getResources().getDimensionPixelSize(R.dimen.main_empty_imgView_marginBottom);
        this.mEmptyPaddingBottomInMulti = getContext().getResources().getDimensionPixelSize(R.dimen.main_empty_imgView_marginBottom_multiWindowMode);
    }

    public void initSortItem(boolean z) {
        int iD = w6c.d(this.mContext, z ? "video_pref_sort_name" : "audio_pref_sort_name", 0);
        View[] viewArr = {this.sortItemDate, this.sortItemName, this.sortItemLength, this.sortItemSize, this.sortItemCount, this.sortItemManual, this.sortItemNum};
        String string = getString(R.string.by_date);
        String string2 = getString(R.string.by_name);
        String string3 = getString(R.string.duration);
        String string4 = getString(R.string.by_size);
        String string5 = getString(R.string.by_count);
        int i = R.string.manual_sorting;
        String[] strArr = {string, string2, string3, string4, string5, getString(i), getString(i)};
        for (int i2 = 0; i2 < 7; i2++) {
            if (i2 == iD) {
                View view = viewArr[i2];
                if (view != null) {
                    view.setContentDescription(strArr[i2]);
                }
            } else {
                View view2 = viewArr[i2];
                if (view2 != null) {
                    view2.setContentDescription(strArr[i2] + getString(R.string.talkback_unselected));
                }
            }
        }
    }

    public void initSortView(View view, final boolean z) {
        this.mSortIv = view.findViewById(R.id.iv_sort);
        this.mAudioSortPoint = (ImageView) view.findViewById(R.id.iv_point);
        View view2 = this.mSortIv;
        if (view2 == null) {
            return;
        }
        view2.setVisibility(0);
        updateAudioSortPointVisibility(z);
        this.mSortIv.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view3) {
                this.b.X(z, view3);
            }
        });
    }

    public void initTitleBar(View view) {
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.title_bar);
        this.mTitleBarLayout = viewGroup;
        if (viewGroup != null) {
            this.mTitleTv = (TextView) view.findViewById(R.id.title_bar_title);
            this.mBackIv = view.findViewById(R.id.title_bar_back);
            updateBackIcon(false);
            this.mBackIv.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.Z(view2);
                }
            });
            this.mAddSongIv = (ImageView) view.findViewById(R.id.iv_add_song);
            this.mMenuMore = view.findViewById(R.id.menu_more);
            this.mAllCheckBox = (CheckBox) view.findViewById(R.id.title_bar_checkBox);
        }
    }

    public void loadData(boolean z, boolean z2) {
    }

    public void nestedScroll(IOverScrollDecor iOverScrollDecor) {
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout != null) {
            ViewGroup.LayoutParams layoutParams = appBarLayout.getLayoutParams();
            this.mAppBarLayoutParams = layoutParams;
            this.mAppBarHeight = layoutParams.height;
            if (this.mToolBarLayout != null && iOverScrollDecor != null) {
                iOverScrollDecor.setDoubleFriction(true);
                ViewGroup.LayoutParams layoutParams2 = this.mToolBarLayout.getLayoutParams();
                this.mToolBarLayoutParams = layoutParams2;
                this.mToolBarLayoutHeight = layoutParams2.height;
                iOverScrollDecor.setOverScrollListener(new IOverScrollListener() {
                    @Override
                    public final void onOverScrollUpdated(float f) {
                        this.a.a0(f);
                    }
                });
            }
            this.mAppBarLayout.bringToFront();
            this.mAppBarLayout.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this);
        }
    }

    public void onClick(View view) {
    }

    @Override
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i = configuration.orientation;
        if (i != this.mOrientation) {
            this.mOrientation = i;
            PopupWindow popupWindow = this.mSortPopupWindow;
            if (popupWindow != null && popupWindow.isShowing()) {
                this.mSortPopupWindow.dismiss();
                this.mSortPopupWindow = null;
            }
        }
        FileOperateUtils fileOperateUtils = this.mFileOperateUtils;
        if (fileOperateUtils == null || fileOperateUtils.M() == null) {
            return;
        }
        this.mFileOperateUtils.M().g(configuration);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initEvents();
        List<Integer> list = this.mEvents;
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<Integer> it = this.mEvents.iterator();
        while (it.hasNext()) {
            h27.c().b(this, it.next().intValue());
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.mUpdateDataHandler.removeCallbacksAndMessages(null);
        List<Integer> list = this.mEvents;
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<Integer> it = this.mEvents.iterator();
        while (it.hasNext()) {
            h27.c().f(this, it.next().intValue());
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        PopupWindow popupWindow = this.mSortPopupWindow;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.mSortPopupWindow.dismiss();
            this.mSortPopupWindow = null;
        }
        CustomSwipeRefreshLayout customSwipeRefreshLayout = this.mPullDampingLayout;
        if (customSwipeRefreshLayout != null) {
            customSwipeRefreshLayout.setOnRefreshListener(null);
        }
        IOverScrollDecor iOverScrollDecor = this.mOverScrollDecor;
        if (iOverScrollDecor != null) {
            iOverScrollDecor.setOverScrollListener(null);
            this.mOverScrollDecor = null;
        }
        if (this.mBounceListener != null) {
            this.mBounceListener = null;
        }
        this.mDragAnimationView = null;
    }

    @Override
    public void onFinishRequestPermission(int i, boolean z) {
        FileOperateUtils fileOperateUtils;
        FileOperateUtils fileOperateUtils2;
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            if (!z) {
                if (i == 1238 || i == 1239) {
                    ToastUtils.s(R.string.operation_fail);
                }
                if (i != 1239 || (fileOperateUtils = this.mFileOperateUtils) == null) {
                    return;
                }
                fileOperateUtils.B(false);
                return;
            }
            if (i == 1239) {
                FileOperateUtils fileOperateUtils3 = this.mFileOperateUtils;
                if (fileOperateUtils3 != null) {
                    fileOperateUtils3.B(true);
                    return;
                }
                return;
            }
            if (i != 1246 || (fileOperateUtils2 = this.mFileOperateUtils) == null) {
                return;
            }
            fileOperateUtils2.m0();
        }
    }

    public void onManualSortRequested(int i, boolean z, boolean z2) {
    }

    @Override
    public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
        IOverScrollDecor iOverScrollDecor = this.mOverScrollDecor;
        if (iOverScrollDecor != null) {
            if (i == 0) {
                iOverScrollDecor.notifyNestedScrollEdgeReached(true);
                this.mOverScrollDecor.notifyNestedScrollFarEdgeReached(false);
            } else {
                iOverScrollDecor.notifyNestedScrollEdgeReached(false);
                this.mOverScrollDecor.notifyNestedScrollFarEdgeReached(Math.abs(i) >= this.mAppBarLayout.getTotalScrollRange());
            }
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        PopupWindow popupWindow = this.mSortPopupWindow;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.mSortPopupWindow.dismiss();
    }

    public void postDelayLoadData() {
        int i;
        this.mUpdateDataHandler.removeMessages(1);
        if (oa1.d()) {
            i = 2000;
        } else {
            i = this.mIsRealVisibleToUser ? 100 : 800;
        }
        this.mUpdateDataHandler.sendEmptyMessageDelayed(1, i);
    }

    public void postDelayLoadDataChange() {
        int i;
        this.mUpdateDataHandler.removeMessages(1);
        if (oa1.d()) {
            i = 2000;
        } else {
            i = this.mIsRealVisibleToUser ? 300 : 800;
        }
        this.mUpdateDataHandler.sendEmptyMessageDelayed(1, i);
    }

    @Override
    public void registerForContextMenu(@NonNull View view) {
        super.registerForContextMenu(view);
    }

    @Override
    public void releaseWhenDestroyView() {
        super.releaseWhenDestroyView();
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout != null) {
            appBarLayout.removeOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this);
        }
    }

    public void selectAll(boolean z) {
    }

    public void setAppBar(AppBarLayout appBarLayout, CollapsingToolbarLayout collapsingToolbarLayout) {
        this.mAppBarLayout = appBarLayout;
        this.mToolBarLayout = collapsingToolbarLayout;
    }

    public void setArguments(@Nullable Bundle bundle, int i) {
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, i);
        setArguments(bundle);
    }

    public void setBounceListener(b bVar) {
        this.mBounceListener = bVar;
    }

    public void setDragAnimationView(ConstraintLayout constraintLayout) {
        this.mDragAnimationView = constraintLayout;
    }

    public void setDragModeListener(c cVar) {
    }

    public void setEditModeListener(d dVar) {
        this.mEditModeListener = dVar;
    }

    public void setMainViewModePlayListOperateMode(boolean z) {
        ((MainViewModel) getViewModelByActivity(MainViewModel.class)).f.setValue(Boolean.valueOf(z));
    }

    public void setMainViewModelEditFrom(int i) {
        ((MainViewModel) getViewModelByActivity(MainViewModel.class)).e.setValue(Integer.valueOf(i));
    }

    public void setMainViewModelEditMode(boolean z) {
        if (getActivity() == null) {
            return;
        }
        ((MainViewModel) getViewModelByActivity(MainViewModel.class)).d.setValue(Boolean.valueOf(z));
    }

    public void setOverScrollListener(IOverScrollListener iOverScrollListener) {
        this.mOverScrollListener = iOverScrollListener;
    }

    public void setRvOverScrollDecorListener(RecyclerView recyclerView) {
        if (this.mOverScrollListener != null) {
            initOverScrollDecor(recyclerView);
            IOverScrollDecor iOverScrollDecor = this.mOverScrollDecor;
            if (iOverScrollDecor != null) {
                iOverScrollDecor.setOverScrollListener(this.mOverScrollListener);
            }
        }
    }

    public void setRvSimpleTouchListener(RecyclerView.SimpleOnItemTouchListener simpleOnItemTouchListener) {
        this.mSimpleOnItemTouchListener = simpleOnItemTouchListener;
    }

    public void setSearchListener(e eVar) {
        this.mSearchListener = eVar;
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
    }

    public void showRemoveDialog() {
    }

    public void showSortPopupWindow(View view, boolean z, boolean z2) {
        showSortPopupWindow(view, z, z2, false);
    }

    public void startDragMode(boolean z, int i, boolean z2) {
        Log.d(TAG, "startDragMode: " + z);
    }

    public void startEditMode(boolean z, int i, boolean z2) {
    }

    public void updateAppBarLayoutBehavior(boolean z) {
        CoordinatorLayout.LayoutParams layoutParams;
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout == null || !(appBarLayout.getLayoutParams() instanceof CoordinatorLayout.LayoutParams) || (layoutParams = (CoordinatorLayout.LayoutParams) this.mAppBarLayout.getLayoutParams()) == null) {
            return;
        }
        if (z) {
            layoutParams.setBehavior(null);
        } else {
            layoutParams.setBehavior(new AppBarLayout.Behavior());
        }
        this.mAppBarLayout.setLayoutParams(layoutParams);
    }

    public void updateAudioSortPointVisibility(boolean z) {
        if (this.mAudioSortPoint != null) {
            this.mAudioSortPoint.setVisibility((!w6c.c(this.mContext, "show_audio_sort_point", true) || ydc.e() || z || this.mSortIv.getVisibility() != 0) ? 8 : 0);
            StringBuilder sb = new StringBuilder();
            sb.append("mAudioSortPoint showPoint:");
            sb.append(this.mAudioSortPoint.getVisibility() == 0);
            Log.v(TAG, sb.toString());
        }
    }

    public void updateBackIcon(boolean z) {
        View view = this.mBackIv;
        if (view instanceof TextView) {
            ((TextView) view).setText(z ? R.string.os_close : R.string.os_back);
            this.mBackIv.setContentDescription(getString(z ? R.string.talkback_close : R.string.talkback_back));
        }
    }

    public void loadData(boolean z) {
        Log.d(TAG, "loadData:" + this.mIsVisibleToUser + ", " + z + ", " + this);
        loadData(z, false);
    }

    public void showSortPopupWindow(View view, boolean z) {
        showSortPopupWindow(view, z, false);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:57:0x020f  */
    public void showSortPopupWindow(View view, final boolean z, boolean z2, final boolean z3) {
        int i;
        int measuredWidth;
        if (System.currentTimeMillis() - af9.d < 1500) {
            return;
        }
        if (getContext() == null) {
            Log.e(TAG, "showSortPopupWindow failed");
            return;
        }
        af9.d = System.currentTimeMillis();
        PopupWindow popupWindow = new PopupWindow();
        this.mSortPopupWindow = popupWindow;
        popupWindow.setAnimationStyle(R.style.popup_anim);
        this.mSortPopupWindow.setElevation(getResources().getDimension(R.dimen.os_popup_menu_shadow_size));
        this.mSortPopupWindow.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.os_popup_background, getContext().getTheme()));
        View viewInflate = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.video_sort_item_list, (ViewGroup) null);
        SortGroup sortGroup = (SortGroup) viewInflate.findViewById(R.id.sort_by_group);
        SortItem sortItem = (SortItem) viewInflate.findViewById(R.id.item_by_order_num);
        this.sortItemNum = sortItem;
        int i2 = 8;
        sortItem.setVisibility((Build.VERSION.SDK_INT <= 29 || !z3) ? 8 : 0);
        this.sortItemDate = (SortItem) viewInflate.findViewById(R.id.item_by_date);
        this.sortItemName = (SortItem) viewInflate.findViewById(R.id.item_by_name);
        this.sortItemLength = (SortItem) viewInflate.findViewById(R.id.item_by_length);
        this.sortItemSize = (SortItem) viewInflate.findViewById(R.id.item_by_size);
        this.sortItemCount = (SortItem) viewInflate.findViewById(R.id.item_by_count);
        this.sortItemManual = (SortItem) viewInflate.findViewById(R.id.item_by_manual);
        this.mSortModeContainer = (LinearLayout) viewInflate.findViewById(R.id.ll_mode_item_container);
        if (z) {
            SortGroup sortGroup2 = (SortGroup) viewInflate.findViewById(R.id.mode_by_group);
            this.listModeItem = (SortItem) viewInflate.findViewById(R.id.tv_list_mode);
            this.gridModeItem = (SortItem) viewInflate.findViewById(R.id.tv_grid_mode);
            if (w6c.c(this.mContext, "video_adapter_grid_type", false)) {
                this.gridModeItem.setSelected(true, false);
            } else {
                this.listModeItem.setSelected(true, false);
            }
            sortGroup2.setOnSelectedChangeListener(new SortGroup.b() {
                @Override
                public final void a(SortGroup sortGroup3, int i3, int i4) {
                    this.a.d0(sortGroup3, i3, i4);
                }
            });
        }
        if (z3) {
            this.sortItemNum.setFrom(1001);
            this.sortItemDate.setFrom(1001);
            this.sortItemName.setFrom(1001);
            this.sortItemLength.setFrom(1001);
            this.sortItemSize.setFrom(1001);
            this.sortItemCount.setFrom(1001);
            this.sortItemManual.setFrom(1001);
        }
        SortItem sortItem2 = this.sortItemManual;
        if (!z && !z2) {
            i2 = 0;
        }
        sortItem2.setVisibility(i2);
        sortGroup.setIsSortVideo(z, z3);
        initSortItem(z);
        sortGroup.setOnSelectedChangeListener(new SortGroup.b() {
            @Override
            public final void a(SortGroup sortGroup3, int i3, int i4) {
                this.a.e0(z3, z, sortGroup3, i3, i4);
            }
        });
        this.mSortPopupWindow.setFocusable(true);
        this.mSortPopupWindow.setOutsideTouchable(true);
        this.mSortPopupWindow.setWidth(-2);
        this.mSortPopupWindow.setHeight(-2);
        this.mSortPopupWindow.setContentView(viewInflate);
        viewInflate.measure(0, 0);
        boolean z4 = getContext().getResources().getConfiguration().orientation == 2;
        Context context = this.mContext;
        boolean zIsInMultiWindowMode = context instanceof BaseActivity ? ((BaseActivity) context).isInMultiWindowMode() : false;
        if (!av3.z()) {
            if (zIsInMultiWindowMode && z4) {
                measuredWidth = viewInflate.getMeasuredWidth() - (view.getWidth() / 2);
            } else {
                i = 0;
            }
            int iD = (-(viewInflate.getMeasuredHeight() / 2)) - com.transsion.utils.a.d(getContext(), 20.0f);
            if (com.transsion.utils.a.z(getContext().getResources().getConfiguration())) {
                if (getActivity() != null || getActivity().isFinishing() || getActivity().isDestroyed()) {
                    return;
                }
                if (!com.transsion.utils.a.y(getContext(), view) && z) {
                    Point popupPosition = getPopupPosition(view, viewInflate, Boolean.valueOf(zIsInMultiWindowMode), Boolean.valueOf(z4));
                    this.mSortPopupWindow.showAtLocation(view, 0, popupPosition.x, popupPosition.y);
                    return;
                } else {
                    this.mSortPopupWindow.showAsDropDown(view, i, iD);
                    return;
                }
            }
            if (getActivity() != null || getActivity().isFinishing() || getActivity().isDestroyed()) {
                return;
            }
            if (!com.transsion.utils.a.y(getContext(), view) && z) {
                Point popupPosition2 = getPopupPosition(view, viewInflate, Boolean.valueOf(zIsInMultiWindowMode), Boolean.valueOf(z4));
                this.mSortPopupWindow.showAtLocation(view, 0, popupPosition2.x, popupPosition2.y);
                return;
            } else {
                this.mSortPopupWindow.showAsDropDown(view, i, 0);
                return;
            }
        }
        measuredWidth = view.getWidth();
        i = -measuredWidth;
        int iD2 = (-(viewInflate.getMeasuredHeight() / 2)) - com.transsion.utils.a.d(getContext(), 20.0f);
        if (com.transsion.utils.a.z(getContext().getResources().getConfiguration())) {
            if (getActivity() != null) {
            }
        } else if (getActivity() != null) {
        }
    }

    public void initSortView(View view, final boolean z, final boolean z2) {
        this.mSortIv = view.findViewById(R.id.iv_sort);
        this.mAudioSortPoint = (ImageView) view.findViewById(R.id.iv_point);
        View view2 = this.mSortIv;
        if (view2 == null) {
            return;
        }
        view2.setVisibility(0);
        updateAudioSortPointVisibility(z);
        this.mSortIv.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view3) {
                this.b.Y(z, z2, view3);
            }
        });
    }
}
