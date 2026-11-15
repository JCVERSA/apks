package com.transsion.sniffer_load;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.lzy.okgo.model.HttpHeaders;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoArrayBean;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoBean;
import com.transsion.dbdata.beans.sniff.VideoFileInfoBean;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.sniffer_load.SniffMultiVideoSheetActivity;
import com.transsion.sniffer_load.adapter.SniffMultiVideoAdapter;
import com.transsion.sniffer_load.data.SniffDataManager;
import com.transsion.sniffer_load.sniffservice.SniffHeaderInjector;
import com.transsion.sniffer_load.viewmodel.DownloadViewModel;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.BadgeView;
import com.transsion.widgets.GestureUtil;
import defpackage.av3;
import defpackage.e16;
import defpackage.e6b;
import defpackage.ed7;
import defpackage.f5;
import defpackage.hb0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.mf7;
import defpackage.p06;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.rc7;
import defpackage.t74;
import defpackage.vb;
import defpackage.ym1;
import defpackage.yv5;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

public class SniffMultiVideoSheetActivity extends RxPermissionOSBottomSheetDialog {
    public SniffVideoInfoArrayBean N;
    public View O;
    public RecyclerView P;
    public SniffMultiVideoAdapter Q;
    public String R;
    public boolean S;
    public int[] T;
    public int[] U;
    public String V;
    public int W;
    public int X;
    public boolean Y;
    public DownloadViewModel Z;

    public class a implements RequestListener {
        public a() {
        }

        @Override
        public boolean onResourceReady(Bitmap bitmap, Object obj, Target target, DataSource dataSource, boolean z) {
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            return false;
        }
    }

    public class b implements pd7 {
        public b() {
        }

        @Override
        public void onNext(c cVar) {
            SniffMultiVideoSheetActivity.this.N.getMultiVideoList().get(cVar.b).getVideoList().get(0).setSize(cVar.a);
            SniffMultiVideoSheetActivity.this.Q.notifyItemChanged(cVar.b + SniffMultiVideoSheetActivity.this.Q.getHeaderLayoutCount());
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public static class c {
        public long a;
        public int b;
    }

    public static void C0(Context context, boolean z, String str, int[] iArr, int[] iArr2, boolean z2, String str2, int i) {
        Intent intent = new Intent(context, (Class<?>) SniffMultiVideoSheetActivity.class);
        intent.putExtra("is_client", z);
        intent.putExtra("page", str);
        intent.putExtra("endPostion", iArr);
        intent.putExtra(PlayAudioData.TAG_SIZE, iArr2);
        intent.putExtra("is_rtl", z2);
        intent.putExtra("ori_url", str2);
        intent.putExtra("BUNDLE_KEY_DIG_STYLE_TYPE", i);
        f5.c(intent, context);
    }

    public static void r0(List list, rc7 rc7Var) {
        c cVar = new c();
        for (int i = 0; i < list.size(); i++) {
            VideoFileInfoBean videoFileInfoBean = ((SniffVideoInfoBean) list.get(i)).getVideoList().get(0);
            if (videoFileInfoBean.getSize() <= 0) {
                if (videoFileInfoBean.getUrl() == null || TextUtils.isEmpty(videoFileInfoBean.getUrl())) {
                    rc7Var.onError(new Throwable("videoUrl is null or empty"));
                } else {
                    try {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(videoFileInfoBean.getUrl()).openConnection();
                        httpURLConnection.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "identity");
                        long contentLength = httpURLConnection.getContentLength();
                        httpURLConnection.disconnect();
                        cVar.b = i;
                        cVar.a = contentLength;
                        rc7Var.onNext(cVar);
                    } catch (Exception e) {
                        rc7Var.onError(new Throwable(e.getMessage()));
                    }
                }
            }
        }
        rc7Var.onComplete();
    }

    public void A0(final com.transsion.sniffer_load.okdownload.a aVar, int i) {
        e16.g(i);
        String str = this.V;
        aVar.k = str;
        SniffHeaderInjector.inject(aVar, str, aVar.b);
        new e6b(this, new e6b.c() {
            @Override
            public final void a(boolean z) {
                this.a.u0(aVar, z);
            }
        }).b(false);
    }

