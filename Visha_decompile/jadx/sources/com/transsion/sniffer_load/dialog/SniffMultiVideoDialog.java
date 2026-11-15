package com.transsion.sniffer_load.dialog;

import android.app.Dialog;
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
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.fragment.app.FragmentActivity;
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
import com.transsion.playercommon.fragments.BaseBottomSheetDialog;
import com.transsion.sniffer_load.DownloadManagerActivity;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.sniffer_load.adapter.SniffMultiVideoAdapter;
import com.transsion.sniffer_load.data.SniffDataManager;
import com.transsion.sniffer_load.dialog.SniffMultiVideoDialog;
import com.transsion.sniffer_load.sniffservice.SniffHeaderInjector;
import com.transsion.sniffer_load.viewmodel.DownloadViewModel;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.BadgeView;
import com.transsion.widgets.GestureUtil;
import defpackage.av3;
import defpackage.e16;
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
import java.util.Objects;

public class SniffMultiVideoDialog extends BaseBottomSheetDialog {
    public SniffVideoInfoArrayBean n;
    public RecyclerView o;
    public SniffMultiVideoAdapter p;
    public DownloadViewModel q;
    public String r;
    public boolean s;
    public int[] t;
    public int[] u;
    public String v;
    public int w;
    public int x;
    public boolean y;

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
            SniffMultiVideoDialog.this.n.getMultiVideoList().get(cVar.b).getVideoList().get(0).setSize(cVar.a);
            SniffMultiVideoAdapter sniffMultiVideoAdapter = SniffMultiVideoDialog.this.p;
            sniffMultiVideoAdapter.notifyItemChanged(cVar.b + sniffMultiVideoAdapter.getHeaderLayoutCount());
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

