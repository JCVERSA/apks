package com.transsion.magicvideo.fragments;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.utils.LoadDataUtils;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.magicvideo.activities.VideoSheetDialogActivity;
import com.transsion.magicvideo.adapter.BucketDateAdapter;
import com.transsion.magicvideo.adapter.ShortVideoAdapter;
import com.transsion.magicvideo.fragments.VideosFragment;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.mediationads.beans.AdMediaItem;
import com.transsion.mediationads.beans.TabStrategy;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.videomodel.VideoDataListModel;
import com.transsion.playercommon.widgets.AppFootActionBar;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.vishaads.views.AdBannerView;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.a9;
import defpackage.af9;
import defpackage.b39;
import defpackage.dp3;
import defpackage.eda;
import defpackage.gf7;
import defpackage.h27;
import defpackage.hb0;
import defpackage.i06;
import defpackage.iia;
import defpackage.k29;
import defpackage.ls1;
import defpackage.lz5;
import defpackage.mc7;
import defpackage.mn5;
import defpackage.my8;
import defpackage.o06;
import defpackage.p06;
import defpackage.pp3;
import defpackage.r06;
import defpackage.r44;
import defpackage.raa;
import defpackage.t74;
import defpackage.tpb;
import defpackage.uq3;
import defpackage.uy5;
import defpackage.vb;
import defpackage.vg9;
import defpackage.wna;
import defpackage.xac;
import defpackage.xdc;
import defpackage.ye6;
import defpackage.zdc;
import defpackage.zf1;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class VideosFragment extends VideoDragBaseFragment implements h27.b {
    public int A0;
    public ProgressBar B0;
    public ConstraintLayout C0;
    public VideoDataListModel D0;
    public long E0;
    public View G0;
    public View H0;
    public View I0;
    public ShortVideoAdapter J0;
    public RecyclerView K0;
    public boolean M0;
    public boolean N0;
    public boolean O0;
    public boolean Q0;
    public ViewTreeObserver.OnGlobalLayoutListener R0;
    public int S0;
    public Runnable T0;
    public AdBannerView U0;
    public AdItemBean V0;
    public RecyclerView.LayoutManager X0;
    public MediaBucket q0;
    public boolean r0;
    public CustomGridLayoutManager s0;
    public boolean t0;
    public View u0;
    public TextView v0;
    public volatile boolean w0;
    public boolean x0;
    public TabStrategy y0;
    public boolean z0;
    public boolean F0 = true;
    public List L0 = new ArrayList();
    public Boolean P0 = Boolean.TRUE;
    public boolean W0 = false;
    public int Y0 = -1;
    public int Z0 = 0;

    public class a extends gf7 {
        public a() {
        }

        @Override
        public void a(View view) {
            VideosFragment.this.A1(R.string.talkback_clear_history, R.string.clear_empty, 0);
            p06.f0(null, "vd_clear_his_cl", 932460000035L);
        }
    }

    public class b extends GridLayoutManager.SpanSizeLookup {
        public final int a;

        public b(int i) {
            this.a = i;
        }

        @Override
        public int getSpanSize(int i) {
            if (273 == VideosFragment.this.t.getItemViewType(i)) {
                return this.a;
            }
            if (VideosFragment.this.t.getHeaderLayoutCount() > 0) {
                i--;
            }
            List<MediaItem> data = VideosFragment.this.t.getData();
            if (i < 0 || data == null || i >= data.size()) {
                return 1;
            }
            MediaItem mediaItem = data.get(i);
            if (!(mediaItem instanceof MediaItem)) {
                return 1;
            }
            MediaItem mediaItem2 = mediaItem;
            if (mediaItem2.isTimeItem || mediaItem2.mIsMediaTionAd) {
                return this.a;
            }
            return 1;
        }
    }

    public class c extends CustomGridLayoutManager {
        public c(Context context, int i) {
            super(context, i);
        }

        @Override
        public boolean canScrollVertically() {
            if (VideosFragment.this.r.isEmpty() && VideosFragment.this.L0.isEmpty()) {
                return false;
            }
            return super.canScrollVertically();
        }
    }

    public class d extends RecyclerView.OnScrollListener {
        public d() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            try {
                if (i == 2 || i == 1) {
                    VideosFragment.this.M0 = true;
                    Glide.with(VideosFragment.this).pauseRequests();
                    VideosFragment videosFragment = VideosFragment.this;
                    int i2 = videosFragment.s;
                    if (i2 != 2 && i2 != 14 && i2 != 16) {
                        videosFragment.hideShuffleBtn();
                        return;
                    }
                    h27.c().e(1157, Integer.valueOf(BaseFragment.SCROLL_START));
                    return;
                }
                VideosFragment.this.M0 = false;
                Glide.with(VideosFragment.this).resumeRequests();
                VideosFragment videosFragment2 = VideosFragment.this;
                int i3 = videosFragment2.s;
                if (i3 == 2 || i3 == 14 || i3 == 16) {
                    h27.c().e(1157, Integer.valueOf(BaseFragment.SCROLL_END));
                } else {
                    videosFragment2.showShuffleBtn();
                }
                if (VideosFragment.this.N0) {
                    VideosFragment.this.N0 = false;
                    VideosFragment.this.postDelayLoadDataChange();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public class e implements FileOperateUtils.k {
        public final MediaItem a;
        public final int b;

        public e(MediaItem mediaItem, int i) {
            this.a = mediaItem;
            this.b = i;
        }

        @Override
        public void d() {
            int i = this.b;
            if (i >= 0 && i < VideosFragment.this.r.size()) {
                VideosFragment.this.s1(this.b);
            }
            VideosFragment.this.x1();
            h27.c().e(1072, new Object[0]);
            VideosFragment.this.postDelayLoadData();
        }

        @Override
        public void e() {
            if (pp3.p) {
                h27.c().e(1139, new Object[0]);
                h27.c().e(1072, new Object[0]);
            }
            VideosFragment.this.postDelayLoadData();
            VideoPlayManager.X().c1(this.a);
        }

        @Override
        public void f() {
            int iIndexOf;
            ArrayList arrayList = VideosFragment.this.r;
            if (arrayList == null || (iIndexOf = arrayList.indexOf(this.a)) < 0) {
                return;
            }
            VideosFragment.this.s1(iIndexOf);
        }

        @Override
        public void g(String str, String str2) {
            int i;
            MediaItem mediaItem = this.a;
            if (mediaItem != null) {
                mediaItem.title = str;
                mediaItem.displayName = str;
                BucketDateAdapter bucketDateAdapter = VideosFragment.this.t;
                if (bucketDateAdapter != null && (i = this.b) >= 0) {
                    bucketDateAdapter.notifyItemChanged(i);
                }
            }
            VideosFragment.this.r1(this.a, str2, false);
            h27.c().e(1072, new Object[0]);
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override
        public void onClick(View view) {
            p06.q0(null, null, "vd_all_video_gd_cl", 9324L);
            LiveEventBus.b().c("go_download_tab", Boolean.TRUE);
        }
    }

    public static VideosFragment F3(int i) {
        VideosFragment videosFragment = new VideosFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, i);
        videosFragment.setArguments(bundle);
        return videosFragment;
    }

    private void J3() {
        int iF = zdc.f();
        ShortVideoAdapter shortVideoAdapter = this.J0;
        if (shortVideoAdapter != null) {
            if (iF == zdc.b) {
                shortVideoAdapter.notifyDataSetChanged();
            } else {
                shortVideoAdapter.g();
            }
        }
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null) {
            if (iF == zdc.b) {
                bucketDateAdapter.notifyDataSetChanged();
                return;
            }
            MediaItem mediaItemC0 = VideoPlayManager.X().c0();
            MediaItem mediaItemC = this.t.C();
            try {
                if (mediaItemC0.equals(mediaItemC)) {
                    return;
                }
                boolean z = false;
                boolean z2 = false;
                for (int i = 0; i < this.t.getItemCount(); i++) {
                    if (mediaItemC0.equals(this.t.getItem(i))) {
                        this.t.Y(mediaItemC0);
                        this.t.refreshNotifyItemChanged(i);
                        z = true;
                    } else if (mediaItemC.equals(this.t.getItem(i))) {
                        this.t.refreshNotifyItemChanged(i);
                        z2 = true;
                    }
                    if (z && z2) {
                        return;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static boolean L2(List list, MediaItem mediaItem) {
        if (list != null && !list.isEmpty() && mediaItem != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (W2((MediaItem) it.next(), mediaItem)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean W2(MediaItem mediaItem, MediaItem mediaItem2) {
        if (mediaItem == null || mediaItem2 == null) {
            return false;
        }
        if (!mediaItem.isYoutubeUrl && !mediaItem.isKtFile) {
            MIMediaDataUtils.Companion companion = MIMediaDataUtils.INSTANCE;
            if (!companion.isMiMediaVideo(mediaItem) && !mediaItem2.isYoutubeUrl && !mediaItem2.isKtFile && !companion.isMiMediaVideo(mediaItem2)) {
                return LoadDataUtils.m(mediaItem.id) && LoadDataUtils.m(mediaItem2.id) && mediaItem.id == mediaItem2.id;
            }
        }
        return TextUtils.equals(mediaItem.data, mediaItem2.data);
    }

    public static void d3(Throwable th) {
        Log.e("VideosFragment", "doSort error:" + th);
    }

    public static void h3(View view) {
        h27.c().e(1159, 3);
    }

    public static boolean o3(MediaItem mediaItem) {
        return !tpb.j0().m0(mediaItem);
    }

    public static boolean p3(MediaItem mediaItem) {
        return !tpb.j0().m0(mediaItem);
    }

    public static Boolean t3(VideosFragment videosFragment) {
        return Boolean.valueOf(tpb.j0().R());
    }

    public static boolean y3(MediaItem mediaItem) {
        return !mediaItem.isTimeItem;
    }

    @Override
    public void A1(int i, int i2, int i3) {
        new com.transsion.widgetslib.dialog.d.a(this.mContext).B(i3 == 0 ? "" : this.mContext.getString(i3)).j(i).u(i2, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i4) {
                this.b.z3(dialogInterface, i4);
            }
        }).m(R.string.cancel, null).a().show();
    }

    public final ArrayList A3(ArrayList arrayList) {
        if (!this.Q0 || !com.transsion.mediationads.manager.b.c().f()) {
            return null;
        }
        if (this.r0) {
            int iO2 = O2();
            if (eda.d(arrayList, this.y0, this.A, iO2)) {
                return eda.a(arrayList, this.y0, iO2);
            }
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        if (!eda.e(arrayList, this.y0, this.A)) {
            return null;
        }
        int iC = eda.c(arrayList.size() - this.A, this.y0);
        for (int i = 0; i < iC; i++) {
            AdMediaItem adMediaItemCreate = AdMediaItem.create(this.y0.getAdvertisingId(), this.S0);
            adMediaItemCreate.setContext(getContext());
            arrayList2.add(adMediaItemCreate);
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        return eda.b(arrayList, arrayList2, this.y0);
    }

    public final void B3() {
        AdItemBean adItemBean;
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser && (adItemBean = this.V0) != null) {
            a9.a(null, adItemBean.getId(), "vd_ad_vdbanner_show");
        }
    }

    public void C3() {
        final ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.r;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            arrayList.addAll(this.r);
        }
        final int i = this.s;
        final boolean z = this.I;
        iia.a(new Runnable() {
            @Override
            public void run() {
                try {
                    Bundle bundle = new Bundle();
                    bundle.putInt("video_amount", arrayList.size());
                    TrackData trackData = new TrackData();
                    trackData.add("video_amount", arrayList.size());
                    HashSet hashSet = new HashSet();
                    if (!arrayList.isEmpty()) {
                        int i2 = 0;
                        for (MediaItem mediaItem : arrayList) {
                            if (mediaItem.isYoutubeUrl) {
                                i2++;
                            }
                            hashSet.add(mediaItem.data);
                        }
                        int size = hashSet.size();
                        bundle.putInt("video_amount", size);
                        trackData.add("video_amount", size);
                        int i3 = size - i2;
                        bundle.putInt("num_0", i3);
                        trackData.add("num_1", i2);
                        bundle.putInt("num_1", i2);
                        trackData.add("num_0", i3);
                    }
                    if (VideosFragment.this.x0) {
                        p06.q0(trackData, bundle, "vd_playback_history_page_show_p", 9324L);
                    } else if (i == 2) {
                        if (((BaseFragment) VideosFragment.this).mContext == null) {
                            return;
                        } else {
                            p06.q0(trackData, bundle, "vd_all_video_show_p", 9324L);
                        }
                    } else if (z) {
                        p06.q0(trackData, bundle, "vd_nplaylist_favorite_show_p", 9324L);
                    }
                    arrayList.clear();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    public final void D3(ArrayList arrayList) {
        if (this.s != 3 || arrayList == null || arrayList.isEmpty()) {
            return;
        }
        final ArrayList arrayList2 = new ArrayList(arrayList);
        iia.a(new Runnable() {
            @Override
            public final void run() {
                this.b.r3(arrayList2);
            }
        });
    }

    public void E3() {
        p06.N(this.r0 ? "thumbnail" : "list", this.s);
    }

    public void G3() {
        if (this.x0) {
            VideoPlayManager.X().S0();
            mc7.K(this).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return VideosFragment.t3((VideosFragment) obj);
                }
            }).g(this.mActivity.bindToLifecycle()).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.u3((Boolean) obj);
                }
            });
        }
    }

    public final void H3() {
        lz5.f("vd_listenbtn_cl", this.s, this.A0);
        ArrayList arrayList = this.r;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        List list = (List) this.r.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return VideosFragment.y3((MediaItem) obj);
            }
        }).collect(Collectors.toList());
        if (list.isEmpty()) {
            return;
        }
        VideoPlayManager.X().W1(true);
        U3((MediaItem) list.get(0), true);
    }

    public final ArrayList I3(boolean z) {
        int i = this.s;
        if (i == 2) {
            List listU = tpb.j0().U(z ? 30 : Integer.MAX_VALUE);
            LiveEventBus.b().d("have_video").postValue(Boolean.valueOf(listU.size() > 0));
            return new ArrayList(listU);
        }
        if (i == 1) {
            return new ArrayList(tpb.j0().O(true, z ? 30 : Integer.MAX_VALUE, true));
        }
        return this.q0 == null ? new ArrayList() : new ArrayList(tpb.j0().i(this.q0));
    }

    public final void K2(List list) {
        if (V2()) {
            final ArrayList arrayList = list != null ? new ArrayList(list) : new ArrayList();
            final Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    this.b.X2(arrayList);
                }
            };
            if (this.M.getWidth() <= 0 || this.M.getHeight() <= 0) {
                this.M.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.Z2(runnable);
                    }
                });
            } else {
                this.M.post(runnable);
            }
        }
    }

    public final void K3() {
        if (SortUtil.l() != SortUtil.SortType.COUNT || this.x0) {
            return;
        }
        M2();
    }

    public final void L3() {
        if (this.R0 == null) {
            return;
        }
        VideoMainRecyclerView videoMainRecyclerView = this.M;
        if (videoMainRecyclerView != null) {
            ViewTreeObserver viewTreeObserver = videoMainRecyclerView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnGlobalLayoutListener(this.R0);
            }
        }
        this.R0 = null;
    }

    public final void M2() {
        if (this.Q0 && com.transsion.mediationads.manager.b.c().f()) {
            refresh();
        } else {
            mc7.K(this).g(bindToLifecycle()).d0(k29.c()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.b3((VideosFragment) obj);
                }
            }).M(vb.a()).g(bindToLifecycle()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.c3((List) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    VideosFragment.d3((Throwable) obj);
                }
            });
        }
    }

    public final void M3() {
        int i;
        RecyclerView recyclerView;
        if (this.s != 2 || !(this.X0 instanceof LinearLayoutManager) || (i = this.Y0) <= 0 || i >= this.L0.size() || (recyclerView = this.K0) == null) {
            return;
        }
        recyclerView.scrollBy(this.Z0, 0);
    }

    public final PlayVideoData N2(MediaItem mediaItem, boolean z) {
        PlayVideoData playVideoDataConvertToPlayVideoData = PlayVideoData.convertToPlayVideoData(mediaItem);
        if (playVideoDataConvertToPlayVideoData != null) {
            playVideoDataConvertToPlayVideoData.setShowPicInPic(true);
            playVideoDataConvertToPlayVideoData.setNeedRecordVideoStates(true);
            playVideoDataConvertToPlayVideoData.folderName = this.B;
            playVideoDataConvertToPlayVideoData.listFlag = this.s;
            playVideoDataConvertToPlayVideoData.fromPlayAll = z;
            if (z) {
                playVideoDataConvertToPlayVideoData.playPosition = 0L;
            }
            playVideoDataConvertToPlayVideoData.bucketId = this.q0.bucketId;
        }
        return playVideoDataConvertToPlayVideoData;
    }

    public final void N3() {
        if (this.s == 2) {
            RecyclerView.LayoutManager layoutManager = this.X0;
            if (!(layoutManager instanceof LinearLayoutManager) || this.K0 == null) {
                return;
            }
            this.Y0 = ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
            this.Z0 = this.K0.computeHorizontalScrollOffset();
        }
    }

    @Override
    public int O0() {
        if (this.s != 2) {
            return super.O0();
        }
        return (this.r.isEmpty() && !this.L0.isEmpty() && pp3.e(getContext())) ? this.L0.size() : this.r.size() - this.A;
    }

    public int O2() {
        int i;
        if (this.r0) {
            i = b39.b(this.mActivity) ? 3 : 4;
        } else {
            i = 1;
        }
        if (this.O0) {
            return 3;
        }
        return i;
    }

    public void O3() {
        BucketDateAdapter bucketDateAdapter;
        if (this.s != 2) {
            return;
        }
        BucketDateAdapter bucketDateAdapter2 = this.t;
        if (bucketDateAdapter2 != null) {
            bucketDateAdapter2.removeAllHeaderView();
        }
        this.V0 = xdc.c();
        Log.e("VideosFragment", "setHeaderView videoBanner:" + this.V0);
        if (this.V0 != null && (bucketDateAdapter = this.t) != null && !this.W0) {
            bucketDateAdapter.setHeaderAndEmpty(true);
            if (this.U0 == null) {
                AdBannerView adBannerView = (AdBannerView) LayoutInflater.from(getContext()).inflate(R.layout.ad_view_layout, (ViewGroup) this.M, false);
                this.U0 = adBannerView;
                adBannerView.setAdBannerClick(new AdBannerView.AdBannerClick() {
                    @Override
                    public void closeAdBanner() {
                        Log.i("VideosFragment", "closeAdBanner videoBanner:" + VideosFragment.this.V0);
                        VideosFragment videosFragment = VideosFragment.this;
                        videosFragment.t.removeHeaderView(videosFragment.U0);
                        VideosFragment.this.t.setHeaderAndEmpty(false);
                        VideosFragment.this.U0.setAdBannerClick(null);
                        if (VideosFragment.this.V0.isLocalAd) {
                            mn5.a().n(false);
                        }
                        VideosFragment.this.W0 = true;
                        a9.b("", VideosFragment.this.V0.getId(), "vd_ad_vdbanner_close_cl");
                    }

                    @Override
                    public void jumpLink() {
                        a9.b(VideosFragment.this.V0.getJumpLink(), VideosFragment.this.V0.getId(), "vd_ad_vdbanner_cl");
                    }
                });
                this.U0.showAd(this.V0);
                GridLayoutManager.LayoutParams layoutParams = (GridLayoutManager.LayoutParams) this.U0.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = 0;
                this.U0.setLayoutParams(layoutParams);
                B3();
            }
            Log.d("VideosFragment", "setHeaderView " + this.U0);
            this.t.setHeaderView(this.U0);
            b4();
        }
        if (!pp3.e(getContext()) || this.t == null) {
            return;
        }
        LogUtils.j("VideosFragment", "setHeaderView , add top short videos header");
        this.t.setHeaderAndEmpty(true);
        this.t.addHeaderView(this.G0);
    }

    @Override
    public void P0() {
        super.P0();
        View view = this.q;
        if (view != null) {
            TextView textView = (TextView) view.findViewById(R.id.add_video_tv);
            if (raa.i(this.mContext)) {
                this.q.setContentDescription(getString(R.string.file_empty));
            }
            if (pp3.k && this.s == 2) {
                textView.setVisibility(0);
                textView.setText(this.mContext.getString(R.string.go_download));
                textView.setOnClickListener(new f());
            }
        }
    }

    public void P2() {
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null) {
            bucketDateAdapter.setOnSelectListener(this);
            this.t.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    this.b.e3(baseQuickAdapter, view, i);
                }
            });
            this.t.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
                @Override
                public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    this.a.f3(baseQuickAdapter, view, i);
                }
            });
            I1();
        }
    }

    public void P3() {
    }

    public final void Q2(View view) {
        if (this.t0) {
            Q0(view, this.M);
        } else {
            setRvOverScrollDecorListener(this.M);
        }
    }

    public final void Q3(String str, MediaItem mediaItem) {
        R3(str, mediaItem, this.r.indexOf(mediaItem), "search_more_cl");
    }

    public final void R2(View view) {
        this.u0 = view.findViewById(R.id.play_all);
        this.v0 = (TextView) view.findViewById(R.id.media_num);
        View view2 = this.u0;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    this.b.g3(view3);
                }
            });
        }
        int i = this.s;
        this.z0 = i == 3 || i == 30;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void R3(String str, MediaItem mediaItem, int i, String str2) {
        Log.d("VideosFragment", "showListDialogFragment " + str);
        Intent intent = new Intent();
        intent.putExtra("data", mediaItem);
        intent.putExtra(SheetDialogParamsConstant.MEDIA_TYPE, MediaItem.MediaType.VIDEO.toString());
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
        ArrayList arrayList = (ArrayList) this.G.h().getValue();
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, true);
        vg9.g(arrayList);
        intent.setClass(this.mActivity, VideoSheetDialogActivity.class);
        this.U.launch(intent);
        P3();
        FileOperateUtils fileOperateUtils = new FileOperateUtils(this.mActivity, mediaItem, this.s);
        this.mFileOperateUtils = fileOperateUtils;
        fileOperateUtils.f0(new e(mediaItem, i));
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        double dB = p06.b(mediaItem.size);
        bundle.putString("from", str2);
        bundle.putString("name", mediaItem.displayName);
        bundle.putDouble("vd_size", dB);
        bundle.putLong("vd_length", mediaItem.duration);
        bundle.putString("listName", this.B);
        bundle.putString("vd_format", mediaItem.mineType);
        trackData.add("from", str2);
        trackData.add("name", mediaItem.displayName);
        trackData.add("vd_size", dB);
        trackData.add("vd_length", mediaItem.duration);
        trackData.add("listName", this.B);
        trackData.add("vd_format", mediaItem.mineType);
        p06.q0(trackData, bundle, "vd_vmore_show", 9324L);
    }

    public void S2(View view) {
        this.M = (VideoMainRecyclerView) view.findViewById(R.id.rv_main_fragment);
        this.N = (RecyclerViewFastScroller) view.findViewById(R.id.rv_fast_scroller);
        this.t = new BucketDateAdapter(this.mContext);
        if (raa.i(this.mContext)) {
            try {
                this.t.setHasStableIds(true);
            } catch (IllegalStateException e2) {
                Log.e("VideosFragment", "setHasStableIds " + e2.getMessage());
            }
        }
        this.t.X(this.s);
        this.r0 = !this.x0 && my8.a(this.mContext);
        W3();
        this.s0 = new c(getContext(), O2());
        if (this.s == 2) {
            this.M.addOnItemTouchListener(this.mSimpleOnItemTouchListener);
        }
        this.M.addOnScrollListener(new d());
        if (this.r0) {
            this.M.setRecyclerItemAnimator(false);
        }
        e4();
        a4();
        this.a0 = this.t.y();
    }

    public final void S3() {
        ArrayList arrayList;
        ProgressBar progressBar;
        LogUtils.N("VideosFragment", "showPageContent mListFlag:" + this.s + ",mDataList:" + this.r.size() + ",mShortVideoList:" + this.L0.size());
        if (this.x0 && (progressBar = this.B0) != null) {
            progressBar.setVisibility(8);
        }
        if (this.t == null || this.M == null) {
            Log.d("VideosFragment", "showPageContent mBucketDateAdapter is null");
            return;
        }
        if (pp3.e(getContext())) {
            N3();
        }
        if (this.r.isEmpty() && !this.L0.isEmpty() && pp3.e(getContext())) {
            this.O0 = true;
            this.r0 = true;
            this.t.b0(true);
            arrayList = new ArrayList(this.L0);
        } else {
            this.O0 = false;
            this.r0 = my8.a(this.mContext);
            this.t.b0(false);
            arrayList = new ArrayList(this.r);
        }
        this.t.Y(VideoPlayManager.X().c0());
        a4();
        e4();
        O3();
        K2(arrayList);
        f4();
        x1();
        if (this.r.isEmpty() && this.isInEditMode) {
            this.t.R(false);
            CheckBox checkBox = this.mAllCheckBox;
            if (checkBox != null) {
                checkBox.setChecked(false);
            }
        }
        if (this.z0) {
            this.u0.setVisibility(T0() ? 8 : 0);
            int size = this.r.isEmpty() ? 0 : this.r.size() - this.A;
            this.A0 = size;
            this.v0.setText(r44.a(size));
            lz5.f("vd_listenbtn_show", this.s, this.A0);
        }
        G0();
        D3(this.r);
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            C3();
        }
        xdc.e(CountryInfoUtil.m());
    }

    @Override
    public boolean T0() {
        List list;
        ArrayList arrayList = this.r;
        return (arrayList == null || arrayList.isEmpty()) && (!pp3.e(this.mContext) || (list = this.L0) == null || list.isEmpty());
    }

    public final void T2() {
        if (this.s != 2) {
            return;
        }
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.video_top_header_view_layout, (ViewGroup) this.M, false);
        this.G0 = viewInflate;
        this.H0 = viewInflate.findViewById(R.id.ll_short_videos_title);
        this.I0 = this.G0.findViewById(R.id.ll_long_videos_title);
        this.K0 = (RecyclerView) this.G0.findViewById(R.id.rv_short_videos);
        this.J0 = new ShortVideoAdapter();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.mContext, 0, false);
        this.X0 = linearLayoutManager;
        this.K0.setLayoutManager(linearLayoutManager);
        this.K0.setAdapter(this.J0);
        this.H0.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                VideosFragment.h3(view);
            }
        });
        this.J0.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.i3(baseQuickAdapter, view, i);
            }
        });
        this.J0.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.j3(baseQuickAdapter, view, i);
            }
        });
        b4();
    }

    public void T3(MediaItem mediaItem, boolean z) {
        PlayVideoData playVideoDataN2 = N2(mediaItem, z);
        playVideoDataN2.listFlag = 14;
        VideoPlayManager.X().M = z;
        Log.d("VideosFragment", "startOpenShortVideo " + playVideoDataN2);
        if (VideoPlayManager.X().x0() && this.mActivity.isAlertWindowPermissionGranted()) {
            VideoPlayManager.X().o2(playVideoDataN2);
        } else {
            VideoPlayerActivityInner.G2(playVideoDataN2);
        }
    }

    public final void U2() {
        this.D0 = (VideoDataListModel) getViewModelByActivity(VideoDataListModel.class);
        final boolean zE = pp3.e(getContext());
        this.D0.b.observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.l3(zE, (List) obj);
            }
        });
        if (zE) {
            this.D0.c.observe(getViewLifecycleOwner(), new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.m3((List) obj);
                }
            });
        }
        List listE = this.D0.e();
        List listD = zE ? this.D0.d() : null;
        if ((listE == null || listE.isEmpty()) && (listD == null || listD.isEmpty())) {
            return;
        }
        Z3(listE, listD);
    }

    public void U3(MediaItem mediaItem, boolean z) {
        PlayVideoData playVideoDataN2 = N2(mediaItem, z);
        VideoPlayManager.X().M = z;
        Log.d("VideosFragment", "startOpenVideo " + playVideoDataN2);
        if (VideoPlayManager.X().x0() && this.mActivity.isAlertWindowPermissionGranted() && !z) {
            VideoPlayManager.X().o2(playVideoDataN2);
        } else {
            VideoPlayerActivityInner.G2(playVideoDataN2);
        }
    }

    public final boolean V2() {
        return (!isAdded() || getView() == null || this.M == null || this.t == null) ? false : true;
    }

    public void V3() {
        boolean zA = my8.a(this.mContext);
        if (zA != this.r0) {
            this.r0 = zA;
            e4();
            a4();
            Q1();
            BucketDateAdapter bucketDateAdapter = this.t;
            if (bucketDateAdapter != null) {
                bucketDateAdapter.notifyItemRangeChanged(0, bucketDateAdapter.getItemCount());
            }
        }
        if (this.O0) {
            S3();
        }
    }

    public final void W3() {
        int i;
        try {
            if (this.Q0) {
                com.transsion.mediationads.manager.b bVarC = com.transsion.mediationads.manager.b.c();
                if (!bVarC.f()) {
                    this.y0 = null;
                    return;
                }
                if (this.r0) {
                    i = 2;
                } else {
                    i = pp3.e(this.mContext) ? 3 : 1;
                }
                this.S0 = i;
                TabStrategy tabStrategyD = bVarC.d(i);
                Log.i("VideosFragment", "updateAdStrategyForCurrentMode: Ad new strategy: " + tabStrategyD);
                this.y0 = tabStrategyD;
            }
        } catch (Exception e2) {
            Log.e("VideosFragment", "updateAdStrategyForCurrentMode: Error updating ad strategy - " + e2.getMessage());
        }
    }

    public final void X2(List list) {
        if (V2()) {
            this.M.stopScroll();
            this.t.setNewData(list);
            if (this.M.getChildCount() != 0 || list.isEmpty()) {
                return;
            }
            this.M.requestLayout();
        }
    }

    public final void X3() {
        try {
            MediaItem mediaItemC0 = VideoPlayManager.X().c0();
            int iS = VideoPlayManager.X().S();
            for (Object obj : this.r) {
                if (obj instanceof MediaItem) {
                    MediaItem mediaItem = (MediaItem) obj;
                    if (mediaItemC0.equals(mediaItem) && iS > mediaItem.playPosition) {
                        mediaItem.setPlayPosition(iS);
                        return;
                    }
                }
            }
        } catch (Exception e2) {
            Log.e("VideosFragment", "updateCurrentPlayItemPosition " + e2.getMessage());
        }
    }

    public final void Y2(Runnable runnable) {
        if (!V2()) {
            L3();
        } else {
            if (this.M.getWidth() <= 0 || this.M.getHeight() <= 0) {
                return;
            }
            L3();
            runnable.run();
        }
    }

    public final void Y3(ArrayList arrayList) {
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i) != null && dp3.e().b.contains(((MediaItem) arrayList.get(i)).data) && tpb.j0().b(((MediaItem) arrayList.get(i)).id) == null && tpb.j0().T(((MediaItem) arrayList.get(i)).data)) {
                    tpb.j0().j(true, (MediaItem) arrayList.get(i));
                }
            }
        }
        dp3.e().b.clear();
    }

    public final void Z2(final Runnable runnable) {
        if (V2()) {
            if (this.M.getWidth() > 0 && this.M.getHeight() > 0) {
                runnable.run();
                return;
            }
            L3();
            this.R0 = new ViewTreeObserver.OnGlobalLayoutListener() {
                @Override
                public final void onGlobalLayout() {
                    this.b.Y2(runnable);
                }
            };
            ViewTreeObserver viewTreeObserver = this.M.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnGlobalLayoutListener(this.R0);
            } else {
                this.M.post(runnable);
            }
        }
    }

    public final void Z3(List list, List list2) {
        if (list != null) {
            this.r = new ArrayList(list);
        }
        if (!pp3.e(getContext())) {
            this.L0 = new ArrayList();
        } else if (list2 != null) {
            this.L0 = new ArrayList(list2);
        } else if (!this.w0) {
            this.L0 = new ArrayList();
        }
        if (S0()) {
            this.mbFragmentShowCompleted = true;
        }
        updateUiForDataChanged();
        boolean z = this.w0;
        this.w0 = true;
        if (z) {
            return;
        }
        postDelayLoadData();
    }

    public final void a3() {
        if (uq3.a()) {
            return;
        }
        postDelayLoadDataChange();
    }

    public final void a4() {
        if (this.t == null || this.s0 == null || this.M == null) {
            return;
        }
        int iO2 = O2();
        this.t.U(this.r0);
        this.t.Z(this.mScreenType);
        RecyclerView.Adapter adapter = this.M.getAdapter();
        BucketDateAdapter bucketDateAdapter = this.t;
        boolean z = adapter != bucketDateAdapter;
        if (z) {
            this.M.setAdapter(bucketDateAdapter);
        }
        CustomGridLayoutManager customGridLayoutManager = this.s0;
        if (customGridLayoutManager != null) {
            customGridLayoutManager.setSpanCount(iO2);
            this.s0.setSpanSizeLookup(new b(iO2));
            this.M.setRecyclerItemAnimator(!this.r0);
            RecyclerView.LayoutManager layoutManager = this.M.getLayoutManager();
            CustomGridLayoutManager customGridLayoutManager2 = this.s0;
            if (layoutManager != customGridLayoutManager2) {
                this.M.setLayoutManager(customGridLayoutManager2);
            } else {
                if (z) {
                    return;
                }
                customGridLayoutManager2.requestLayout();
            }
        }
    }

    public final List b3(VideosFragment videosFragment) {
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter == null || bucketDateAdapter.getData().isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (MediaItem mediaItem : this.t.getData()) {
            if (!mediaItem.isTimeItem && !mediaItem.mIsMediaTionAd) {
                arrayList.add(mediaItem);
            }
        }
        List listT = SortUtil.t(arrayList);
        if (listT == null) {
            listT = new ArrayList();
        }
        H0(listT);
        return listT;
    }

    public final void b4() {
        if (this.U0 != null) {
            int iD = !this.r0 ? com.transsion.utils.a.d(this.mActivity, 20.0f) : 0;
            AdBannerView adBannerView = this.U0;
            adBannerView.setPadding(iD, adBannerView.getPaddingTop(), iD, this.U0.getPaddingBottom());
        }
        if (this.G0 != null) {
            int iD2 = this.r0 ? com.transsion.utils.a.d(this.mActivity, 20.0f) : 0;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.G0.getLayoutParams();
            int i = -iD2;
            marginLayoutParams.leftMargin = i;
            marginLayoutParams.rightMargin = i;
            this.G0.setLayoutParams(marginLayoutParams);
        }
    }

    public final void c3(List list) {
        Log.w("VideosFragment", "doSort result:" + list.size());
        if (this.r.isEmpty() && !this.L0.isEmpty() && pp3.e(getContext())) {
            this.L0 = new ArrayList(list);
        } else {
            this.r = new ArrayList(list);
        }
        updateShowUI();
    }

    public final void c4() {
        if (this.r0) {
            a4();
            Q1();
        }
    }

    public void d4() {
        boolean z = my8.a(this.mContext) || this.O0;
        if (this.r0 != z) {
            this.r0 = z;
            e4();
            a4();
            BucketDateAdapter bucketDateAdapter = this.t;
            if (bucketDateAdapter != null) {
                bucketDateAdapter.notifyItemRangeChanged(0, bucketDateAdapter.getItemCount());
            }
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        BucketDateAdapter bucketDateAdapter;
        super.didReceivedNotification(i, objArr);
        if (i != 1028) {
            if (i == 1067) {
                if (System.currentTimeMillis() - af9.f < 1000) {
                    return;
                }
                af9.f = System.currentTimeMillis();
                uy5.l("video");
                Q3("file_operate_menu_tag", (MediaItem) objArr[0]);
                return;
            }
            if (i == 1087) {
                if (!this.x0 || this.mActivity == null || ((Boolean) objArr[0]).booleanValue()) {
                    return;
                }
                this.mActivity.onBackPressed();
                return;
            }
            if (i == 1110) {
                if (uq3.a()) {
                    ThreadUtils.o().postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.a3();
                        }
                    }, 500L);
                    return;
                } else {
                    postDelayLoadDataChange();
                    return;
                }
            }
            if (i == 1120) {
                if (this.s == 41) {
                    loadData(false);
                    return;
                }
                return;
            }
            if (i == 1154) {
                V3();
                E3();
                return;
            }
            if (i != 1158) {
                if (i == 1163) {
                    if (!this.isInEditMode || (bucketDateAdapter = this.t) == null || bucketDateAdapter.D() == null || this.t.D().isEmpty() || this.r == null) {
                        return;
                    }
                    try {
                        Iterator it = new ArrayList(this.t.D()).iterator();
                        while (it.hasNext()) {
                            this.r.remove((MediaItem) it.next());
                        }
                        this.t.notifyDataSetChanged();
                        return;
                    } catch (Exception e2) {
                        LogUtils.m("VideosFragment", "remove media list error:" + e2.getMessage());
                        return;
                    }
                }
                if (i == 1167) {
                    W3();
                } else {
                    if (i == 1188) {
                        K3();
                        return;
                    }
                    if (i == 1052) {
                        int iIntValue = ((Integer) objArr[0]).intValue();
                        if (this.I) {
                            refresh();
                        } else {
                            BucketDateAdapter bucketDateAdapter2 = this.t;
                            if (bucketDateAdapter2 != null) {
                                bucketDateAdapter2.notifyItemChanged(iIntValue);
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
                        if (i == 1177) {
                            FileOperateUtils fileOperateUtils = this.mFileOperateUtils;
                            if (fileOperateUtils != null) {
                                fileOperateUtils.x("video");
                                return;
                            }
                            return;
                        }
                        if (i != 1178) {
                            return;
                        }
                        try {
                            int iIntValue2 = ((Integer) objArr[0]).intValue();
                            MediaItem mediaItemC0 = VideoPlayManager.X().c0();
                            for (MediaItem mediaItem : this.L0) {
                                if (mediaItemC0.equals(mediaItem)) {
                                    mediaItem.setPlayPosition(iIntValue2);
                                    return;
                                }
                            }
                            for (Object obj : this.r) {
                                if (obj instanceof MediaItem) {
                                    MediaItem mediaItem2 = (MediaItem) obj;
                                    if (mediaItemC0.equals(mediaItem2)) {
                                        mediaItem2.setPlayPosition(iIntValue2);
                                        break;
                                    }
                                }
                            }
                            return;
                        } catch (Exception e3) {
                            Log.e("VideosFragment", "update video list position error" + e3.getMessage());
                            return;
                        }
                    }
                }
            }
            refresh();
            return;
        }
        BucketDateAdapter bucketDateAdapter3 = this.t;
        if (bucketDateAdapter3 != null) {
            bucketDateAdapter3.notifyItemRangeChanged(0, bucketDateAdapter3.getItemCount());
        }
    }

    public final void e3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        String str;
        if (!ingoreClickEvent() || this.isInEditMode) {
            this.mFirstClickTime = System.currentTimeMillis();
            if (!this.mIsDialogShowing && i < baseQuickAdapter.getData().size()) {
                MediaItem mediaItem = (MediaItem) baseQuickAdapter.getData().get(i);
                if (mediaItem.mIsMediaTionAd) {
                    return;
                }
                if (this.isInEditMode) {
                    u1(baseQuickAdapter, view, i, false);
                    M1(mediaItem, view);
                    return;
                }
                if (mediaItem.isTimeItem) {
                    return;
                }
                mediaItem.setSelectedPos(i);
                if (this.x0) {
                    try {
                        if (wna.g(this.mContext, mediaItem.dateModified).equals(getResources().getString(com.transsion.playercommon.R.string.today))) {
                            str = "today";
                        } else {
                            str = wna.g(this.mContext, mediaItem.dateModified).equals(getResources().getString(com.transsion.playercommon.R.string.yesterday)) ? "yesterday" : "past";
                        }
                    } catch (ParseException e2) {
                        e2.printStackTrace();
                        str = "";
                    }
                    p06.v(str);
                    i06.c();
                } else {
                    p06.Q(this.r0 ? "thumbnail" : "list", this.s, tpb.j0().G(mediaItem));
                }
                boolean z = mediaItem.equals(VideoPlayManager.X().c0()) && VideoPlayManager.X().G;
                VideoPlayManager.X().b0().setPlayMediaItem(mediaItem);
                if (z) {
                    LiveEventBus.b().c("launch_intent_video_player_activity", VideoPlayManager.X().n0(this.mContext, true, true, false, this.s));
                } else {
                    if (VideoPlayManager.X().G) {
                        VideoPlayManager.X().y1();
                    }
                    if (this.r.isEmpty()) {
                        T3(mediaItem, false);
                    } else {
                        U3(mediaItem, false);
                    }
                }
                o06.e(o06.f);
            }
        }
    }

    public void e4() {
        int iD;
        if (this.M != null) {
            if (this.r0) {
                BaseActivity baseActivity = this.mActivity;
                iD = com.transsion.utils.a.d(baseActivity, com.transsion.utils.a.D(baseActivity) ? 14.0f : 20.0f);
            } else {
                iD = 0;
            }
            VideoMainRecyclerView videoMainRecyclerView = this.M;
            videoMainRecyclerView.setPadding(iD, videoMainRecyclerView.getPaddingTop(), iD, this.M.getPaddingBottom());
            b4();
        }
    }

    @Override
    public void editMode(boolean z) {
        super.editMode(z);
        if (z) {
            if (this.s != 2) {
                setDragAnimationView(this.C0);
            }
            L1(this.l);
        } else {
            O1();
        }
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null) {
            bucketDateAdapter.V(z);
        }
        View view = this.u0;
        if (view != null) {
            view.setEnabled(!z);
            this.u0.setAlpha(z ? 0.4f : 1.0f);
        }
        View view2 = this.G0;
        if (view2 != null) {
            view2.setVisibility(z ? 8 : 0);
        }
        View view3 = this.H0;
        if (view3 != null) {
            view3.setEnabled(!z);
        }
        e4();
    }

    public final void f3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (!ingoreClickEvent() || this.isInEditMode) {
            this.mFirstClickTime = System.currentTimeMillis();
            if (i < baseQuickAdapter.getData().size()) {
                MediaItem mediaItem = (MediaItem) baseQuickAdapter.getData().get(i);
                if (this.isInEditMode) {
                    u1(baseQuickAdapter, view, i, true);
                    VideoMainRecyclerView videoMainRecyclerView = this.M;
                    if (videoMainRecyclerView == null || videoMainRecyclerView.getLayoutManager() == null) {
                        return;
                    }
                    M1(mediaItem, this.M.getLayoutManager().findViewByPosition(i));
                    return;
                }
                if (mediaItem.isTimeItem || mediaItem.mIsMediaTionAd) {
                    return;
                }
                if (view.getId() == R.id.iv_bucket_fragment_item_more || view.getId() == R.id.iv_more) {
                    R3("file_operate_menu_tag", mediaItem, i, p06.A(this.s));
                }
            }
        }
    }

    public final void f4() {
        if (this.s != 2) {
            return;
        }
        if (this.K0 != null) {
            boolean z = this.r.isEmpty() || !pp3.e(getContext());
            ViewGroup.LayoutParams layoutParams = this.I0.getLayoutParams();
            layoutParams.height = z ? 1 : getResources().getDimensionPixelSize(R.dimen.video_top_long_title_height);
            this.I0.setLayoutParams(layoutParams);
            this.I0.setVisibility(z ? 4 : 0);
            this.H0.setVisibility((this.L0.isEmpty() || !pp3.e(getContext())) ? 8 : 0);
            this.K0.setVisibility(z ? 8 : 0);
        }
        if (this.J0 == null || !pp3.e(getContext())) {
            return;
        }
        if (!this.r.isEmpty() || this.L0.isEmpty() || !pp3.e(getContext())) {
            this.J0.setNewData(this.L0);
        }
        Log.d("VideosFragment", "updateShortVideoView list count: " + this.L0.size());
        M3();
    }

    public final void g3(View view) {
        H3();
    }

    @Override
    public int getActivityMenuSwitchFlag() {
        return 1;
    }

    @Override
    public int getDeleteIconResId() {
        return this.x0 ? R.drawable.ic_delete_all : R.drawable.ic_delete;
    }

    @Override
    public int getDeleteTextResId() {
        return this.x0 ? R.string.clear : R.string.delete;
    }

    public final void i3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (ingoreClickEvent() || this.isInEditMode) {
            return;
        }
        MediaItem mediaItem = (MediaItem) baseQuickAdapter.getData().get(i);
        VideoPlayManager.X().b0().setPlayMediaItem(mediaItem);
        T3(mediaItem, false);
        o06.e(o06.f);
        p06.Q("thumbnail", this.s, tpb.j0().G(mediaItem));
    }

    @Override
    public void inflateOperationBar() {
        if (this.v == null) {
            AppFootActionBar appFootActionBar = (AppFootActionBar) ((ViewStub) this.l.findViewById(R.id.bottom_action_bar)).inflate();
            this.v = appFootActionBar;
            appFootActionBar.setOnFootOptBarClickListener(this);
            this.v.setListFlag(this.s);
        }
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(Integer.valueOf(AnalyticsListener.EVENT_PLAYER_RELEASED));
        this.mEvents.add(1052);
        this.mEvents.add(1053);
        this.mEvents.add(1067);
        this.mEvents.add(1087);
        this.mEvents.add(1120);
        this.mEvents.add(1154);
        this.mEvents.add(1155);
        this.mEvents.add(1158);
        this.mEvents.add(1167);
        this.mEvents.add(1163);
        this.mEvents.add(1177);
        this.mEvents.add(1178);
        this.mEvents.add(1188);
        this.mEvents.add(1110);
    }

    @Override
    public void initTitleBar(View view) {
        int i = this.s;
        if (i == 2 || i == 14 || i == 16) {
            return;
        }
        View viewInflate = ((ViewStub) view.findViewById(R.id.title_bar)).inflate();
        this.mTitleTv = (TextView) viewInflate.findViewById(R.id.title_bar_title);
        View viewFindViewById = viewInflate.findViewById(R.id.title_bar_back);
        this.mBackIv = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.k3(view2);
            }
        });
        this.mAllCheckBox = (CheckBox) viewInflate.findViewById(R.id.title_bar_checkBox);
        this.mMenuMore = viewInflate.findViewById(R.id.menu_more);
        initSortView(viewInflate, true);
        this.mSortIv.setVisibility(8);
        StringBuilder sb = new StringBuilder();
        sb.append("12 mSortIv:");
        sb.append(this.mSortIv.getVisibility() == 0);
        Log.v("VideosFragment", sb.toString());
        if (!this.x0) {
            this.mTitleTv.setText(this.B);
            return;
        }
        this.t.U(false);
        String string = getResources().getString(R.string.history_list);
        this.B = string;
        this.mTitleTv.setText(string);
        View view2 = this.mSortIv;
        if (view2 instanceof TextView) {
            ((TextView) view2).setText(R.string.os_clean);
        }
        this.mSortIv.setContentDescription(this.mContext.getResources().getString(R.string.talkback_clear_history));
        this.mSortIv.setOnClickListener(new a());
    }

    public final void j3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        MediaItem mediaItem = (MediaItem) baseQuickAdapter.getData().get(i);
        if (view.getId() == R.id.iv_more) {
            R3("file_operate_menu_tag", mediaItem, i, p06.A(this.s));
        }
    }

    public final void k3(View view) {
        this.mActivity.onBackPressed();
    }

    public final void l3(boolean z, List list) {
        StringBuilder sb = new StringBuilder();
        sb.append("AllVideoDataListLiveData onChanged ");
        sb.append(list != null ? list.size() : 0);
        Log.d("VideosFragment", sb.toString());
        Z3(list, z ? this.D0.d() : null);
    }

    @Override
    public void loadData(final boolean z, final boolean z2) {
        super.loadData(z, z2);
        if (this.s == 2 && !this.w0) {
            Log.w("VideosFragment", "loadData, not finished preload");
            return;
        }
        if (this.Q0 && com.transsion.mediationads.manager.b.c().f() && this.y0 == null) {
            W3();
        }
        Log.w("VideosFragment", "loadData start,mListFlag=" + this.s);
        mc7.K(this).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.q3(z, (VideosFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.n3(z2, (Pair) obj);
            }
        });
    }

    public final void m3(List list) {
        StringBuilder sb = new StringBuilder();
        sb.append("AllShortVideoDataListLiveData onChanged ");
        sb.append(list != null ? list.size() : 0);
        Log.d("VideosFragment", sb.toString());
        Z3(this.D0.e(), list);
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            int i = this.s;
            if (i == 1) {
                r06.c(screen_type, "vd_history_more");
            } else if (i == 2) {
                r06.c(screen_type, "vd_all_video_show");
            } else {
                if (i != 3) {
                    return;
                }
                r06.c(screen_type, "vd_filemg_ep");
            }
        }
    }

    @Override
    public void markPointVisiable(boolean z) {
        super.markPointVisiable(z);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser && jCurrentTimeMillis - this.E0 > 5000) {
            if (!this.F0 && this.s == 2) {
                this.E0 = jCurrentTimeMillis;
                C3();
                r06.e(this.mScreenType, null, "vd_all_video_show", 9324L);
                B3();
            }
            this.F0 = false;
        }
    }

    @Override
    public void markSecondPageShow() {
        super.markSecondPageShow();
        if (this.x0) {
            r06.e(this.mScreenType, null, "vd_history_more", 9324L);
        }
    }

    public final void n3(boolean z, Pair pair) {
        Object obj;
        StringBuilder sb = new StringBuilder();
        sb.append("loadData end:data size:");
        sb.append(pair != null ? ((ArrayList) pair.first).size() : 0);
        sb.append(", shortData size: ");
        sb.append((pair == null || (obj = pair.second) == null) ? 0 : ((ArrayList) obj).size());
        sb.append(",mListFlag:");
        sb.append(this.s);
        Log.d("VideosFragment", sb.toString());
        if (z && this.M0) {
            this.N0 = true;
            return;
        }
        this.N0 = false;
        if (pair != null) {
            this.r = new ArrayList((Collection) pair.first);
            if (this.x0) {
                X3();
            }
            if (pp3.e(getContext())) {
                ye6.b((List) pair.second);
                this.L0 = new ArrayList((Collection) pair.second);
            } else {
                this.L0 = new ArrayList();
            }
        }
        if (S0()) {
            this.mbFragmentShowCompleted = true;
        }
        updateUiForDataChanged();
        h27.c().e(1143, new Object[0]);
    }

    @Override
    public void onClick(View view) {
        if (ingoreClickEvent()) {
            return;
        }
        this.mFirstClickTime = System.currentTimeMillis();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        com.transsion.widgetslib.dialog.d dVarM;
        super.onConfigurationChanged(configuration);
        FileOperateUtils fileOperateUtils = this.mFileOperateUtils;
        if (fileOperateUtils != null && (dVarM = fileOperateUtils.M()) != null && dVarM.isShowing()) {
            dVarM.g(configuration);
        }
        c4();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.s = arguments.getInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG);
        }
        boolean z = true;
        this.O = true;
        this.x0 = this.s == 1;
        MediaBucket mediaBucket = new MediaBucket();
        this.q0 = mediaBucket;
        if (arguments != null) {
            mediaBucket.setBucketId(arguments.getLong("bucket_fragment_buicket_id"));
            this.q0.fromInternal = arguments.getBoolean("bucket_fragment_is_internet");
            this.B = arguments.getString("bucket_fragment_buicket_name");
            this.q0.setVirtualFolder(arguments.getBoolean("bucket_fragment_buicket_isVirtual"));
            this.q0.setVirtualFolderMatchName(arguments.getString("bucket_fragment_buicket_virtual_match_name"));
            this.q0.setParentPath(arguments.getString("bucket_fragment_buicket_path"));
        }
        if (this.x0) {
            this.G.i().observe(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.s3((List) obj);
                }
            });
        }
        if (this.s == 3) {
            r06.e(this.mScreenType, null, "vd_filemg_ep", 932460000004L);
        }
        int i = this.s;
        boolean z2 = i == 2;
        this.Q0 = z2;
        if (!z2 && i != 3) {
            z = false;
        }
        this.t0 = z;
        registerBottomBarVisibleChanged();
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
    }

    @Override
    public void onDestroyView() {
        L3();
        super.onDestroyView();
        if (getContext() instanceof BaseActivity) {
            ((BaseActivity) getContext()).removeScreenTypeListener("VideosFragment");
        }
        LiveEventBus.b().d("bottom_delete_menu").c();
        LiveEventBus.b().d("video_sheet_dialog_destroy").c();
        ThreadUtils.o().removeCallbacks(this.T0);
        if (this.Q0) {
            com.transsion.mediationads.manager.b.c().a();
        }
    }

    @Override
    public void onFinishRequestPermission(int i, boolean z) {
        FileOperateUtils fileOperateUtils;
        FileOperateUtils fileOperateUtils2;
        super.onFinishRequestPermission(i, z);
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            if (i == 131) {
                if (Build.VERSION.SDK_INT < 30 || !Environment.isExternalStorageManager() || (fileOperateUtils2 = this.mFileOperateUtils) == null) {
                    return;
                }
                fileOperateUtils2.W("video");
                return;
            }
            if (i == 132 && z && (fileOperateUtils = this.mFileOperateUtils) != null) {
                fileOperateUtils.W("video");
            }
        }
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        this.mScreenType = screen_type;
        c4();
    }

    @Override
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z || MainApp.l) {
            return;
        }
        if (this.x0 && this.isInEditMode) {
            editMode(false);
        }
        this.T0 = new Runnable() {
            @Override
            public final void run() {
                this.b.v3();
            }
        };
        int i = this.s;
        if (i == 33 || i == 30 || i == 42) {
            return;
        }
        ThreadUtils.o().postDelayed(this.T0, 300L);
    }

    @Override
    public int onLayoutId() {
        return this.t0 ? R.layout.videos_fragment_pull_damping : R.layout.videos_fragment;
    }

    @Override
    public void onPause() {
        super.onPause();
        K0();
    }

    @Override
    public void onPlayItemChanged(MediaItem mediaItem) {
        List list;
        ArrayList arrayList = this.r;
        if (arrayList != null && !arrayList.isEmpty() && this.r.contains(mediaItem)) {
            J3();
            return;
        }
        if (this.s == 2 && (list = this.L0) != null && !list.isEmpty() && this.L0.contains(mediaItem)) {
            ShortVideoAdapter shortVideoAdapter = this.J0;
            if (shortVideoAdapter != null) {
                shortVideoAdapter.d(mediaItem);
                return;
            }
            return;
        }
        if (L2(this.r, mediaItem)) {
            J3();
            return;
        }
        if (this.s == 2 && L2(this.L0, mediaItem)) {
            ShortVideoAdapter shortVideoAdapter2 = this.J0;
            if (shortVideoAdapter2 != null) {
                shortVideoAdapter2.d(mediaItem);
                return;
            }
            return;
        }
        if (this.t == null && this.J0 == null) {
            return;
        }
        MediaItem mediaItemC0 = VideoPlayManager.X().c0();
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null) {
            MediaItem mediaItemC = bucketDateAdapter.C();
            if (mediaItemC != null && !mediaItemC.equals(new MediaItem())) {
                int i = 0;
                while (true) {
                    if (i < this.t.getItemCount()) {
                        MediaItem item = this.t.getItem(i);
                        if (item == null || item.isTimeItem || item.mIsMediaTionAd || !(mediaItemC.equals(item) || W2(mediaItemC, item))) {
                            i++;
                        } else {
                            this.t.refreshNotifyItemChanged(i);
                        }
                    } else if (mediaItemC0 != null) {
                    }
                    this.t.Y(mediaItemC0);
                }
            } else if (mediaItemC0 != null) {
                this.t.Y(mediaItemC0);
            }
        }
        ShortVideoAdapter shortVideoAdapter3 = this.J0;
        if (shortVideoAdapter3 != null) {
            shortVideoAdapter3.g();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.x0) {
            VideoPlayManager.X().C1(this);
        } else if (!U0()) {
            if (this.mIsVisibleToUser && this.P0.booleanValue()) {
                L0();
                this.P0 = Boolean.FALSE;
            } else {
                J3();
            }
        }
        VideoMainRecyclerView videoMainRecyclerView = this.M;
        if (videoMainRecyclerView == null || this.s != 2) {
            return;
        }
        videoMainRecyclerView.post(new Runnable() {
            @Override
            public final void run() {
                this.b.M0();
            }
        });
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
    }

    @Override
    public void onSelectInViewPage() {
        super.onSelectInViewPage();
    }

    @Override
    public void onStart() {
        super.onStart();
    }

    @Override
    public void onUnSelectInViewPage() {
        super.onUnSelectInViewPage();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mScreenType = b39.a(this.mContext);
        this.u0 = view.findViewById(R.id.play_all);
        this.v0 = (TextView) view.findViewById(R.id.media_num);
        S2(view);
        T2();
        R2(view);
        P2();
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.loading_indicator);
        this.B0 = progressBar;
        if (this.x0 && progressBar != null) {
            progressBar.setVisibility(0);
        }
        Q2(view);
        initTitleBar(view);
        this.C0 = (ConstraintLayout) view.findViewById(R.id.cl_drag_animation_view);
        if (this.s == 2) {
            U2();
        }
        super.onViewCreatedEnd(view, bundle);
    }

    public final Pair q3(boolean z, VideosFragment videosFragment) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList<MediaItem> arrayListI3 = I3(z);
        ArrayList arrayList = new ArrayList();
        if (!this.x0) {
            ls1.a(arrayListI3);
            PlayListData.getInstance().restoreShuffle(arrayListI3);
            PlayListData.getInstance().restore(arrayListI3);
            h27.c().e(1184, new Object[0]);
            if (this.D0 != null) {
                VideoPlayManager.X().M1(this.D0.f());
            }
            if (pp3.e(getContext()) && this.s == 2) {
                arrayList = (ArrayList) arrayListI3.stream().filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return VideosFragment.o3((MediaItem) obj);
                    }
                }).collect(Collectors.toCollection(new xac()));
                ls1.a(arrayList);
                arrayListI3.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return VideosFragment.p3((MediaItem) obj);
                    }
                });
            }
        }
        LogUtils.v("VideosFragment", "loadData,query end cost: " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
        F0(arrayListI3);
        Y3(arrayListI3);
        H0(arrayListI3);
        ArrayList<MediaItem> arrayListA3 = A3(arrayListI3);
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null) {
            bucketDateAdapter.W(arrayListA3 != null);
        }
        if (arrayListA3 != null) {
            arrayListI3 = arrayListA3;
        }
        return new Pair(arrayListI3, arrayList);
    }

    public final void r3(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        try {
            int size = arrayList.size();
            long j = 0;
            for (int i = 0; i < size; i++) {
                j += ((MediaItem) arrayList.get(i)).size;
            }
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putString("name", this.B);
            bundle.putString(hb0.KEY_NAME_NUM, size + "");
            bundle.putString(PlayAudioData.TAG_SIZE, Formatter.formatFileSize(this.mContext, j));
            trackData.add("name", this.B);
            trackData.add(hb0.KEY_NAME_NUM, size);
            trackData.add(PlayAudioData.TAG_SIZE, Formatter.formatFileSize(this.mContext, j));
            p06.q0(trackData, bundle, "vd_filemg_ep_p", 9324L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void s3(List list) {
        Log.d("VideosFragment", "VideoRecordLiveData onChanged size:" + list.size() + " mListFlag:" + this.s);
        loadData(false);
    }

    @Override
    public void scrollToTop() {
        super.scrollToTop();
        VideoMainRecyclerView videoMainRecyclerView = this.M;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.scrollToPosition(0);
        }
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
    }

    @Override
    public void t(boolean z) {
        if (!z || this.x0) {
            return;
        }
        M2();
        if ((!this.r.isEmpty() || this.L0.isEmpty() || !pp3.e(getContext())) && this.J0 != null && pp3.e(getContext())) {
            mc7.K(this).g(bindToLifecycle()).d0(k29.c()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.w3((VideosFragment) obj);
                }
            }).M(vb.a()).g(bindToLifecycle()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.x3((List) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    ((Throwable) obj).printStackTrace();
                }
            });
        }
        p06.B(this.s, Boolean.TRUE);
    }

    @Override
    public void u1(BaseQuickAdapter baseQuickAdapter, View view, int i, boolean z) {
        if (baseQuickAdapter.getData().isEmpty()) {
            return;
        }
        MediaItem mediaItem = (MediaItem) baseQuickAdapter.getData().get(i);
        CheckBox checkBox = (!this.r0 || mediaItem.isTimeItem) ? (CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox) : (CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox_grid);
        if (checkBox != null) {
            ((BucketDateAdapter) baseQuickAdapter).T(mediaItem, z == checkBox.isChecked(), i);
        }
    }

    public final void u3(Boolean bool) {
        editMode(false);
    }

    @Override
    public void updateShowUI() {
        super.updateShowUI();
        S3();
    }

    public final void v3() {
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity != null) {
            baseActivity.onBackPressed();
        }
    }

    public final List w3(VideosFragment videosFragment) {
        ShortVideoAdapter shortVideoAdapter = this.J0;
        if (shortVideoAdapter == null || shortVideoAdapter.getData().isEmpty()) {
            return this.L0;
        }
        List listZ = SortUtil.z(new ArrayList(this.J0.getData()));
        Log.d("VideosFragment", "0 updateShortVideoView list count: " + this.L0.size() + ", duration: " + ((MediaItem) this.L0.get(0)).duration);
        return listZ;
    }

    @Override
    public void x1() {
        VideoMainRecyclerView videoMainRecyclerView;
        super.x1();
        BaseFragment.d dVar = this.mMenuShowListener;
        if (dVar != null) {
            dVar.a(!this.r.isEmpty());
        }
        int i = 0;
        if (raa.i(this.mContext) && (videoMainRecyclerView = this.M) != null) {
            videoMainRecyclerView.setVisibility(T0() ? 8 : 0);
        }
        int i2 = this.s;
        if (i2 != 2) {
            if (i2 != 14) {
                setShuffleBtnVisible(!T0(), "video");
                return;
            }
            i = 3;
        }
        if (T0()) {
            h27.c().e(1161, Boolean.FALSE, Integer.valueOf(i));
        } else {
            h27.c().e(1161, Boolean.TRUE, Integer.valueOf(i));
        }
    }

    public final void x3(List list) {
        if (list != null) {
            ArrayList arrayList = new ArrayList(list);
            this.L0 = arrayList;
            this.J0.setNewData(arrayList);
        }
    }

    public final void z3(DialogInterface dialogInterface, int i) {
        G3();
    }
}
