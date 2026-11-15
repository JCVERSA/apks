package com.transsion.sniffer_load.sniffservice;

import android.annotation.SuppressLint;
import android.webkit.WebView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.google.gson.reflect.TypeToken;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.sniff.SniffGetResultReqBean;
import com.transsion.dbdata.beans.sniff.SniffMarkPointBean;
import com.transsion.dbdata.beans.sniff.SniffResultBean;
import com.transsion.dbdata.beans.sniff.SniffScriptBean;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoArrayBean;
import com.transsion.playercommon.vishaapis.APIService;
import com.transsion.playercommon.vishaapis.APIServiceManager;
import com.transsion.playercommon.vishaapis.FileService;
import com.transsion.playercommon.vishaapis.FileServiceManager;
import com.transsion.retrofit.callback.RequestCallback;
import com.transsion.retrofit.callback.RetryCallback;
import com.transsion.retrofit.callback.RetryCallbackWithDirectData;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.sniffer_load.sniffservice.VideoSnifferCore;
import defpackage.ek4;
import defpackage.fc7;
import defpackage.fr9;
import defpackage.gu8;
import defpackage.ir8;
import defpackage.jq0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.r0a;
import defpackage.uj1;
import defpackage.zf1;
import java.lang.ref.WeakReference;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONException;
import org.json.JSONObject;

public class VideoSnifferCore {
    private static final String TAG = "visha_" + VideoSnifferCore.class.getSimpleName();
    public static boolean bDebug;
    public static volatile VideoSnifferCore singleton;
    private WeakReference<ISniffCallBack> callBackWeakReference;
    private long mScriptStartDownloadTime;
    private WebView mSniffWebView;
    private String mStrCurrSniffUrl;
    private boolean mbGettingScript = false;
    private boolean mbWaitingInject = false;

    public class AnonymousClass4 extends RetryCallback<ResponseBody> {
        final StringBuilder val$download_url;
        final SniffScriptBean val$entity;
        final String val$url;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(jq0 jq0Var, int i, long j, StringBuilder sb, SniffScriptBean sniffScriptBean, String str) {
            super(jq0Var, i, j);
            this.val$download_url = sb;
            this.val$entity = sniffScriptBean;
            this.val$url = str;
        }

        public void lambda$onRequestResponse$0(gu8 gu8Var, SniffScriptBean sniffScriptBean, String str) throws Throwable {
            String jsContentFromHttpResponse = JavaScriptHelper.getJsContentFromHttpResponse((ResponseBody) gu8Var.a());
            if (r0a.g(jsContentFromHttpResponse)) {
                return;
            }
            sniffScriptBean.script_content = jsContentFromHttpResponse;
            sniffScriptBean.script_updatetime = System.currentTimeMillis();
            SniffScriptConfigMgr.getInstance().updateSniffScriptDB(sniffScriptBean, false);
            JavaScriptHelper.injectWebview(VideoSnifferCore.this.mSniffWebView, jsContentFromHttpResponse, null);
            try {
                SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
                SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_2002;
                SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(str).setJsType(sniffScriptBean.sniff_domain).setDomainName(new URL(str).getHost()).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
                SniffMarkPointBean.Builder builder2 = new SniffMarkPointBean.Builder();
                SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint2 = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_2004;
                SniffMarkPointer.markPointSniffAsync(builder2.setCode(enum_sniff_markpoint2.code).setMsg(enum_sniff_markpoint2.msg).setMainUrl(str).setJsType(sniffScriptBean.sniff_domain).setDomainName(new URL(str).getHost()).setScriptUrl(sniffScriptBean.script_url).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).setDuration((int) (System.currentTimeMillis() - VideoSnifferCore.this.mScriptStartDownloadTime)).Build());
                SniffMarkPointer.markPointSniffInjectSuccessDelay(new SniffMarkPointBean.Builder().setErrorCode(0).setEventName("dl_brower_rp_adl_js").setMainUrl(str).setVideoUrl("").setStatus(0).setJsType(sniffScriptBean.sniff_domain).setDomainName(new URL(str).getHost()).Build());
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
        }