    public static void L(List list, rc7 rc7Var) {
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

    public void Q(View view) {
        Intent intent = new Intent(getContext(), (Class<?>) DownloadManagerActivity.class);
        intent.putExtra("go_download", 1);
        intent.putExtra("from", "dl_brower_rp_vlist_check_cl");
        intent.putExtra("need_scroll", GlobalDownloadManger.B().h() > 0);
        f5.c(intent, getContext());
        p06.d0("dl_brower_rp_vlist_check_cl");
    }

    public mc7 J(final List list) {
        return mc7.h(new ed7() {
            @Override
            public final void subscribe(rc7 rc7Var) {
                SniffMultiVideoDialog.L(list, rc7Var);
            }
        });
    }

    public void K() {
        SniffVideoInfoArrayBean sniffVideoInfoArrayBean = this.n;
        if (sniffVideoInfoArrayBean == null || sniffVideoInfoArrayBean.getMultiVideoList() == null || this.n.getMultiVideoList().size() <= 0 || this.n.getMultiVideoList().get(0).getVideoList() == null || this.n.getMultiVideoList().get(0).getVideoList().size() <= 0 || yv5.e(this.n.getMultiVideoList().get(0).getVideoList().get(0).getUrl())) {
            return;
        }
        mc7.K(this.n).w(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.M((SniffVideoInfoArrayBean) obj);
            }
        }).d0(k29.c()).M(vb.a()).subscribe(new b());
    }

    public final mc7 M(SniffVideoInfoArrayBean sniffVideoInfoArrayBean) {
        return J(sniffVideoInfoArrayBean.getMultiVideoList());
    }

    public final void N(int i) {
        if (i == 4) {
            getDialog().dismiss();
        }
    }

    public final void O(SniffVideoInfoArrayBean sniffVideoInfoArrayBean) {
        SniffVideoInfoArrayBean pageData = SniffDataManager.getPageData(this.r);
        this.n = pageData;
        this.p.setNewData(pageData.getMultiVideoList());
    }

    public final void P(View view, BaseQuickAdapter baseQuickAdapter, View view2, int i) {
        if (view2.getId() == R.id.iv_sniff_multi_video_download_detail) {
            SniffVideoInfoBean sniffVideoInfoBean = this.n.getMultiVideoList().get(i);
            if (sniffVideoInfoBean.isInvalid()) {
                ToastUtils.s(R.string.download_video_disable_tip);
                return;
            }
            if (GlobalDownloadManger.B().d(sniffVideoInfoBean.getVideoList().get(0).getUrl())) {
                ToastUtils.s(R.string.bt_file_has_task);
                return;
            }
            if (SniffVideoInfoBean.isNotEmpty(sniffVideoInfoBean)) {
                int i2 = this.x == 2 ? 1 : 0;
                VideoFileInfoBean videoFileInfoBean = sniffVideoInfoBean.getVideoList().get(0);
                com.transsion.sniffer_load.okdownload.a aVar = new com.transsion.sniffer_load.okdownload.a(videoFileInfoBean.getUrl(), videoFileInfoBean.getUrl(), sniffVideoInfoBean.getVideoFileName(), videoFileInfoBean.getSize(), videoFileInfoBean.getType());
                aVar.j = this.s;
                aVar.g = sniffVideoInfoBean.getSource();
                aVar.n = sniffVideoInfoBean.getUaAgent();
                aVar.o = sniffVideoInfoBean.getCookie();
                aVar.c = sniffVideoInfoBean.getVideoCover();
                aVar.k = this.v;
                aVar.k(videoFileInfoBean.getResolution());
                aVar.i(i2);
                SniffHeaderInjector.inject(aVar, aVar.k, aVar.b);
                ym1.b = true;
                FragmentActivity fragmentActivityRequireActivity = requireActivity();
                if (fragmentActivityRequireActivity instanceof WebActivity ? ((WebActivity) fragmentActivityRequireActivity).j(aVar, aVar.g) : false) {
                    T(view, this.o);
                }
                ym1.b = false;
                baseQuickAdapter.notifyItemChanged(baseQuickAdapter.getHeaderLayoutCount() + i);
                hb0.sniffDlgType = i2;
                hb0.sniffDownloadResolution = videoFileInfoBean.getResolution();
                e16.i(videoFileInfoBean.getUrl());
            }
        }
    }

    public void R() {
        int size;
        int source;
        int i;
        if (this.n.isNotEmpty()) {
            size = this.n.getMultiVideoList().size();
            source = this.n.getMultiVideoList().get(0).getSource();
            Iterator<SniffVideoInfoBean> it = this.n.getMultiVideoList().iterator();
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
        hb0.sniffDlgType = this.x == 2 ? 1 : 0;
        e16.h();
    }

    public final void S(int[] iArr, int[] iArr2, boolean z, int[] iArr3) {
        BadgeView badgeView = new BadgeView(getContext());
        badgeView.setRedPointType(3);
        badgeView.setBackgroundColor(this.w);
        badgeView.setNum(1);
        ym1.a((ViewGroup) getActivity().getWindow().getDecorView(), badgeView, new int[]{z ? iArr[0] - iArr3[0] : iArr[0], iArr[1]}, new int[]{z ? iArr2[0] - iArr3[0] : iArr2[0], iArr2[1]}, false);
    }

    public final void T(View view, View view2) {
        ViewParent parent = view2.getParent();
        int[] iArr = new int[2];
        if (this.x == 2) {
            if (parent instanceof LinearLayout) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if (viewGroup.getId() == R.id.ll_multi_video_dialog_content) {
                    View viewFindViewById = viewGroup.findViewById(R.id.iv_download_cover);
                    int width = viewFindViewById.getWidth();
                    int height = viewFindViewById.getHeight();
                    viewFindViewById.getLocationInWindow(iArr);
                    iArr[0] = (iArr[0] + (width / 2)) - (this.y ? 0 : com.transsion.utils.a.d(view.getContext(), 14.0f));
                    iArr[1] = (iArr[1] + (height / 2)) - (this.y ? 0 : com.transsion.utils.a.d(view.getContext(), 14.0f));
                }
            }
        } else if (parent instanceof LinearLayout) {
            ViewGroup viewGroup2 = (ViewGroup) parent;
            if (viewGroup2.getId() == R.id.ll_multi_video_dialog_content) {
                View viewFindViewById2 = viewGroup2.findViewById(R.id.ll_bucket_fragment_item);
                int width2 = viewFindViewById2.getWidth();
                int height2 = viewFindViewById2.getHeight();
                viewFindViewById2.getLocationInWindow(iArr);
                iArr[0] = (iArr[0] + (width2 / 2)) - com.transsion.utils.a.d(view.getContext(), 14.0f);
                iArr[1] = (iArr[1] + (height2 / 2)) - com.transsion.utils.a.d(view.getContext(), 14.0f);
            }
        }
        int width3 = view.getWidth();
        int height3 = view.getHeight();
        int[] iArr2 = this.u;
        int i = iArr2[0] - width3;
        int i2 = iArr2[1] - height3;
        S(new int[]{iArr[0] + i, iArr[1] + i2}, this.t, this.y, iArr2);
        int[] iArr3 = this.t;
        U(iArr, new int[]{iArr3[0] - i, iArr3[1] - i2}, this.y, new int[]{width3, height3});
    }

    public final void U(int[] iArr, int[] iArr2, boolean z, int[] iArr3) {
        BadgeView badgeView = new BadgeView(getContext());
        badgeView.setRedPointType(3);
        badgeView.setBackgroundColor(this.w);
        badgeView.setNum(1);
        ym1.a((ViewGroup) getDialog().getWindow().getDecorView(), badgeView, new int[]{z ? iArr[0] - iArr3[0] : iArr[0], iArr[1]}, new int[]{z ? iArr2[0] - iArr3[0] : iArr2[0], iArr2[1]}, true);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.q = (DownloadViewModel) new ViewModelProvider(requireActivity(), new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(DownloadViewModel.class);
        Bundle arguments = getArguments();
        this.w = Color.parseColor("#FF575C");
        if (arguments != null) {
            this.r = arguments.getString("page");
            this.t = arguments.getIntArray("endPostion");
            this.u = arguments.getIntArray(PlayAudioData.TAG_SIZE);
            this.x = arguments.getInt("BUNDLE_KEY_DIG_STYLE_TYPE");
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Dialog dialog = getDialog();
        Objects.requireNonNull(dialog);
        dialog.requestWindowFeature(1);
        return layoutInflater.inflate(R.layout.dialog_for_sniff_mutil_video_download, (ViewGroup) null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        GlobalDownloadManger.B().i("sniff_dialog");
        TaskExecutor.c(new Runnable() {
            @Override
            public void run() {
                List<SniffVideoInfoBean> multiVideoList;
                SniffVideoInfoArrayBean sniffVideoInfoArrayBean = SniffMultiVideoDialog.this.n;
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
        });
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override
    public void onStart() {
        super.onStart();
        R();
    }

    @Override
    public void onViewCreated(final View view, Bundle bundle) {
        SniffVideoInfoBean sniffVideoInfo;
        super.onViewCreated(view, bundle);
        SniffMultiVideoAdapter sniffMultiVideoAdapter = new SniffMultiVideoAdapter(view.getContext());
        this.p = sniffMultiVideoAdapter;
        sniffMultiVideoAdapter.r(this.x);
        if (this.x == 2) {
            this.p.addHeaderView(getLayoutInflater().inflate(R.layout.rv_header_sniff_video_resolution_download, (ViewGroup) null));
        } else {
            this.p.addHeaderView(getLayoutInflater().inflate(R.layout.rv_header_sniff_multi_video_download, (ViewGroup) null));
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        GestureUtil.scrollGesture((ImageView) view.findViewById(R.id.close), new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i) {
                this.a.N(i);
            }
        });
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.rv_sniff_multi_video);
        this.o = recyclerView;
        recyclerView.setLayoutManager(linearLayoutManager);
        this.o.setAdapter(this.p);
        SniffVideoInfoArrayBean pageData = SniffDataManager.getPageData(this.r);
        this.n = pageData;
        this.p.setNewData(pageData.getMultiVideoList());
        this.q.a(getActivity(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.O((SniffVideoInfoArrayBean) obj);
            }
        });
        this.p.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.a.P(view, baseQuickAdapter, view2, i);
            }
        });
        LinearLayout headerLayout = this.p.getHeaderLayout();
        if (headerLayout != null && this.x == 2 && (sniffVideoInfo = this.n.getSniffVideoInfo(0)) != null && getContext() != null) {
            TextView textView = (TextView) headerLayout.findViewById(R.id.tv_title);
            if (textView != null) {
                textView.setText(sniffVideoInfo.getTitle());
            }
            ImageView imageView = (ImageView) headerLayout.findViewById(R.id.iv_download_cover);
            if (imageView != null) {
                Glide.with(getContext()).asBitmap().load2(sniffVideoInfo.getVideoCover()).placeholder(ResourcesCompat.getDrawable(getContext().getResources(), com.transsion.magicvideo.R.drawable.main_fragment_placeholder, getContext().getTheme())).addListener(new a()).into(imageView);
            }
        }
        view.findViewById(R.id.ll_bottom_go).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.Q(view2);
            }
        });
        K();
        final BadgeView badgeView = (BadgeView) view.findViewById(R.id.bv_count);
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
}