    public final void B0() {
        SniffVideoInfoBean sniffVideoInfo;
        SniffMultiVideoAdapter sniffMultiVideoAdapter = new SniffMultiVideoAdapter(this);
        this.Q = sniffMultiVideoAdapter;
        sniffMultiVideoAdapter.r(this.X);
        if (this.X == 2) {
            this.Q.addHeaderView(getLayoutInflater().inflate(R.layout.rv_header_sniff_video_resolution_download, (ViewGroup) null));
        } else {
            this.Q.addHeaderView(getLayoutInflater().inflate(R.layout.rv_header_sniff_multi_video_download, (ViewGroup) null));
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        GestureUtil.scrollGesture((ImageView) this.O.findViewById(R.id.close), new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i) {
                this.a.v0(i);
            }
        });
        RecyclerView recyclerView = (RecyclerView) this.O.findViewById(R.id.rv_sniff_multi_video);
        this.P = recyclerView;
        recyclerView.setLayoutManager(linearLayoutManager);
        this.P.setAdapter(this.Q);
        SniffVideoInfoArrayBean pageData = SniffDataManager.getPageData(this.R);
        this.N = pageData;
        this.Q.setNewData(pageData.getMultiVideoList());
        this.Z.a(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.w0((SniffVideoInfoArrayBean) obj);
            }
        });
        this.Q.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.x0(baseQuickAdapter, view, i);
            }
        });
        LinearLayout headerLayout = this.Q.getHeaderLayout();
        if (headerLayout != null && this.X == 2 && (sniffVideoInfo = this.N.getSniffVideoInfo(0)) != null) {
            TextView textView = (TextView) headerLayout.findViewById(R.id.tv_title);
            if (textView != null) {
                textView.setText(sniffVideoInfo.getTitle());
            }
            ImageView imageView = (ImageView) headerLayout.findViewById(R.id.iv_download_cover);
            if (imageView != null) {
                Glide.with(getApplicationContext()).asBitmap().load2(sniffVideoInfo.getVideoCover()).placeholder(ResourcesCompat.getDrawable(getResources(), com.transsion.magicvideo.R.drawable.main_fragment_placeholder, getTheme())).addListener(new a()).into(imageView);
            }
        }
        this.O.findViewById(R.id.ll_bottom_go).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.y0(view);
            }
        });
        p0();
        final BadgeView badgeView = (BadgeView) this.O.findViewById(R.id.bv_count);
        if (GlobalDownloadManger.B().h() <= 0) {
            badgeView.setVisibility(8);
        } else {
            badgeView.setVisibility(0);
            badgeView.setNum(GlobalDownloadManger.B().h());
        }
        GlobalDownloadManger.B().v("sniff_dialog", new mf7() {
            @Override
            public void a(int i) {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public void run() {
                        int iH = GlobalDownloadManger.B().h();
                        if (iH <= 0) {
                            badgeView.setVisibility(4);
                            return;
                        }
                        badgeView.setNum(iH);
                        badgeView.requestLayout();
                        badgeView.setVisibility(0);
                    }
                });
            }
        });
    }

    @Override
    public void initView() {
        super.initView();
        this.O = LayoutInflater.from(this).inflate(R.layout.dialog_for_sniff_mutil_video_download, (ViewGroup) null);
        this.Z = (DownloadViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(DownloadViewModel.class);
        this.W = Color.parseColor("#FF575C");
        q0();
        B0();
        addPage(this.O).setTitleLayoutVisible(false);
    }

    @Override
    public boolean isFixedHeight() {
        return false;
    }

    public mc7 o0(final List list) {
        return mc7.h(new ed7() {
            @Override
            public final void subscribe(rc7 rc7Var) {
                SniffMultiVideoSheetActivity.r0(list, rc7Var);
            }
        });
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        GlobalDownloadManger.B().i("sniff_dialog");
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                this.b.t0();
            }
        });
    }

    @Override
    public void onStart() {
        super.onStart();
        z0();
    }

    public void p0() {
        SniffVideoInfoArrayBean sniffVideoInfoArrayBean = this.N;
        if (sniffVideoInfoArrayBean == null || sniffVideoInfoArrayBean.getMultiVideoList() == null || this.N.getMultiVideoList().size() <= 0 || this.N.getMultiVideoList().get(0).getVideoList() == null || this.N.getMultiVideoList().get(0).getVideoList().size() <= 0 || yv5.e(this.N.getMultiVideoList().get(0).getVideoList().get(0).getUrl())) {
            return;
        }
        mc7.K(this.N).w(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.s0((SniffVideoInfoArrayBean) obj);
            }
        }).d0(k29.c()).M(vb.a()).subscribe(new b());
    }

    public final void q0() {
        this.S = getIntent().getBooleanExtra("is_client", true);
        this.R = getIntent().getStringExtra("page");
        this.T = getIntent().getIntArrayExtra("endPostion");
        this.U = getIntent().getIntArrayExtra(PlayAudioData.TAG_SIZE);
        this.Y = getIntent().getBooleanExtra("is_rtl", false);
        this.X = getIntent().getIntExtra("BUNDLE_KEY_DIG_STYLE_TYPE", 0);
        this.V = getIntent().getStringExtra("ori_url");
        this.N = SniffDataManager.getPageData(this.R);
    }

    public final mc7 s0(SniffVideoInfoArrayBean sniffVideoInfoArrayBean) {
        return o0(sniffVideoInfoArrayBean.getMultiVideoList());
    }

    public final void t0() {
        List<SniffVideoInfoBean> multiVideoList;
        SniffVideoInfoArrayBean sniffVideoInfoArrayBean = this.N;
        if (sniffVideoInfoArrayBean == null || (multiVideoList = sniffVideoInfoArrayBean.getMultiVideoList()) == null) {
            return;
        }
        Iterator<SniffVideoInfoBean> it = multiVideoList.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().isInvalid()) {
                i++;
            }
        }
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(hb0.KEY_NAME_NUM, multiVideoList.size());
        bundle.putInt("num_1", i);
        trackData.add(hb0.KEY_NAME_NUM, multiVideoList.size());
        trackData.add("num_1", i);
        p06.q0(trackData, bundle, "dl_brower_rp_vlist_confail_p", 9324L);
    }

    public final void u0(com.transsion.sniffer_load.okdownload.a aVar, boolean z) {
        if (z) {
            GlobalDownloadManger.B().p(this, aVar);
        }
    }

    public final void v0(int i) {
        if (i == 4) {
            finish();
        }
    }

    public final void w0(SniffVideoInfoArrayBean sniffVideoInfoArrayBean) {
        SniffVideoInfoArrayBean pageData = SniffDataManager.getPageData(this.R);
        this.N = pageData;
        this.Q.setNewData(pageData.getMultiVideoList());
    }

    public final void x0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.iv_sniff_multi_video_download_detail) {
            SniffVideoInfoBean sniffVideoInfoBean = this.N.getMultiVideoList().get(i);
            if (sniffVideoInfoBean.isInvalid()) {
                ToastUtils.s(R.string.download_video_disable_tip);
                return;
            }
            if (GlobalDownloadManger.B().d(sniffVideoInfoBean.getVideoList().get(0).getUrl())) {
                ToastUtils.s(R.string.bt_file_has_task);
                return;
            }
            if (SniffVideoInfoBean.isNotEmpty(sniffVideoInfoBean)) {
                int i2 = this.X == 2 ? 1 : 0;
                VideoFileInfoBean videoFileInfoBean = sniffVideoInfoBean.getVideoList().get(0);
                com.transsion.sniffer_load.okdownload.a aVar = new com.transsion.sniffer_load.okdownload.a(videoFileInfoBean.getUrl(), videoFileInfoBean.getUrl(), sniffVideoInfoBean.getVideoFileName(), videoFileInfoBean.getSize(), videoFileInfoBean.getType());
                aVar.j = this.S;
                aVar.g = sniffVideoInfoBean.getSource();
                aVar.n = sniffVideoInfoBean.getUaAgent();
                aVar.o = sniffVideoInfoBean.getCookie();
                aVar.c = sniffVideoInfoBean.getVideoCover();
                aVar.k = this.V;
                aVar.k(videoFileInfoBean.getResolution());
                aVar.i(i2);
                ym1.b = true;
                A0(aVar, aVar.g);
                ym1.b = false;
                baseQuickAdapter.notifyItemChanged(i + baseQuickAdapter.getHeaderLayoutCount());
                hb0.sniffDlgType = i2;
                hb0.sniffDownloadResolution = videoFileInfoBean.getResolution();
                e16.i(videoFileInfoBean.getUrl());
            }
        }
    }

    public final void y0(View view) {
        Intent intent = new Intent(this, (Class<?>) DownloadManagerActivity.class);
        intent.putExtra("from", "dl_brower_rp_vlist_check_cl");
        intent.putExtra("go_download", 1);
        intent.putExtra("need_scroll", GlobalDownloadManger.B().h() > 0);
        f5.c(intent, this);
        p06.d0("dl_brower_rp_vlist_check_cl");
    }

    public void z0() {
        int size;
        int source;
        int i;
        if (this.N.isNotEmpty()) {
            size = this.N.getMultiVideoList().size();
            source = this.N.getMultiVideoList().get(0).getSource();
            Iterator<SniffVideoInfoBean> it = this.N.getMultiVideoList().iterator();
            i = 0;
            while (it.hasNext()) {
                if (av3.y(it.next().getVideoList().get(0).getType())) {
                    i++;
                }
            }
        } else {
            size = 0;
            source = 0;
            i = 0;
        }
        e16.b = i;
        hb0.num = size;
        e16.a = source;
        hb0.sniffDlgType = this.X == 2 ? 1 : 0;
        e16.h();
    }
}