        @Override
        public void onRequestFail(jq0 jq0Var, Throwable th) {
            LogUtils.m(VideoSnifferCore.TAG, "get_js_content_from_online_failed_msg:" + th);
            try {
                SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
                SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_2003;
                SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(this.val$url).setJsType(this.val$entity.sniff_domain).setDomainName(new URL(this.val$url).getHost()).setScriptUrl(this.val$entity.script_url).setDuration((int) (System.currentTimeMillis() - VideoSnifferCore.this.mScriptStartDownloadTime)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).setVideoUrl(th != null ? th.getMessage() : "").Build());
                VideoSnifferCore.this.onStartClientSniff(this.val$url);
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
        }

        @Override
        public void onRequestResponse(jq0<ResponseBody> jq0Var, final gu8<ResponseBody> gu8Var) {
            LogUtils.w(VideoSnifferCore.TAG, "download_js_file:" + ((Object) this.val$download_url) + " success");
            final SniffScriptBean sniffScriptBean = this.val$entity;
            final String str = this.val$url;
            TaskExecutor.c(new Runnable() {
                @Override
                public final void run() throws Throwable {
                    this.b.lambda$onRequestResponse$0(gu8Var, sniffScriptBean, str);
                }
            });
        }

        @Override
        public void onStartRetry() {
            LogUtils.m(VideoSnifferCore.TAG, "get_js_content_from_online_failed_and_try_time:" + getCurrentRetryCount());
        }
    }

    public void downloadScript(String str, SniffScriptBean sniffScriptBean) {
        this.mScriptStartDownloadTime = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder(sniffScriptBean.script_url);
        sb.append("?timestamp=");
        sb.append(System.currentTimeMillis());
        LogUtils.j(TAG, "download_js_file:" + ((Object) sb));
        jq0<ResponseBody> jq0VarDownloadFileWithDynamicUrlAsync = ((FileService) FileServiceManager.getInstance().getApi(FileService.class)).downloadFileWithDynamicUrlAsync(sb.toString());
        jq0VarDownloadFileWithDynamicUrlAsync.enqueue(new AnonymousClass4(jq0VarDownloadFileWithDynamicUrlAsync, 3, 1000L, sb, sniffScriptBean, str));
    }

