package com.transsion.sniffer_load.fragment;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Outline;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewStub;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.launcher.ARouter;
import com.blankj.utilcode.util.ClickUtils$OnDebouncingClickListener;
import com.blankj.utilcode.util.LogUtils;
import com.bumptech.glide.Glide;
import com.tencent.mmkv.MMKV;
import com.transsion.WindowInfoViewModel;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoData;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.dbdata.beans.sniff.SearchKey;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.livecaption.constant.ICode;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.vishaapis.appconfig.helper.CloudFeaturesConfigHelper;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.SearchActivity;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.sniffer_load.adapter.DownloadMainItemAdapter;
import com.transsion.sniffer_load.adapter.MediaLibraryListAdapter;
import com.transsion.sniffer_load.viewmodel.DownloadMainViewModel;
import com.transsion.sniffer_load.widgets.ClickAdapterViewFlipper;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import com.transsion.widgetslib.util.search.SearchAnimManager;
import com.transsion.widgetslib.widget.SearchBar;
import defpackage.az5;
import defpackage.b23;
import defpackage.f5;
import defpackage.fi1;
import defpackage.hb0;
import defpackage.icc;
import defpackage.jf;
import defpackage.oc2;
import defpackage.p06;
import defpackage.w6c;
import defpackage.woc;
import defpackage.zz0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class DownloadRecommendFragment extends PlayBaseFragment {
    public ClickAdapterViewFlipper A;
    public boolean C;
    public boolean E;
    public boolean F;
    public View I;
    public RecyclerView l;
    public RecyclerView m;
    public DownloadMainItemAdapter n;
    public MediaLibraryListAdapter o;
    public DownloadMainViewModel p;
    public MainViewModel q;
    public boolean s;
    public WindowInfoViewModel t;
    public View u;
    public boolean v;
    public SearchBar y;
    public View z;
    public boolean r = false;
    public ArrayList w = new ArrayList();
    public final Observer x = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.U0((Boolean) obj);
        }
    };
    public icc B = new icc(getContext());
    public List D = new ArrayList();
    public List G = new ArrayList();
    public SharedPreferences.OnSharedPreferenceChangeListener H = new SharedPreferences.OnSharedPreferenceChangeListener() {
        @Override
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            this.a.V0(sharedPreferences, str);
        }
    };
    public final Observer J = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.W0((woc) obj);
        }
    };

    public class a extends ViewOutlineProvider {
        public a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), oc2.a(DownloadRecommendFragment.this.getContext(), 12.0f));
        }
    }

    public class b extends ClickUtils$OnDebouncingClickListener {
        public final Bookmark f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(final boolean z, final long j, Bookmark bookmark) {
            new View.OnClickListener(z, j) {
                public static boolean d = true;
                public static final Runnable e = new Runnable() {
                    @Override
                    public void run() {
                        boolean unused = ClickUtils$OnDebouncingClickListener.d = true;
                    }
                };
                public final long b;
                public final boolean c;

                {
                    this.c = z;
                    this.b = j;
                }

                public static boolean b(View view, long j2) {
                    return h.E(view, j2);
                }

                public abstract void c(View view);

                @Override
                public final void onClick(View view) {
                    if (!this.c) {
                        if (b(view, this.b)) {
                            c(view);
                        }
                    } else if (d) {
                        d = false;
                        view.postDelayed(e, this.b);
                        c(view);
                    }
                }
            };
            this.f = bookmark;
        }

        @Override
        public void c(View view) {
            DownloadRecommendFragment.this.z0(this.f);
        }
    }

    public class c implements Observer {
        public c() {
        }

        @Override
        public void onChanged(Boolean bool) {
            if (bool.booleanValue()) {
                Bookmark bookmark = (Bookmark) w6c.f(jf.c(), "last_web");
                w6c.r(DownloadRecommendFragment.this.getContext(), "DownLoadMainFragmentNew_ismPopUpWebShow", true);
                DownloadRecommendFragment.this.A0(bookmark);
            }
        }
    }

    public class d implements MediaLibraryListAdapter.a {
        public d() {
        }

        @Override
        public void a(MIMediaLibraryData mIMediaLibraryData, MIMediaVideoData mIMediaVideoData) {
            Log.i("DownloadRecommendFragment", "onVideoClick ：" + mIMediaVideoData);
            if (MainApp.w == 0) {
                ToastUtils.s(R.string.net_not_connect);
                return;
            }
            VideoPlayerActivityInner.F2(DownloadRecommendFragment.this.getContext(), MIMediaDataUtils.INSTANCE.mediaVideoToPlayVideoData(mIMediaLibraryData, mIMediaVideoData, 1004));
            az5.f(mIMediaLibraryData.getMediaLibraryId(), mIMediaLibraryData.getMediaLibraryName(), mIMediaLibraryData.getVirtualPersonName(), mIMediaLibraryData.getVirtualPersonPhoto(), mIMediaVideoData.getSourceId(), mIMediaVideoData.getTitle());
        }

        @Override
        public void b(MIMediaLibraryData mIMediaLibraryData) {
            Log.i("DownloadRecommendFragment", "onMediaLibraryClick ：" + mIMediaLibraryData.toString());
            ARouter.getInstance().build(VishaRouterTable.PATH_PAGE_ACTIVITY_MEDIA_LIBRARY_VIDEO).withString("mediaLibraryId", mIMediaLibraryData.getMediaLibraryId()).withString("mediaLibraryName", mIMediaLibraryData.getMediaLibraryName()).navigation();
            az5.e(mIMediaLibraryData.getMediaLibraryId(), mIMediaLibraryData.getMediaLibraryName(), mIMediaLibraryData.getVirtualPersonName(), mIMediaLibraryData.getVirtualPersonPhoto());
        }
    }

    private void C0() {
        DownloadMainViewModel downloadMainViewModel = (DownloadMainViewModel) getViewModelByFragment(DownloadMainViewModel.class);
        this.p = downloadMainViewModel;
        downloadMainViewModel.f(this.mActivity);
        this.p.j().observe(this.mActivity, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.M0((SearchKey) obj);
            }
        });
        String strL = MMKV.p().l("mmkv_search_keys");
        if (!TextUtils.isEmpty(strL) && getView() != null) {
            E0(getView(), (SearchKey) fi1.b(strL, SearchKey.class));
        }
        this.p.i().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.N0((DownloadMain) obj);
            }
        });
        B0();
    }

    private void D0() {
        LiveEventBus.b().d("web_activity_back").observe(this, new c());
        LiveEventBus.b().d("media_library_data_flag").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.O0((Boolean) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addBottomBarShowStateObserver() {
        if (!isAdded() || isDetached() || getView() == null) {
            return;
        }
        MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.q = mainViewModel;
        mainViewModel.g.observe(getViewLifecycleOwner(), this.x);
        Boolean bool = (Boolean) this.q.g.getValue();
        notifyVideoBarShowStateChange(bool != null && bool.booleanValue());
    }

    public void lambda$onViewCreated$0() {
        if (!isAdded() || this.mPullDampingLayout == null) {
            return;
        }
        F0();
    }

    private int y0() {
        return (com.transsion.utils.a.A() && getResources().getConfiguration().orientation == 2) ? 7 : 4;
    }

    public void A0(Bookmark bookmark) {
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity == null || baseActivity.isDestroyed()) {
            return;
        }
        if (bookmark == null) {
            LogUtils.l("DownloadRecommendFragment", "inflateWebPopupView null bookmark");
            return;
        }
        if (getView() == null) {
            return;
        }
        if (this.I == null) {
            View viewFindViewById = getView().findViewById(R.id.web_pop_up_bar);
            this.I = viewFindViewById;
            ((ImageView) viewFindViewById.findViewById(R.id.iv_close)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.K0(view);
                }
            });
        }
        this.I.setVisibility(0);
        this.I.setClipToOutline(true);
        this.I.setOutlineProvider(new a());
        b bVar = new b(false, 1000L, bookmark);
        this.I.findViewById(R.id.rl_pop_click).setOnClickListener(bVar);
        this.I.findViewById(R.id.bookmark_cover_item).setOnClickListener(bVar);
        this.I.findViewById(R.id.tv_title).setOnClickListener(bVar);
        ImageView imageView = (ImageView) this.I.findViewById(R.id.iv_web_icon);
        TextView textView = (TextView) this.I.findViewById(R.id.tv_url);
        TextView textView2 = (TextView) this.I.findViewById(R.id.custom_bookmark_cover);
        textView.setOnClickListener(bVar);
        textView.setText(bookmark.getUri());
        p06.d0("dl_brower_rpfloating_show");
        if (bookmark.getImageResId() > 0) {
            imageView.setImageResource(bookmark.getImageResId());
            imageView.setVisibility(0);
            textView2.setVisibility(8);
            return;
        }
        if (bookmark.getImageUri() != null) {
            Glide.with(this.mContext).asBitmap().load2(bookmark.getImageUri()).into(imageView);
            imageView.setVisibility(0);
            textView2.setVisibility(8);
            return;
        }
        byte[] bArr = bookmark.bitmap;
        if (bArr != null && bArr.length > 0) {
            Glide.with(this.mContext).load2(bookmark.bitmap).into(imageView);
            imageView.setVisibility(0);
            textView2.setVisibility(8);
        } else if (TextUtils.isEmpty(bookmark.getName())) {
            textView2.setVisibility(8);
            imageView.setVisibility(0);
            imageView.setImageResource(R.drawable.ic_default_web_icon);
        } else {
            imageView.setVisibility(8);
            textView2.setVisibility(0);
            String strValueOf = TextUtils.isEmpty(bookmark.getName()) ? "" : String.valueOf(bookmark.getName().charAt(0));
            textView2.setText(strValueOf);
            textView2.setBackgroundColor(b23.o(strValueOf));
        }
    }

    public final void B0() {
        Log.d("DownloadRecommendFragment", "initCloudDiskData mIsShowCloudDisk：" + zz0.d() + " isSupportMIMediaLibrary:" + CloudFeaturesConfigHelper.isSupportMIMediaLibrary());
        boolean z = zz0.d() && CloudFeaturesConfigHelper.isSupportMIMediaLibrary();
        this.v = z;
        if (z) {
            MediaLibraryListAdapter mediaLibraryListAdapter = new MediaLibraryListAdapter();
            this.o = mediaLibraryListAdapter;
            this.m.setAdapter(mediaLibraryListAdapter);
            this.o.i(new d());
            this.p.g(this.mContext);
            if (MainApp.w != 0 && CloudFeaturesConfigHelper.isSupportMIMediaLibrary()) {
                this.p.p();
            }
            this.p.h().observe(getViewLifecycleOwner(), new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.L0((List) obj);
                }
            });
        }
    }

    public final void E0(final View view, final SearchKey searchKey) {
        if (view == null) {
            return;
        }
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.b.P0(view, searchKey);
            }
        });
    }

    public final void F0() {
        this.mPullDampingLayout.setProgressViewEndTarget(false, getResources().getDimensionPixelOffset(R.dimen.online_custom_refresh_view_end));
        this.mPullDampingLayout.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
            @Override
            public final void onRefresh() {
                this.a.S0();
            }
        });
    }

    public void G0(View view) {
        SearchBar searchBar = (SearchBar) view.findViewById(R.id.search_bar_title);
        this.y = searchBar;
        if (searchBar != null) {
            searchBar.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.T0(view2);
                }
            });
        }
    }

    public void H0() {
        this.s = w6c.c(getContext(), "DownLoadMainFragmentNew_ismPopUpWebShow", this.s);
        Bookmark bookmark = (Bookmark) w6c.f(getContext(), "last_web");
        if (bookmark != null) {
            b1(bookmark);
            c1(this.s);
        }
    }

    public final void I0(AdapterView adapterView, View view, int i, long j) {
        SearchKey.Key key = (SearchKey.Key) this.B.c.get(i);
        Z0((SearchKey.Key) this.B.c.get(i));
        HashMap map = new HashMap();
        map.put("queue", key.getSort());
        map.put(ICode.CALL.CALL_KEY_CONTENT, key.getContent());
        map.put("index", Integer.valueOf(i + 1));
        p06.b0("dl_brower_cycle_cl", map);
    }

    public final void J0(AdapterView adapterView, View view, int i, long j) {
        Z0(null);
    }

    public final void K0(View view) {
        this.s = false;
        w6c.r(getContext(), "DownLoadMainFragmentNew_ismPopUpWebShow", this.s);
        this.I.setVisibility(8);
        w6c.z(getContext(), "last_web");
        LogUtils.i("DownloadRecommendFragment", "click close WebPopupView");
        p06.d0("dl_brower_rpfloating_close_cl");
        notifyMiniBarVisible(false);
    }

    public final void L0(List list) {
        if (list == null || list.isEmpty()) {
            this.u.setVisibility(8);
            this.m.setVisibility(8);
        } else {
            this.u.setVisibility(0);
            this.m.setVisibility(0);
            this.o.setNewData(list);
            X0(list);
        }
    }

    public final void M0(SearchKey searchKey) {
        E0(getView(), searchKey);
    }

    public final void N0(DownloadMain downloadMain) {
        this.n.d(downloadMain.getWebsite_category_list());
        this.n.notifyDataSetChanged();
    }

    public final void O0(Boolean bool) {
        if (this.v || this.m == null) {
            return;
        }
        B0();
    }

    public final void P0(View view, SearchKey searchKey) {
        if (getView() != null) {
            view = getView();
        }
        x0(view, searchKey);
    }

    public final void Q0() {
        this.r = false;
    }

    public final void R0() {
        this.mPullDampingLayout.setRefreshing(false);
    }

    public final void S0() {
        if (!this.r) {
            this.p.o(getContext());
            if (this.v && MainApp.w != 0 && CloudFeaturesConfigHelper.isSupportMIMediaLibrary()) {
                this.p.p();
            }
            p06.d0("dl_show_refresh");
            this.r = true;
            this.mPullDampingLayout.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.Q0();
                }
            }, 10000L);
        }
        this.mPullDampingLayout.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.R0();
            }
        }, 1000L);
    }

    public final void T0(View view) {
        Z0(null);
    }

    public final void U0(Boolean bool) {
        notifyVideoBarShowStateChange(bool.booleanValue());
    }

    public final void V0(SharedPreferences sharedPreferences, String str) {
        if (TextUtils.equals(str, "last_web")) {
            Bookmark bookmark = (Bookmark) w6c.f(getContext(), "last_web");
            if (bookmark != null) {
                bookmark.getUri();
                b1(bookmark);
                return;
            }
            return;
        }
        if (TextUtils.equals(str, "search_url_history")) {
            List list = (List) w6c.f(getContext(), "search_url_history");
            this.G = list;
            if (list == null || list.isEmpty()) {
                w6c.r(getContext(), "DownLoadMainFragmentNew_ismPopUpWebShow", false);
                c1(false);
            } else {
                w6c.r(getContext(), "DownLoadMainFragmentNew_ismPopUpWebShow", true);
                c1(true);
            }
        }
    }

    public final void W0(woc wocVar) {
        Log.i("DownloadRecommendFragment", "windowOptions  " + wocVar.toString());
        notifyMiniBarVisible(this.mIsVisibleToUser);
    }

    public final void X0(List list) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                MIMediaLibraryData mIMediaLibraryData = (MIMediaLibraryData) it.next();
                if (this.w == null) {
                    this.w = new ArrayList();
                }
                if (!this.w.contains(mIMediaLibraryData.getMediaLibraryId())) {
                    this.w.add(mIMediaLibraryData.getMediaLibraryId());
                    az5.g(mIMediaLibraryData.getMediaLibraryId(), mIMediaLibraryData.getMediaLibraryName(), mIMediaLibraryData.getVirtualPersonName(), mIMediaLibraryData.getVirtualPersonPhoto());
                }
            }
        }
    }

    public void Y0(boolean z) {
    }

    public final void Z0(SearchKey.Key key) {
        View viewFindViewById = this.z.findViewById(R.id.top_container);
        SearchAnimManager.getInstance().setActionPolicy(0);
        if (this.y != null) {
            SearchAnimManager.getInstance().z(this.y, (ViewGroup) this.z, viewFindViewById);
        }
        stopEdit();
        p06.f0(null, "dl_brower_cl", 9324L);
        a1();
    }

    public final void a1() {
        if (zz0.d() && CloudFeaturesConfigHelper.isSupportMIMediaLibrary()) {
            ARouter.getInstance().build("/cloud/searchcloudactivity").withString("source", "download page").navigation(getActivity());
            return;
        }
        Intent intent = new Intent(this.mContext, (Class<?>) SearchActivity.class);
        intent.putExtra("from", "dl_brower_cl");
        intent.putExtra("page_tag", "");
        f5.c(intent, this.mContext);
    }

    public void b1(Bookmark bookmark) {
        A0(bookmark);
    }

    public void c1(boolean z) {
        if (this.I != null) {
            boolean zC = w6c.c(getContext(), "DownLoadMainFragmentNew_ismPopUpWebShow", this.s);
            this.s = zC;
            this.I.setVisibility((z && zC) ? 0 : 8);
        }
    }

    public void notifyVideoBarShowStateChange(boolean z) {
        RecyclerView recyclerView;
        Log.d("DownloadRecommendFragment", "notifyVideoBarShowStateChange :" + z);
        if (this.l != null) {
            int i = (isFoldScreen() && z) ? 60 : 0;
            if (!this.v || (recyclerView = this.m) == null || recyclerView.getVisibility() != 0) {
                RecyclerView recyclerView2 = this.l;
                recyclerView2.setPadding(recyclerView2.getPaddingStart(), this.l.getPaddingTop(), this.l.getPaddingEnd(), com.transsion.utils.a.d(this.mContext, i));
            } else {
                RecyclerView recyclerView3 = this.l;
                recyclerView3.setPadding(recyclerView3.getPaddingStart(), this.l.getPaddingTop(), this.l.getPaddingEnd(), 0);
                RecyclerView recyclerView4 = this.m;
                recyclerView4.setPadding(recyclerView4.getPaddingStart(), this.m.getPaddingTop(), this.m.getPaddingEnd(), com.transsion.utils.a.d(this.mContext, i));
            }
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (com.transsion.utils.a.A()) {
            int iY0 = y0();
            DownloadMainItemAdapter downloadMainItemAdapter = this.n;
            if (downloadMainItemAdapter == null || downloadMainItemAdapter.s == iY0) {
                return;
            }
            downloadMainItemAdapter.s = iY0;
            downloadMainItemAdapter.notifyDataSetChanged();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        w6c.y(getContext(), this.H);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        DownloadMainViewModel downloadMainViewModel = this.p;
        if (downloadMainViewModel != null) {
            downloadMainViewModel.j().removeObservers(this.mActivity);
        }
        this.t.a.removeObservers(this.mActivity);
        LiveEventBus.b().d("media_library_data_flag").c();
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_download_recommend;
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Log.d("DownloadRecommendFragment", "onSaveInstanceState  " + this.s);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.z = view;
        this.mPullDampingLayout = (CustomSwipeRefreshLayout) view.findViewById(R.id.pull_refresh_layout);
        this.l = (RecyclerView) view.findViewById(R.id.rv_recommend);
        this.u = view.findViewById(R.id.diver_mediaLibrary);
        this.m = (RecyclerView) view.findViewById(R.id.rv_mediaLibrary);
        this.n = new DownloadMainItemAdapter(this.mContext);
        this.l.setLayoutManager(new LinearLayoutManager(this.mContext));
        this.l.setAdapter(this.n);
        G0(view);
        H0();
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onViewCreated$0();
            }
        });
        D0();
        C0();
        WindowInfoViewModel windowInfoViewModel = (WindowInfoViewModel) new ViewModelProvider(this.mActivity).get(WindowInfoViewModel.class);
        this.t = windowInfoViewModel;
        windowInfoViewModel.a.observe(this.mActivity, this.J);
        String strL = MMKV.p().l("mmkv_search_keys");
        if (TextUtils.isEmpty(strL)) {
            E0(view, null);
        } else {
            E0(view, (SearchKey) fi1.b(strL, SearchKey.class));
        }
        OverScrollDecorHelper.setUpOverScroll(this.l, 0);
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.b.addBottomBarShowStateObserver();
            }
        });
    }

    @Override
    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        Log.d("DownloadRecommendFragment", "onViewStateRestored  " + this.s);
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
    }

    public void stopEdit() {
        if (this.F) {
            Y0(false);
        }
    }

    public final void x0(View view, SearchKey searchKey) {
        ViewStub viewStub;
        if (view == null || !isAdded()) {
            return;
        }
        int i = R.id.avf_view;
        ClickAdapterViewFlipper clickAdapterViewFlipper = (ClickAdapterViewFlipper) view.findViewById(i);
        this.A = clickAdapterViewFlipper;
        if (clickAdapterViewFlipper == null && (viewStub = (ViewStub) view.findViewById(R.id.avf_view_stub)) != null) {
            View viewInflate = viewStub.inflate();
            if (viewInflate instanceof ClickAdapterViewFlipper) {
                this.A = (ClickAdapterViewFlipper) viewInflate;
            } else {
                this.A = (ClickAdapterViewFlipper) view.findViewById(i);
            }
        }
        if (this.A == null) {
            return;
        }
        icc iccVar = new icc(getContext());
        this.B = iccVar;
        this.A.setAdapter(iccVar);
        if (searchKey == null || searchKey.getBannerKeys() == null || searchKey.getBannerKeys().getDataList() == null || searchKey.getBannerKeys().getDataList().size() == 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new SearchKey.Key());
            this.B.a(arrayList);
            this.A.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public final void onItemClick(AdapterView adapterView, View view2, int i2, long j) {
                    this.b.J0(adapterView, view2, i2, j);
                }
            });
            this.C = false;
            return;
        }
        this.D.clear();
        this.D.addAll(searchKey.getBannerKeys().getDataList());
        this.C = true;
        if (this.E) {
            hb0.markDirect("dl_brower_cycle_show");
        }
        this.B.a(this.D);
        this.A.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public final void onItemClick(AdapterView adapterView, View view2, int i2, long j) {
                this.b.I0(adapterView, view2, i2, j);
            }
        });
    }

    public final void z0(Bookmark bookmark) {
        Intent intent = new Intent(this.mContext, (Class<?>) WebActivity.class);
        intent.putExtra(VkConstant.URL, bookmark.getUri());
        intent.putExtra("web_url_from", "dl_brower_rpfloating_reopen_cl");
        f5.b(intent, 1242, this.mActivity);
        p06.d0("dl_brower_rpfloating_reopen_cl");
    }
}
