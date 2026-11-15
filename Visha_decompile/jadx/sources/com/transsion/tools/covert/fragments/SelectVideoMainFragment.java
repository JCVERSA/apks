package com.transsion.tools.covert.fragments;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.effectengine.bounceeffect.IOverScrollDecor;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.magicvideo.adapter.BucketDateAdapter;
import com.transsion.magicvideo.fragments.VideosBaseFragment;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.RtlPageAdapter;
import com.transsion.playercommon.convert.ConvertingTaskManager;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.fragments.SimpleBottomSheetDialog;
import com.transsion.playercommon.utils.views.HalfListDialogFragmentUtil;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.widgets.SearchFileView;
import com.transsion.tools.R;
import com.transsion.tools.covert.fragments.SelectVideoMainFragment;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.widgets.BadgeView;
import com.transsion.widgets.CustomTabLayout;
import com.transsion.widgets.RtlViewPager;
import com.transsion.widgetslib.view.OSBigButton;
import com.transsion.widgetslib.widget.SearchBar;
import defpackage.h27;
import defpackage.k16;
import defpackage.k29;
import defpackage.ls1;
import defpackage.mc7;
import defpackage.oc2;
import defpackage.p06;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SelectVideoMainFragment extends PlayBaseFragment implements View.OnClickListener {
    public RelativeLayout A;
    public MainViewModel B;
    public LinearLayout l;
    public CustomTabLayout m;
    public RtlViewPager n;
    public RtlPageAdapter o;
    public List p;
    public TextView q;
    public ImageView r;
    public ImageView s;
    public SearchBar t;
    public Button u;
    public BadgeView v;
    public SearchFileView y;
    public SearchFileView.f z;
    public ArrayList w = new ArrayList();
    public ArrayList x = new ArrayList();
    public final Observer C = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.H0((Boolean) obj);
        }
    };

    public class a implements View.OnLayoutChangeListener {
        public final View b;

        public a(View view) {
            this.b = view;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.b.removeOnLayoutChangeListener(this);
            int width = view.getWidth();
            if (width <= 0) {
                return;
            }
            int iMin = Math.min((int) (width * 0.3f), com.transsion.utils.a.d(SelectVideoMainFragment.this.requireContext(), 320.0f));
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) SelectVideoMainFragment.this.u.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) SelectVideoMainFragment.this.A.getLayoutParams();
            layoutParams.width = iMin;
            layoutParams.gravity = 1;
            layoutParams2.gravity = 1;
            layoutParams2.setMarginEnd((iMin / 2) + com.transsion.utils.a.d(SelectVideoMainFragment.this.requireContext(), 50.0f));
            SelectVideoMainFragment.this.u.setLayoutParams(layoutParams);
            SelectVideoMainFragment.this.A.setLayoutParams(layoutParams2);
        }
    }

    public class b implements SearchFileView.f {
        public b() {
        }

        @Override
        public void a(MediaItem mediaItem, boolean z) {
            SelectVideoMainFragment.this.convertSelectItem(mediaItem, z);
            k16.c(0, z);
        }

        @Override
        public void b() {
        }
    }

    public class c implements BaseFragment.d {
        public c() {
        }

        @Override
        public void a(boolean z) {
            if (SelectVideoMainFragment.this.n.getCurrentItem() == 0) {
                SelectVideoMainFragment.this.S0(z);
            }
        }
    }

    public class d implements ViewPager.OnPageChangeListener {
        public d() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override
        public void onPageSelected(int i) {
            if (i != 0) {
                SelectVideoMainFragment.this.S0(false);
            } else {
                SelectVideoMainFragment.this.S0(!((VideosSelectFragment) SelectVideoMainFragment.this.p.get(0)).R0());
            }
        }
    }

    private void C0() {
        this.mBounceListener = new PlayBaseFragment.b() {
            @Override
            public final void a(IOverScrollDecor iOverScrollDecor) {
                this.a.G0(iOverScrollDecor);
            }
        };
        this.p = new ArrayList();
        VideosBaseFragment videosBaseFragment = (VideosBaseFragment) VideosSelectFragment.S1(9).setBaseActivity((BaseActivity) getActivity());
        videosBaseFragment.setBounceListener(this.mBounceListener);
        videosBaseFragment.setMenuShowListener(new c());
        videosBaseFragment.setAppBar(this.mAppBarLayout, this.mToolBarLayout);
        this.p.add(videosBaseFragment);
        VideosBaseFragment videosBaseFragment2 = (VideosBaseFragment) new VideoPlayListFolderConvertFragment().setBaseActivity((BaseActivity) getActivity());
        videosBaseFragment2.setBounceListener(this.mBounceListener);
        this.p.add(videosBaseFragment2);
        VideosBaseFragment videosBaseFragment3 = (VideosBaseFragment) new FoldersConvertFragment().setBaseActivity((BaseActivity) getActivity());
        videosBaseFragment3.setBounceListener(this.mBounceListener);
        videosBaseFragment3.setAppBar(this.mAppBarLayout, this.mToolBarLayout);
        this.p.add(videosBaseFragment3);
        RtlPageAdapter rtlPageAdapter = new RtlPageAdapter(getChildFragmentManager(), this.p, getResources().getStringArray(R.array.video_tab_list));
        this.o = rtlPageAdapter;
        this.n.setOffscreenPageLimit(rtlPageAdapter.getCount());
        this.n.setAdapter(this.o);
        this.n.addOnPageChangeListener(new d());
        OverScrollDecorHelper.setUpOverScroll(this.n);
        this.m.setupWithViewPager(this.n);
        this.m.isFirstLevelTab(true);
    }

    public static void F0(Throwable th) {
    }

    public void J0(View view) {
        this.mActivity.onBackPressed();
    }

    public static void K0() {
        h27.c().e(1104, Boolean.TRUE);
    }

    public static void P0(DialogFragment dialogFragment, DialogInterface dialogInterface) {
        ConvertingTaskManager.j().E("select_convert_videos_tag");
        dialogFragment.dismiss();
    }

    public void S0(boolean z) {
        this.mSortIv.setVisibility(z ? 0 : 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addBottomBarShowStateObserver() {
        MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.B = mainViewModel;
        mainViewModel.g.observe(getViewLifecycleOwner(), this.C);
        notifyVideoBarShowStateChange(((Boolean) this.B.g.getValue()).booleanValue());
    }

    public final void E0(ArrayList arrayList) {
        this.w.clear();
        this.w.addAll(arrayList);
        this.x.clear();
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            this.x.add(Integer.valueOf(((MediaItem) it.next()).id));
        }
        ConvertingTaskManager.j().g();
        ConvertingTaskManager.j().M(arrayList);
        a1();
    }

    public boolean B0() {
        return this.mbFragmentShowCompleted;
    }

    public final ArrayList D0(SelectVideoMainFragment selectVideoMainFragment) {
        ArrayList arrayList = new ArrayList(tpb.j0().a(this.x));
        ls1.a(arrayList);
        return arrayList;
    }

    public final void G0(IOverScrollDecor iOverScrollDecor) {
        nestedScroll(iOverScrollDecor);
    }

    public final void H0(Boolean bool) {
        notifyVideoBarShowStateChange(bool.booleanValue());
    }

    public final void I0(View view, View view2) {
        V0(view);
        p06.J(3);
    }

    public final void L0(SimpleBottomSheetDialog simpleBottomSheetDialog, View view) {
        X0(simpleBottomSheetDialog, view, this.mContext);
    }

    public final void M0() {
        this.y.showOrHideKeyboard(true);
    }

    public final void N0(DialogFragment dialogFragment, View view) {
        dialogFragment.dismiss();
        U0();
    }

    public final void O0(BucketDateAdapter bucketDateAdapter, DialogFragment dialogFragment, TextView textView, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (R.id.iv_bucket_fragment_item_more != view.getId() || i >= baseQuickAdapter.getData().size()) {
            return;
        }
        convertSelectItem((MediaItem) baseQuickAdapter.getData().get(i), false);
        Y0(bucketDateAdapter, dialogFragment, textView);
        p06.d0("moretab_tomp3_addcart_delete");
    }

    public final void Q0(BucketDateAdapter bucketDateAdapter, DialogFragment dialogFragment, TextView textView, int i) {
        Y0(bucketDateAdapter, dialogFragment, textView);
    }

    public final void R0() {
        this.mActivity.onBackPressed();
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity == null || baseActivity.getWindow() == null) {
            return;
        }
        this.mActivity.getWindow().getDecorView().post(new Runnable() {
            @Override
            public final void run() {
                SelectVideoMainFragment.K0();
            }
        });
    }

    public final void T0() {
        HalfListDialogFragmentUtil halfListDialogFragmentUtil = new HalfListDialogFragmentUtil(this.mContext, "select_convert_videos_tag", R.layout.convert_video_dialog_list);
        halfListDialogFragmentUtil.f(1);
        halfListDialogFragmentUtil.e(new HalfListDialogFragmentUtil.a() {
            @Override
            public final void a(SimpleBottomSheetDialog simpleBottomSheetDialog, View view) {
                this.a.L0(simpleBottomSheetDialog, view);
            }
        });
        halfListDialogFragmentUtil.g();
    }

    public final void U0() {
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            ConvertingTaskManager.j().B((MediaItem) it.next());
        }
        ConvertingTaskManager.j().t(new ArrayList(this.w));
        ConvertingTaskManager.j().g();
        k16.a(this.x.size(), "moretab_tomp3_convert_cl");
        R0();
    }

    public void V0(View view) {
        SearchFileView searchFileView = this.y;
        if (searchFileView == null) {
            SearchFileView searchFileView2 = (SearchFileView) ((ViewStub) view.findViewById(R.id.search_video_layout)).inflate();
            this.y = searchFileView2;
            searchFileView2.multiWindowModeChanged(this.mActivity.isInMultiWindowMode());
            this.y.setSearchType(1);
            this.y.setIsSelectConvertVideoMode(true);
            if (this.z == null) {
                this.z = new b();
            }
            this.y.setSearchSelectCallBack(this.z);
        } else {
            searchFileView.setVisibility(0);
        }
        this.y.post(new Runnable() {
            @Override
            public final void run() {
                this.b.M0();
            }
        });
    }

    public final void W0() {
        Button button;
        if (!com.transsion.utils.a.A() || (button = this.u) == null || this.A == null) {
            return;
        }
        if (button instanceof OSBigButton) {
            ((OSBigButton) button).setMinButtonHeightDp(46);
        }
        View view = (View) this.u.getParent();
        if (view == null) {
            return;
        }
        view.addOnLayoutChangeListener(new a(view));
    }

    public final void X0(final DialogFragment dialogFragment, View view, Context context) {
        final TextView textView = (TextView) view.findViewById(R.id.tv_select_title);
        ((Button) view.findViewById(R.id.bt_start_converting)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.N0(dialogFragment, view2);
            }
        });
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.rv_select_list);
        final BucketDateAdapter bucketDateAdapter = new BucketDateAdapter(context);
        bucketDateAdapter.U(false);
        bucketDateAdapter.X(38);
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(context));
        recyclerView.setAdapter(bucketDateAdapter);
        bucketDateAdapter.setNewData(this.w);
        Y0(bucketDateAdapter, dialogFragment, textView);
        bucketDateAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.a.O0(bucketDateAdapter, dialogFragment, textView, baseQuickAdapter, view2, i);
            }
        });
        dialogFragment.getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                SelectVideoMainFragment.P0(dialogFragment, dialogInterface);
            }
        });
        ConvertingTaskManager.j().K("select_convert_videos_tag", new ConvertingTaskManager.b() {
            @Override
            public final void q(int i) {
                this.b.Q0(bucketDateAdapter, dialogFragment, textView, i);
            }
        });
    }

    public final void Y0(BaseQuickAdapter baseQuickAdapter, DialogFragment dialogFragment, TextView textView) {
        baseQuickAdapter.setNewData(this.w);
        int size = this.w.size();
        if (size == 0) {
            dialogFragment.dismiss();
        }
        Context context = this.mContext;
        if (context != null) {
            textView.setText(context.getResources().getString(size > 1 ? R.string.select_items : R.string.select_item, Integer.valueOf(size), 10));
        }
    }

    public final void Z0() {
        final int size = this.w.size();
        if (size == 0) {
            this.q.setText(R.string.none_select);
        } else {
            this.q.setText(getResources().getString(size > 1 ? R.string.select_items : R.string.select_item, Integer.valueOf(size), 10));
        }
        this.v.setVisibility(size > 0 ? 0 : 8);
        this.v.post(new Runnable() {
            @Override
            public void run() {
                SelectVideoMainFragment.this.v.setNum(size);
                if (size > 9) {
                    SelectVideoMainFragment.this.v.requestLayout();
                }
            }
        });
    }

    public final void a1() {
        this.u.setEnabled(!this.w.isEmpty());
        Z0();
        if (this.w.isEmpty()) {
            this.s.setImageResource(R.drawable.ic_wait_convert_list);
            return;
        }
        RequestBuilder<Bitmap> requestBuilderApply = Glide.with(this).asBitmap().apply((BaseRequestOptions<?>) new RequestOptions().transform(new CenterCrop(), new RoundedCorners(oc2.a(this.mContext, 8.0f))));
        ArrayList arrayList = this.w;
        requestBuilderApply.load2(((MediaItem) arrayList.get(arrayList.size() - 1)).uri).override(108, 108).placeholder(getResources().getDrawable(R.drawable.ic_wait_convert_list, this.mContext.getTheme())).into(this.s);
    }

    @Override
    public void convertSelectItem(MediaItem mediaItem, boolean z) {
        super.convertSelectItem(mediaItem, z);
        if (z) {
            this.x.add(Integer.valueOf(mediaItem.id));
            this.w.add(mediaItem);
        } else {
            this.w.remove(mediaItem);
            this.x.remove(Integer.valueOf(mediaItem.id));
        }
        ConvertingTaskManager.j().M(this.w);
        a1();
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i != 1111) {
            return;
        }
        convertSelectItem((MediaItem) objArr[0], ((Boolean) objArr[1]).booleanValue());
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1111);
    }

    @Override
    public void loadData(boolean z) {
        super.loadData(z);
        z0();
    }

    public void notifyVideoBarShowStateChange(boolean z) {
        Log.d("SelectVideoMainFragment", "notifyVideoBarShowStateChange :" + z);
        LinearLayout linearLayout = this.l;
        if (linearLayout != null) {
            applyPaddingBottomWithNav(linearLayout, com.transsion.utils.a.d(this.mContext, z ? 60.0f : 0.0f));
        }
    }

    @Override
    public void onClick(View view) {
        super.onClick(view);
        if (R.id.iv_wait_convert_list == view.getId()) {
            if (!this.w.isEmpty()) {
                T0();
            }
            k16.a(this.x.size(), "moretab_tomp3_addcart_cl");
        } else if (R.id.start_converting == view.getId()) {
            U0();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        W0();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        SearchFileView searchFileView = this.y;
        if (searchFileView != null) {
            searchFileView.setSearchSelectCallBack(null);
            this.z = null;
        }
        RtlViewPager rtlViewPager = this.n;
        if (rtlViewPager != null) {
            rtlViewPager.setAdapter(null);
        }
        List list = this.p;
        if (list != null) {
            list.clear();
        }
    }

    @Override
    public void onFragmentAnimationEnd(Animation animation) {
        super.onFragmentAnimationEnd(animation);
        this.mbFragmentShowCompleted = true;
        h27.c().e(1118, new Object[0]);
    }

    @Override
    public int onLayoutId() {
        return com.transsion.utils.a.A() ? R.layout.select_video_main_fragment_tablet : R.layout.select_video_main_fragment;
    }

    @Override
    public void onResume() {
        super.onResume();
        loadData(false);
    }

    @Override
    public void onViewCreated(final View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.needBg) {
            backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(com.transsion.audio.R.dimen.video_main_activity_fragment_top_padding));
        }
        this.l = (LinearLayout) view.findViewById(R.id.container_ll);
        initSortView(view, true);
        this.m = (CustomTabLayout) view.findViewById(R.id.tab_layout);
        this.n = (RtlViewPager) view.findViewById(R.id.show_select_video_pager);
        this.mAppBarLayout = (AppBarLayout) view.findViewById(com.transsion.magicvideo.R.id.app_bar);
        this.q = (TextView) view.findViewById(R.id.tv_covert_title);
        this.r = (ImageView) view.findViewById(R.id.ic_covert_close);
        ImageView imageView = (ImageView) view.findViewById(R.id.iv_wait_convert_list);
        this.s = imageView;
        imageView.setOnClickListener(this);
        Button button = (Button) view.findViewById(R.id.start_converting);
        this.u = button;
        button.setOnClickListener(this);
        this.A = (RelativeLayout) view.findViewById(R.id.iv_convert_layout);
        this.v = (BadgeView) view.findViewById(R.id.bv_convert_count);
        SearchBar searchBar = (SearchBar) view.findViewById(R.id.search_bar_title);
        this.t = searchBar;
        searchBar.setHint(R.string.search_video);
        this.t.getLinearRootView().setBackgroundColor(getResources().getColor(com.transsion.magicvideo.R.color.transparent));
        ((InsetDrawable) this.t.getEditText().getBackground()).setAlpha(234);
        this.t.getEditText().setFocusable(false);
        this.t.getEditText().setElegantTextHeight(false);
        this.t.getEditText().setTextDirection(5);
        this.t.getEditText().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.I0(view, view2);
            }
        });
        this.r.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.J0(view2);
            }
        });
        this.r.setVisibility(0);
        C0();
        addBottomBarShowStateObserver();
        W0();
    }

    public final void z0() {
        mc7.K(this).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.D0((SelectVideoMainFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.E0((ArrayList) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                SelectVideoMainFragment.F0((Throwable) obj);
            }
        });
    }
}