    public void injectWebView(String str, SniffScriptBean sniffScriptBean, boolean z, String str2) {
        if (this.mSniffWebView == null) {
            return;
        }
        if (!z || r0a.g(str2)) {
            JavaScriptHelper.injectWebview(this.mSniffWebView, sniffScriptBean.script_content, null);
        } else {
            JavaScriptHelper.injectAssetJsWebView(this.mSniffWebView, str2, null);
        }
        if (SniffTiktokUtil.isTiktokSite(str)) {
            SniffTiktokUtil.openSniff(this.mSniffWebView);
        }
        try {
            SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
            SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_2002;
            SniffMarkPointBean.Builder mainUrl = builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(str);
            String str3 = "";
            SniffMarkPointer.markPointSniffAsync(mainUrl.setJsType(sniffScriptBean == null ? "" : sniffScriptBean.sniff_domain).setDomainName(new URL(str).getHost()).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
            SniffMarkPointBean.Builder status = new SniffMarkPointBean.Builder().setErrorCode(0).setEventName("dl_brower_rp_adl_js").setMainUrl(str).setVideoUrl("").setStatus(0);
            if (sniffScriptBean != null) {
                str3 = sniffScriptBean.sniff_domain;
            }
            SniffMarkPointer.markPointSniffInjectSuccessDelay(status.setJsType(str3).setDomainName(new URL(str).getHost()).Build());
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
    }

    public void lambda$onSubmitSniffInfo$0(String str, VideoSnifferCore videoSnifferCore) throws Exception {
        Throwable th;
        String str2;
        JSONException jSONException;
        String strOptString = "";
        if (r0a.g(str)) {
            return;
        }
        LogUtils.j(TAG, "SubmitSniffInfo json: " + str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString2 = jSONObject.getJSONObject(SniffSoucreBean.JSON_KEY_POST_VALUE).optString(SniffSoucreBean.JSON_KEY_SNIFF_URL);
            try {
                JSONObject jSONObject2 = jSONObject.getJSONObject(SniffSoucreBean.JSON_KEY_PARAM_VALUE);
                strOptString = jSONObject2.optString("title");
                try {
                    strOptString = jSONObject2.optString(SniffSoucreBean.JSON_KEY_COVERURL);
                    JSONObject jSONObject3 = jSONObject.getJSONObject(SniffSoucreBean.JSON_KEY_TOKEN_INFO);
                    JSONObject jSONObject4 = jSONObject3.getJSONObject(SniffSoucreBean.JSON_KEY_COOKIES);
                    String string = jSONObject3.getJSONArray(SniffSoucreBean.JSON_KEY_GETCOOKIESKEY).toString();
                    if (!r0a.g(string)) {
                        uj1.c().d(this.mStrCurrSniffUrl);
                        ArrayList arrayList = new ArrayList((Collection) ek4.e(string, new TypeToken<List<String>>() {
                        }.getType()));
                        if (arrayList.size() > 0) {
                            for (int i = 0; i < arrayList.size(); i++) {
                                jSONObject4.put((String) arrayList.get(i), uj1.c().a((String) arrayList.get(i)));
                            }
                            str = jSONObject.toString();
                        }
                    }
                    SniffResultBean sniffResultBean = new SniffResultBean(strOptString2);
                    sniffResultBean.setResourceTitle(strOptString);
                    sniffResultBean.setResourceCover(strOptString);
                    sniffResultBean.setCookie(uj1.c().b(this.mStrCurrSniffUrl));
                    sniffResultBean.setUserAgent(fr9.d);
                    sniffResultBean.setSniffRequestBody(str);
                    sniffResultBean.setAsyncServerTask(true);
                    sniffResultBean.setSniffUrl(strOptString2);
                    onServerSniffResult(strOptString2, sniffResultBean);
                } catch (JSONException e) {
                    str2 = strOptString;
                    strOptString = strOptString2;
                    jSONException = e;
                    try {
                        jSONException.printStackTrace();
                        SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
                        SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2010;
                        SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(strOptString).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
                        SniffResultBean sniffResultBean2 = new SniffResultBean(strOptString);
                        sniffResultBean2.setResourceTitle(strOptString);
                        sniffResultBean2.setResourceCover(str2);
                        sniffResultBean2.setCookie(uj1.c().b(this.mStrCurrSniffUrl));
                        sniffResultBean2.setUserAgent(fr9.d);
                        sniffResultBean2.setSniffRequestBody(str);
                        sniffResultBean2.setAsyncServerTask(true);
                        sniffResultBean2.setSniffUrl(strOptString);
                        onServerSniffResult(strOptString, sniffResultBean2);
                    } catch (Throwable th2) {
                        th = th2;
                        SniffResultBean sniffResultBean3 = new SniffResultBean(strOptString);
                        sniffResultBean3.setResourceTitle(strOptString);
                        sniffResultBean3.setResourceCover(str2);
                        sniffResultBean3.setCookie(uj1.c().b(this.mStrCurrSniffUrl));
                        sniffResultBean3.setUserAgent(fr9.d);
                        sniffResultBean3.setSniffRequestBody(str);
                        sniffResultBean3.setAsyncServerTask(true);
                        sniffResultBean3.setSniffUrl(strOptString);
                        onServerSniffResult(strOptString, sniffResultBean3);
                        throw th;
                    }
                } catch (Throwable th3) {
                    str2 = strOptString;
                    strOptString = strOptString2;
                    th = th3;
                    SniffResultBean sniffResultBean4 = new SniffResultBean(strOptString);
                    sniffResultBean4.setResourceTitle(strOptString);
                    sniffResultBean4.setResourceCover(str2);
                    sniffResultBean4.setCookie(uj1.c().b(this.mStrCurrSniffUrl));
                    sniffResultBean4.setUserAgent(fr9.d);
                    sniffResultBean4.setSniffRequestBody(str);
                    sniffResultBean4.setAsyncServerTask(true);
                    sniffResultBean4.setSniffUrl(strOptString);
                    onServerSniffResult(strOptString, sniffResultBean4);
                    throw th;
                }
            } catch (JSONException e2) {
                e = e2;
                strOptString = strOptString2;
                jSONException = e;
                str2 = strOptString;
                jSONException.printStackTrace();
                SniffMarkPointBean.Builder builder2 = new SniffMarkPointBean.Builder();
                SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint2 = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2010;
                SniffMarkPointer.markPointSniffAsync(builder2.setCode(enum_sniff_markpoint2.code).setMsg(enum_sniff_markpoint2.msg).setMainUrl(strOptString).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
                SniffResultBean sniffResultBean5 = new SniffResultBean(strOptString);
                sniffResultBean5.setResourceTitle(strOptString);
                sniffResultBean5.setResourceCover(str2);
                sniffResultBean5.setCookie(uj1.c().b(this.mStrCurrSniffUrl));
                sniffResultBean5.setUserAgent(fr9.d);
                sniffResultBean5.setSniffRequestBody(str);
                sniffResultBean5.setAsyncServerTask(true);
                sniffResultBean5.setSniffUrl(strOptString);
                onServerSniffResult(strOptString, sniffResultBean5);
            } catch (Throwable th4) {
                th = th4;
                strOptString = strOptString2;
                th = th;
                str2 = strOptString;
                SniffResultBean sniffResultBean6 = new SniffResultBean(strOptString);
                sniffResultBean6.setResourceTitle(strOptString);
                sniffResultBean6.setResourceCover(str2);
                sniffResultBean6.setCookie(uj1.c().b(this.mStrCurrSniffUrl));
                sniffResultBean6.setUserAgent(fr9.d);
                sniffResultBean6.setSniffRequestBody(str);
                sniffResultBean6.setAsyncServerTask(true);
                sniffResultBean6.setSniffUrl(strOptString);
                onServerSniffResult(strOptString, sniffResultBean6);
                throw th;
            }
        } catch (JSONException e3) {
            e = e3;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    @SuppressLint({"CheckResult"})
    private void onSubmitSniffInfo(final String str) {
        mc7.K(this).d0(k29.c()).M(k29.c()).Z(new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                this.b.lambda$onSubmitSniffInfo$0(str, (VideoSnifferCore) obj);
            }
        });
    }

    public static void seDebug(boolean z) {
        LogUtils.j(TAG, "sniff_debug:" + z);
        bDebug = z;
        SniffScriptConfigMgr.getInstance().clearSniffScriptFromDatabase();
    }

    @SuppressLint({"CheckResult"})
    public void startSniff(final String str) {
        this.mbWaitingInject = false;
        TaskExecutor.c(new Runnable() {
            @Override
            public void run() {
                String strGeAssetJsFileName = SniffScriptConfigMgr.getInstance().geAssetJsFileName(str);
                if (!r0a.g(strGeAssetJsFileName)) {
                    LogUtils.j(VideoSnifferCore.TAG, "use local JS sniff:" + str);
                    VideoSnifferCore.this.injectWebView(str, null, true, strGeAssetJsFileName);
                    return;
                }
                SniffScriptBean supportSniffScript = SniffScriptConfigMgr.getInstance().getSupportSniffScript(str);
                if (fc7.c(VideoSnifferCore.this.mSniffWebView) && fc7.c(supportSniffScript)) {
                    if (!r0a.g(supportSniffScript.script_content)) {
                        VideoSnifferCore.this.injectWebView(str, supportSniffScript, false, null);
                        return;
                    }
                    if (ir8.b(supportSniffScript.script_url)) {
                        VideoSnifferCore.this.downloadScript(str, supportSniffScript);
                        return;
                    }
                    LogUtils.m(VideoSnifferCore.TAG, "sniff_video_using_js_failed " + str);
                    VideoSnifferCore.this.onStartClientSniff(str);
                    return;
                }
                LogUtils.j(VideoSnifferCore.TAG, "sniff_video_using_js_failed_try_use_common " + str);
                try {
                    VideoSnifferCore.this.onStartClientSniff(str);
                    SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
                    SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_2001;
                    SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(str).setDomainName(new URL(str).getHost()).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public void getSniffResultFromServer(String str, int i, int i2, RequestCallback.OnRequestDataListener onRequestDataListener) {
        if (r0a.g(str) || onRequestDataListener == null) {
            return;
        }
        if (i == 0) {
            i = 3;
        }
        int i3 = i;
        if (i2 == 0) {
            i2 = 1000;
        }
        SniffGetResultReqBean sniffGetResultReqBean = new SniffGetResultReqBean();
        sniffGetResultReqBean.setSniffUrl(str);
        jq0<BaseResponse<List<SniffResultBean>>> sniffResultFromServer = ((APIService) APIServiceManager.getInstance().getApi(APIService.class)).getSniffResultFromServer(sniffGetResultReqBean);
        sniffResultFromServer.enqueue(new RetryCallbackWithDirectData(sniffResultFromServer, i3, i2, onRequestDataListener));
    }

    public void init(WebView webView, ISniffCallBack iSniffCallBack) {
        this.mSniffWebView = webView;
        this.callBackWeakReference = new WeakReference<>(iSniffCallBack);
    }

    public void onClientScriptSniffFailed(final String str) {
        if (!ThreadUtils.r()) {
            ThreadUtils.s(new Runnable() {
                @Override
                public void run() {
                    if (VideoSnifferCore.this.callBackWeakReference.get() != null) {
                        ((ISniffCallBack) VideoSnifferCore.this.callBackWeakReference.get()).onClientScriptSniffFailed(str);
                    }
                }
            });
        } else if (this.callBackWeakReference.get() != null) {
            this.callBackWeakReference.get().onClientScriptSniffFailed(str);
        }
    }

    public void onClientScriptSniffResult(final SniffVideoInfoArrayBean sniffVideoInfoArrayBean) {
        if (!ThreadUtils.r()) {
            ThreadUtils.s(new Runnable() {
                @Override
                public void run() {
                    if (VideoSnifferCore.this.callBackWeakReference.get() != null) {
                        ((ISniffCallBack) VideoSnifferCore.this.callBackWeakReference.get()).onClientScriptSniffResult(sniffVideoInfoArrayBean);
                    }
                }
            });
        } else if (this.callBackWeakReference.get() != null) {
            this.callBackWeakReference.get().onClientScriptSniffResult(sniffVideoInfoArrayBean);
        }
    }

    public void onJsSniffResult(final SniffVideoInfoArrayBean sniffVideoInfoArrayBean) {
        ThreadUtils.s(new Runnable() {
            @Override
            public void run() {
                if (VideoSnifferCore.this.callBackWeakReference.get() != null) {
                    ((ISniffCallBack) VideoSnifferCore.this.callBackWeakReference.get()).onJsSniffResults(sniffVideoInfoArrayBean);
                }
            }
        });
    }

    public void onServerSniffFailed(final String str, final String str2, final String str3) {
        if (!ThreadUtils.r()) {
            ThreadUtils.s(new Runnable() {
                @Override
                public void run() {
                    if (VideoSnifferCore.this.callBackWeakReference.get() != null) {
                        ((ISniffCallBack) VideoSnifferCore.this.callBackWeakReference.get()).onServerSniffFailed(str, str2, str3);
                    }
                }
            });
        } else if (this.callBackWeakReference.get() != null) {
            this.callBackWeakReference.get().onServerSniffFailed(str, str2, str3);
        }
    }

    public void onServerSniffResult(final String str, final SniffResultBean sniffResultBean) {
        if (!ThreadUtils.r()) {
            ThreadUtils.s(new Runnable() {
                @Override
                public void run() {
                    if (VideoSnifferCore.this.callBackWeakReference.get() != null) {
                        ((ISniffCallBack) VideoSnifferCore.this.callBackWeakReference.get()).onServerSniffResult(str, sniffResultBean);
                    }
                }
            });
        } else if (this.callBackWeakReference.get() != null) {
            this.callBackWeakReference.get().onServerSniffResult(str, sniffResultBean);
        }
    }

    public void onServerSniffResultAsync(final String str, final SniffResultBean sniffResultBean) {
        if (!ThreadUtils.r()) {
            ThreadUtils.s(new Runnable() {
                @Override
                public void run() {
                    if (VideoSnifferCore.this.callBackWeakReference.get() != null) {
                        ((ISniffCallBack) VideoSnifferCore.this.callBackWeakReference.get()).onServerSniffResultAsync(str, sniffResultBean);
                    }
                }
            });
        } else if (this.callBackWeakReference.get() != null) {
            this.callBackWeakReference.get().onServerSniffResultAsync(str, sniffResultBean);
        }
    }

    @Deprecated
    public void onStartClientSniff(final String str) {
        ThreadUtils.s(new Runnable() {
            @Override
            public void run() {
                if (VideoSnifferCore.this.callBackWeakReference.get() != null) {
                    ((ISniffCallBack) VideoSnifferCore.this.callBackWeakReference.get()).onStartClientSniff(str);
                }
            }
        });
    }

    public void requestSniffScript(final String str) {
        if (SniffScriptConfigMgr.getInstance().isForbidSeverSniff(str)) {
            LogUtils.j(TAG, "forbid server sniff:" + str);
            return;
        }
        if (SniffScriptConfigMgr.getInstance().getSupportSniffScript(str) != null) {
            LogUtils.j(TAG, "local_script_exist:" + str);
            if (SniffTiktokUtil.isTiktokSite(str)) {
                sniffVideo(str);
                return;
            }
            return;
        }
        LogUtils.j(TAG, "start_request_script_from_server:" + str);
        this.mbGettingScript = true;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        SniffScriptConfigMgr.getInstance().requestConfigFromServer(str, new RequestCallback.OnRequestDataListener<SniffScriptBean>() {
            @Override
            public void returnDataFailed(String str2, String str3) {
                LogUtils.m(VideoSnifferCore.TAG, "get_sniff_config_from_server_failed_msg:" + str3 + " code=" + str2);
                VideoSnifferCore.this.mbGettingScript = false;
                VideoSnifferCore.this.mbWaitingInject = false;
                VideoSnifferCore.this.onStartClientSniff(str);
            }

            @Override
            public void returnDataSuccess(SniffScriptBean sniffScriptBean) {
                if (sniffScriptBean == null || r0a.g(sniffScriptBean.script_key)) {
                    LogUtils.j(VideoSnifferCore.TAG, "get_sniff_config_from_server_but_not_support_url:" + str);
                    SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
                    SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2007;
                    SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(str).setDuration((int) (System.currentTimeMillis() - jCurrentTimeMillis)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
                } else {
                    LogUtils.j(VideoSnifferCore.TAG, "get_sniff_config_from_server", "url=" + str, "data=" + sniffScriptBean);
                    SniffScriptConfigMgr.getInstance().updateSniffScriptDB(sniffScriptBean, true);
                    if (SniffTiktokUtil.isTiktokSite(str)) {
                        VideoSnifferCore.this.sniffVideo(str);
                    }
                    SniffMarkPointBean.Builder builder2 = new SniffMarkPointBean.Builder();
                    SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint2 = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_SEVER_2006;
                    SniffMarkPointer.markPointSniffAsync(builder2.setCode(enum_sniff_markpoint2.code).setMsg(enum_sniff_markpoint2.msg).setMainUrl(str).setDuration((int) (System.currentTimeMillis() - jCurrentTimeMillis)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
                }
                VideoSnifferCore.this.mbGettingScript = false;
                if (VideoSnifferCore.this.mbWaitingInject && str.equalsIgnoreCase(VideoSnifferCore.this.mStrCurrSniffUrl)) {
                    VideoSnifferCore.this.startSniff(str);
                }
            }
        });
    }

    @SuppressLint({"CheckResult"})
    public void sniffVideo(String str) {
        String str2 = TAG;
        LogUtils.j(str2, "sniff_video_start:" + str);
        if (!ir8.b(str)) {
            LogUtils.m(str2, "sniff_video_must_http_url:" + str);
            SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
            SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_2000;
            SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
            return;
        }
        this.mStrCurrSniffUrl = str;
        if (!this.mbGettingScript) {
            startSniff(str);
            return;
        }
        LogUtils.j(str2, "getting_script_wait:" + str);
        this.mbWaitingInject = true;
    }

    @SuppressLint({"CheckResult"})
    public void submitSniffInfo(String str) {
        onSubmitSniffInfo(str);
    }

    public void unInit() {
        this.mSniffWebView = null;
    }
}
