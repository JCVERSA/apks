package com.transsion.sniffer_load.webview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.webkit.DownloadListener;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.just.agentweb.AgentWeb;
import com.just.agentweb.AgentWebConfig;
import com.just.agentweb.IAgentWebSettings;
import com.just.agentweb.WebListenerManager;
import com.transsion.dbdata.beans.sniff.SniffResultBean;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoArrayBean;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoBean;
import com.transsion.dbdata.beans.sniff.VideoFileInfoBean;
import com.transsion.moduleservice.IBtDownloadService;
import com.transsion.playercommon.vishaweb.IWebLoadStatusCallback;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.data.M3u8Extra;
import com.transsion.sniffer_load.data.SniffDataManager;
import com.transsion.sniffer_load.dialog.SniffMultiVideoResolutionDialog;
import com.transsion.sniffer_load.sniffservice.ISniffCallBack;
import com.transsion.sniffer_load.sniffservice.SniffDownloadHelper;
import com.transsion.sniffer_load.sniffservice.SniffDownloadUtil;
import com.transsion.sniffer_load.sniffservice.SniffGoMovieUtil;
import com.transsion.sniffer_load.sniffservice.SniffHeaderInjector;
import com.transsion.sniffer_load.sniffservice.SniffScriptConfigMgr;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import com.transsion.sniffer_load.sniffservice.SniffTorrentUtil;
import com.transsion.sniffer_load.sniffservice.SniffVideoMetaDataParser;
import com.transsion.sniffer_load.sniffservice.SniffYoutubeUtil;
import com.transsion.sniffer_load.viewmodel.DownloadViewModel;
import com.transsion.videodownloader.model.Video;
import defpackage.dr9;
import defpackage.e6b;
import defpackage.fr9;
import defpackage.iia;
import defpackage.lfc;
import defpackage.p06;
import defpackage.py2;
import defpackage.r0a;
import defpackage.sv5;
import defpackage.ut4;
import defpackage.z9;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SniffWebViewContainer extends z9 implements ISniffCallBack, DownloadListener {
    public final String o;
    public final int p;
    public boolean q;

    public class AnonymousClass6 extends ThreadUtils.Task<Object> {
        final SniffVideoInfoBean val$sniffVideoInfoBean;
        final String val$title;
        final String val$userAgent;
        final String val$videoUrl;
        final String val$webViewUrl;

        public AnonymousClass6(String str, String str2, String str3, String str4, SniffVideoInfoBean sniffVideoInfoBean) {
            this.val$title = str;
            this.val$webViewUrl = str2;
            this.val$videoUrl = str3;
            this.val$userAgent = str4;
            this.val$sniffVideoInfoBean = sniffVideoInfoBean;
        }

        public void lambda$doInBackground$0(String str, String str2, String str3, SniffVideoInfoBean sniffVideoInfoBean, SniffVideoInfoBean sniffVideoInfoBean2) {
            String str4 = z9.n;
            LogUtils.N(str4, "onSniffCatch: page:" + str, "video url:" + str2, "videoName:" + sniffVideoInfoBean2.getVideoFileName());
            if (SniffDataManager.isVideoUrlExist(str, str2)) {
                return;
            }
            String str5 = str + str2;
            if (SniffDataManager.mExist.contains(str5)) {
                SniffWebViewContainer.this.p(str);
                return;
            }
            LogUtils.N(str4, "selectFile: detect and shake: fileName: " + sniffVideoInfoBean2.getVideoFileName(), "url: " + str2);
            if (str3 != null && !str3.equals(fr9.d)) {
                sniffVideoInfoBean2.setUaAgent(str3);
            }
            sniffVideoInfoBean2.setSource(dr9.g());
            if (sniffVideoInfoBean2.getVideoFileName().endsWith(Video.SUFFIX.SUFFIX_M3U8)) {
                SniffWebViewContainer.this.T(sniffVideoInfoBean2, str5, str2, str);
            } else {
                SniffWebViewContainer.this.U(sniffVideoInfoBean2, str5, str, str2, sniffVideoInfoBean);
            }
        }

        @Override
        public Object doInBackground() throws Throwable {
            String str = this.val$title;
            final String str2 = this.val$webViewUrl;
            final String str3 = this.val$videoUrl;
            final String str4 = this.val$userAgent;
            final SniffVideoInfoBean sniffVideoInfoBean = this.val$sniffVideoInfoBean;
            SniffDownloadHelper.parseVideoName(str, str2, str3, new SniffDownloadHelper.VideoCheckResultListener() {
                @Override
                public final void onCheckResult(SniffVideoInfoBean sniffVideoInfoBean2) {
                    this.a.lambda$doInBackground$0(str2, str3, str4, sniffVideoInfoBean, sniffVideoInfoBean2);
                }
            });
            return null;
        }

        @Override
        public void onCancel() {
        }

        @Override
        public void onFail(Throwable th) {
        }

        @Override
        public void onSuccess(Object obj) {
        }
    }

    public class a implements fr9.a {
        public a() {
        }

        @Override
        public void a(WebView webView, String str, SniffVideoInfoBean sniffVideoInfoBean) {
            SniffWebViewContainer.this.S(webView, str, sniffVideoInfoBean);
        }

        @Override
        public boolean b(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            return true;
        }
    }

    public class b extends lfc {
        public b() {
        }

        @Override
        public void bindAgentWebSupport(AgentWeb agentWeb) {
            this.mAgentWeb = agentWeb;
        }

        @Override
        public WebListenerManager setDownloader(WebView webView, DownloadListener downloadListener) {
            return super.setDownloader(webView, SniffWebViewContainer.this);
        }
    }

    public class c implements IWebLoadStatusCallback {
        public final SniffVideoInfoBean b;
        public final SniffVideoInfoArrayBean c;

        public c(SniffVideoInfoBean sniffVideoInfoBean, SniffVideoInfoArrayBean sniffVideoInfoArrayBean) {
            this.b = sniffVideoInfoBean;
            this.c = sniffVideoInfoArrayBean;
        }

        @Override
        public boolean j(com.transsion.sniffer_load.okdownload.a aVar, int i) {
            aVar.k = SniffWebViewContainer.this.k().getUrl();
            if (r0a.g(this.b.getCookie())) {
                aVar.o = AgentWebConfig.getCookiesByUrl(this.c.getMultiVideoList().get(0).getFirstVideoUrl());
            } else {
                aVar.o = this.b.getCookie();
            }
            if (SniffTiktokUtil.isTiktokSite(SniffWebViewContainer.this.k().getUrl())) {
                SniffTiktokUtil.fillDownloadingItem(aVar);
            }
            return SniffWebViewContainer.this.f.j(aVar, 1);
        }
    }

    public class d implements IWebLoadStatusCallback {
        public d() {
        }

        @Override
        public boolean j(com.transsion.sniffer_load.okdownload.a aVar, int i) {
            aVar.j = true;
            aVar.k = SniffWebViewContainer.this.k().getUrl();
            return SniffWebViewContainer.this.f.j(aVar, 1);
        }
    }

    public SniffWebViewContainer(DownloadViewModel downloadViewModel) {
        super(downloadViewModel);
        this.o = Video.SUFFIX.SUFFIX_M3U8;
        this.p = 1;
    }

    public static SniffWebViewContainer M(Activity activity, IWebLoadStatusCallback iWebLoadStatusCallback, String str, DownloadViewModel downloadViewModel, String str2, boolean z) {
        SniffWebViewContainer sniffWebViewContainer = new SniffWebViewContainer(downloadViewModel);
        Bundle bundle = new Bundle();
        sniffWebViewContainer.b = bundle;
        bundle.putString("url_key", str);
        sniffWebViewContainer.x(iWebLoadStatusCallback);
        sniffWebViewContainer.e(activity, str2);
        sniffWebViewContainer.q = z;
        return sniffWebViewContainer;
    }

    @Override
    public void A(WebView webView, String str) {
        super.A(webView, str);
        boolean zE = py2.e(str);
        LogUtils.j(z9.n, "isSupportSniff: " + zE, "url: " + str);
        if (zE) {
            this.e.sniffVideo(webView.getUrl());
            if (this.g != null) {
                p(str);
            }
        }
    }

    @Override
    public void B(WebView webView, String str, Bitmap bitmap) {
        super.B(webView, str, bitmap);
        if (SniffYoutubeUtil.isSniffWebSite(str)) {
            SniffDataManager.clearSniffData(str);
        }
        if (py2.e(str)) {
            this.e.requestSniffScript(str);
        }
    }

    @Override
    public boolean C(WebView webView, final WebResourceRequest webResourceRequest) {
        LogUtils.j(z9.n, "shouldOverrideUrlLoading url=" + webResourceRequest.getUrl(), "host=" + webResourceRequest.getUrl().getHost());
        if (SniffYoutubeUtil.isSniffWebSite(webView.getUrl()) && SniffYoutubeUtil.isShouldSniffUrl(webResourceRequest.getUrl().toString())) {
            webView.post(new Runnable() {
                @Override
                public void run() {
                    SniffWebViewContainer sniffWebViewContainer = SniffWebViewContainer.this;
                    sniffWebViewContainer.S(sniffWebViewContainer.k(), webResourceRequest.getUrl().toString(), null);
                }
            });
            return true;
        }
        IBtDownloadService service = IBtDownloadService.ServiceInstance.getService();
        if (!SniffTorrentUtil.isTorrentSource(webResourceRequest.getUrl())) {
            return super.C(webView, webResourceRequest);
        }
        if (service != null) {
            service.sniffTorrent(webView.getContext(), webView, webResourceRequest.getUrl(), webView.getUrl());
        }
        return true;
    }

    public final void L(final String str, final SniffVideoInfoBean sniffVideoInfoBean, final String str2, final String str3, final String str4) {
        iia.a(new Runnable() {
            @Override
            public final void run() {
                this.b.O(str2, str3, str, str4, sniffVideoInfoBean);
            }
        });
    }

    public final void N(String str, String str2, String str3, SniffVideoInfoBean sniffVideoInfoBean, SniffVideoInfoBean sniffVideoInfoBean2) throws Throwable {
        if (SniffDataManager.isVideoUrlExist(str, str2)) {
            return;
        }
        String str4 = str + str2;
        if (SniffDataManager.mExist.contains(str4)) {
            p(str);
            return;
        }
        if (str3 != null && !str3.equals(fr9.d)) {
            sniffVideoInfoBean2.setUaAgent(str3);
        }
        sniffVideoInfoBean2.setSource(dr9.g());
        if (!sniffVideoInfoBean2.getVideoFileName().endsWith(Video.SUFFIX.SUFFIX_M3U8)) {
            U(sniffVideoInfoBean2, str4, str, str2, sniffVideoInfoBean);
            return;
        }
        M3u8Extra m3u8Extra = SniffDataManager.getM3u8Extra(str2);
        if (m3u8Extra != null && !m3u8Extra.isAudioOnly()) {
            sniffVideoInfoBean2.getVideoList().get(0).setSize(m3u8Extra.getSize());
            sniffVideoInfoBean2.getVideoList().get(0).setResolution(m3u8Extra.getResolution());
            sniffVideoInfoBean2.setVideoCover(m3u8Extra.getImg());
            SniffDataManager.mExist.add(str4);
            SniffDataManager.addData(str, sniffVideoInfoBean2);
        } else if (m3u8Extra != null && m3u8Extra.isAudioOnly()) {
            LogUtils.j(z9.n, "Removing audio track url: " + str2);
            SniffDataManager.mExist.remove(str4);
            SniffDataManager.removeData(str, sniffVideoInfoBean2);
        }
        p(str);
    }

    public final void O(String str, final String str2, final String str3, final String str4, final SniffVideoInfoBean sniffVideoInfoBean) {
        SniffDownloadHelper.parseVideoName(str, str2, str3, new SniffDownloadHelper.VideoCheckResultListener() {
            @Override
            public final void onCheckResult(SniffVideoInfoBean sniffVideoInfoBean2) throws Throwable {
                this.a.N(str2, str3, str4, sniffVideoInfoBean, sniffVideoInfoBean2);
            }
        });
    }

    public final void P(SniffVideoInfoArrayBean sniffVideoInfoArrayBean) {
        IWebLoadStatusCallback iWebLoadStatusCallback = this.f;
        if (iWebLoadStatusCallback != null) {
            iWebLoadStatusCallback.x();
        }
        LogUtils.j(z9.n, "script_sniff_result:", sniffVideoInfoArrayBean.toString());
        if (!SniffVideoInfoArrayBean.isNotEmpty(sniffVideoInfoArrayBean)) {
            p06.S("dl_brower_script_sniff_sfailed", "0", k().getUrl(), null);
            return;
        }
        Iterator<SniffVideoInfoBean> it = sniffVideoInfoArrayBean.getMultiVideoList().iterator();
        while (it.hasNext()) {
            SniffDataManager.addData(f(), it.next());
        }
        SniffVideoInfoBean sniffVideoInfoBean = sniffVideoInfoArrayBean.getMultiVideoList().get(0);
        if (sniffVideoInfoBean == null || sniffVideoInfoBean.getVideoList().size() <= 0 || !sniffVideoInfoBean.isCanDownload() || !SniffVideoInfoBean.isNotEmpty(sniffVideoInfoBean)) {
            return;
        }
        SniffMultiVideoResolutionDialog.c((Context) this.g.get(), sniffVideoInfoArrayBean.getMultiVideoList().get(0), new c(sniffVideoInfoBean, sniffVideoInfoArrayBean), this.h, this.i);
    }

    public final void Q(com.transsion.sniffer_load.okdownload.a aVar, boolean z) {
        if (z) {
            GlobalDownloadManger.B().p((Context) this.g.get(), aVar);
        }
    }

    public final void R(SniffResultBean sniffResultBean) {
        IWebLoadStatusCallback iWebLoadStatusCallback = this.f;
        if (iWebLoadStatusCallback != null) {
            iWebLoadStatusCallback.x();
        }
        if (sniffResultBean == null) {
            p06.S("dl_brower_script_sniff_sfailed", "0", k().getUrl(), null);
            return;
        }
        LogUtils.j(z9.n, "sever_sniff_result:", sniffResultBean.toString());
        sniffResultBean.checkName();
        SniffVideoInfoBean sniffVideoInfoBeanFromSniffResultBean = SniffVideoInfoBean.fromSniffResultBean(sniffResultBean);
        if (SniffVideoInfoBean.isNotEmpty(sniffVideoInfoBeanFromSniffResultBean) || sniffResultBean.isAsyncServerTask()) {
            SniffMultiVideoResolutionDialog.c((Context) this.g.get(), sniffVideoInfoBeanFromSniffResultBean, new d(), this.h, this.i);
        }
    }

    public final void S(WebView webView, String str, SniffVideoInfoBean sniffVideoInfoBean) {
        if (!py2.e(str) || SniffScriptConfigMgr.getInstance().isClientForbidSniff(str)) {
            return;
        }
        String title = webView.getTitle();
        String url = webView.getUrl();
        String userAgentString = webView.getSettings().getUserAgentString();
        if (this.q) {
            if (SniffGoMovieUtil.isGoMoviesWebSite(url)) {
                W(str, sniffVideoInfoBean, title, url, userAgentString);
            } else {
                L(str, sniffVideoInfoBean, title, url, userAgentString);
            }
        }
    }

    public final void T(SniffVideoInfoBean sniffVideoInfoBean, String str, String str2, String str3) {
        List<sv5> m3U8Stream = SniffDataManager.parseM3U8Stream(str3, str2);
        if (m3U8Stream != null) {
            for (int i = 0; i < m3U8Stream.size(); i++) {
                sv5 sv5Var = m3U8Stream.get(i);
                LogUtils.j(z9.n, "sniff stream:" + sv5Var.d(), "cover url:" + sv5Var.c(), "resolution:" + sv5Var.i(), "filename:" + sniffVideoInfoBean.getVideoFileName(), "title:" + sniffVideoInfoBean.getTitle(), "size:" + sv5Var.h().d());
                SniffVideoInfoBean sniffVideoInfoBean2 = new SniffVideoInfoBean();
                sniffVideoInfoBean2.setSource(dr9.g());
                sniffVideoInfoBean2.setTitle(sniffVideoInfoBean.getTitle());
                sniffVideoInfoBean2.setVideoFileName(sniffVideoInfoBean.getVideoFileName());
                sniffVideoInfoBean2.setHasResources(true);
                sniffVideoInfoBean2.setVideoCover(sv5Var.c());
                VideoFileInfoBean videoFileInfoBean = new VideoFileInfoBean();
                ArrayList arrayList = new ArrayList();
                arrayList.add(videoFileInfoBean);
                videoFileInfoBean.setUrl(sv5Var.d());
                sniffVideoInfoBean2.setVideoList(arrayList);
                sniffVideoInfoBean2.getVideoList().get(0).setSize(sv5Var.h().d());
                sniffVideoInfoBean2.getVideoList().get(0).setResolution(sv5Var.i());
                SniffDataManager.mExist.add(str);
                SniffDataManager.addData(str3, sniffVideoInfoBean2);
                p(str3);
            }
        }
    }

    public final void U(SniffVideoInfoBean sniffVideoInfoBean, String str, String str2, String str3, SniffVideoInfoBean sniffVideoInfoBean2) {
        SniffDataManager.mExist.add(str);
        SniffDataManager.addData(str2, sniffVideoInfoBean);
        sniffVideoInfoBean.setVideoCover(str3);
        if (sniffVideoInfoBean2 != null && !r0a.g(sniffVideoInfoBean2.getVideoCover())) {
            sniffVideoInfoBean.setVideoCover(sniffVideoInfoBean2.getVideoCover());
        }
        if (sniffVideoInfoBean2 != null && !r0a.g(sniffVideoInfoBean2.getVideoFileName())) {
            sniffVideoInfoBean.setVideoFileName(sniffVideoInfoBean2.getVideoFileName());
        }
        if (sniffVideoInfoBean2 != null && !r0a.g(sniffVideoInfoBean2.getTitle())) {
            sniffVideoInfoBean.setTitle(sniffVideoInfoBean2.getTitle());
        }
        if (sniffVideoInfoBean.getVideoList().get(0).getSize() <= 0 && !SniffYoutubeUtil.isShouldSniffUrl(str3)) {
            SniffVideoMetaDataParser sniffVideoMetaDataParser = new SniffVideoMetaDataParser();
            if (sniffVideoMetaDataParser.parseSync(str3)) {
                if (sniffVideoMetaDataParser.hasVideoTrack()) {
                    sniffVideoInfoBean.getVideoList().get(0).setResolution(sniffVideoMetaDataParser.getVideoResolution());
                }
                sniffVideoInfoBean.getVideoList().get(0).setSize(SniffDownloadHelper.getContentLength(str3, sniffVideoInfoBean.getUaAgent()));
                SniffDataManager.mExist.add(str);
                SniffDataManager.addData(str2, sniffVideoInfoBean);
                p(str2);
            }
        }
        if (SniffYoutubeUtil.isShouldSniffUrl(str3)) {
            SniffDataManager.mExist.add(str);
            SniffDataManager.addData(str2, sniffVideoInfoBean);
            p(str2);
        }
    }

    public final void V(final SniffResultBean sniffResultBean) {
        WeakReference weakReference = this.g;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ((Activity) this.g.get()).runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.R(sniffResultBean);
            }
        });
    }

    public final void W(String str, SniffVideoInfoBean sniffVideoInfoBean, String str2, String str3, String str4) {
        ThreadUtils.j(new AnonymousClass6(str2, str3, str, str4, sniffVideoInfoBean));
    }

    @Override
    public void e(Activity activity, String str) {
        super.e(activity, str);
        this.l.e(new a());
        this.e.init(k(), this);
    }

    @Override
    public IAgentWebSettings i() {
        return new b();
    }

    @Override
    public void onClientScriptSniffFailed(String str) {
        p06.S("dl_brower_script_sniff_cfailed", str, k().getUrl(), null);
    }

    @Override
    public void onClientScriptSniffResult(final SniffVideoInfoArrayBean sniffVideoInfoArrayBean) {
        WeakReference weakReference = this.g;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ((Activity) this.g.get()).runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.P(sniffVideoInfoArrayBean);
            }
        });
    }

    @Override
    public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        LogUtils.j(z9.n, "onDownloadStart", "url=" + str, "userAgent=" + str2, "contentDisposition=" + str3, "mimetype=" + str4, "contentLength=" + j);
        String fileTypeFromMineType = SniffDownloadUtil.getFileTypeFromMineType(str4);
        String strG = ut4.g(str3, str);
        SniffVideoInfoBean sniffVideoInfoBean = new SniffVideoInfoBean();
        sniffVideoInfoBean.setTitle(strG);
        sniffVideoInfoBean.setVideoFileName(strG);
        sniffVideoInfoBean.setHasResources(true);
        sniffVideoInfoBean.setVideoCover(str);
        sniffVideoInfoBean.setUaAgent(str2);
        sniffVideoInfoBean.setCookie(AgentWebConfig.getCookiesByUrl(str));
        VideoFileInfoBean videoFileInfoBean = new VideoFileInfoBean();
        ArrayList arrayList = new ArrayList();
        arrayList.add(videoFileInfoBean);
        videoFileInfoBean.setUrl(str);
        videoFileInfoBean.setType(fileTypeFromMineType);
        videoFileInfoBean.setSize(j);
        sniffVideoInfoBean.setVideoList(arrayList);
        SniffDataManager.mExist.add(k().getUrl() + str);
        SniffDataManager.addData(k().getUrl(), sniffVideoInfoBean);
        p(k().getUrl());
    }

    @Override
    public void onJsSniffResults(SniffVideoInfoArrayBean sniffVideoInfoArrayBean) {
        if (sniffVideoInfoArrayBean == null || sniffVideoInfoArrayBean.getMultiVideoList() == null) {
            return;
        }
        for (int i = 0; i < sniffVideoInfoArrayBean.getMultiVideoList().size(); i++) {
            SniffVideoInfoBean sniffVideoInfoBean = sniffVideoInfoArrayBean.getMultiVideoList().get(i);
            if (sniffVideoInfoBean != null && sniffVideoInfoBean.getVideoList() != null) {
                for (int i2 = 0; i2 < sniffVideoInfoBean.getVideoList().size(); i2++) {
                    if (sniffVideoInfoBean.getVideoList().get(i2) != null) {
                        String url = sniffVideoInfoBean.getVideoList().get(i2).getUrl();
                        LogUtils.j(z9.n, "video cover:" + sniffVideoInfoBean.getVideoCover(), "title:" + sniffVideoInfoBean.getTitle(), "url:" + url);
                        S(k(), url, sniffVideoInfoBean);
                    }
                }
            }
        }
    }

    @Override
    public void onServerSniffFailed(String str, String str2, String str3) {
        p06.S("dl_brower_script_sniff_sfailed", str3, k().getUrl(), str);
    }

    @Override
    public void onServerSniffResult(String str, SniffResultBean sniffResultBean) {
        if (r0a.g(str)) {
            LogUtils.m(z9.n, "sniff failed:no url");
        } else {
            V(sniffResultBean);
        }
    }

    @Override
    public void onServerSniffResultAsync(String str, SniffResultBean sniffResultBean) {
        IWebLoadStatusCallback iWebLoadStatusCallback = this.f;
        if (iWebLoadStatusCallback != null) {
            iWebLoadStatusCallback.x();
        }
        final com.transsion.sniffer_load.okdownload.a aVar = new com.transsion.sniffer_load.okdownload.a();
        aVar.h = str;
        aVar.n = sniffResultBean.getUserAgent();
        aVar.o = sniffResultBean.getCookie();
        aVar.j = false;
        aVar.i = sniffResultBean.getSniffRequestBody();
        if (r0a.g(sniffResultBean.getResourceTitle())) {
            aVar.d = System.currentTimeMillis() + Consts.DOT + "mp4";
        } else {
            aVar.d = sniffResultBean.getResourceTitle() + Consts.DOT + "mp4";
        }
        if (!r0a.g(sniffResultBean.getResourceCover())) {
            aVar.j(sniffResultBean.getResourceCover());
        }
        LogUtils.j(z9.n, "sever_sniff_result:" + sniffResultBean, "downing_item:" + aVar);
        aVar.k = k().getUrl();
        SniffHeaderInjector.inject(aVar, k().getUrl(), null);
        new e6b((Context) this.g.get(), new e6b.c() {
            @Override
            public final void a(boolean z) {
                this.a.Q(aVar, z);
            }
        }).b(false);
    }

    @Override
    public void onStartClientSniff(String str) {
    }
}
