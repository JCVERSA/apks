package com.transsion.sniffer_load.sniffservice;

import android.webkit.JavascriptInterface;
import com.blankj.utilcode.util.LogUtils;
import com.google.gson.reflect.TypeToken;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoArrayBean;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoBean;
import com.transsion.playercommon.vishaweb.jsdata.JsPost;
import com.transsion.sniffer_load.sniffservice.VSSniffJavaScriptInterface;
import defpackage.dy0;
import defpackage.ek4;
import defpackage.fi1;
import defpackage.hb0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class VSSniffJavaScriptInterface {
    public static final String JS_CALL_JAVA_OBJCET_NAME_SNIFFWEBVIEWJS = "SniffWebViewJs";
    private static final String TAG = "visha_" + VSSniffJavaScriptInterface.class.getSimpleName();
    private VideoSnifferCore mVideoSnifferCore;

    public VSSniffJavaScriptInterface(VideoSnifferCore videoSnifferCore) {
        this.mVideoSnifferCore = videoSnifferCore;
    }

    public static void lambda$setBuriedPointCommon$0(String str) {
        JsPost jsPost = (JsPost) fi1.b(str, JsPost.class);
        if (jsPost != null) {
            hb0.markTrackMap(jsPost.getEvent(), jsPost.getPost());
        }
    }

    @JavascriptInterface
    public String getClipboardContent() {
        String strValueOf;
        try {
            strValueOf = String.valueOf(dy0.b());
        } catch (Exception e) {
            LogUtils.m(TAG, "getCurrentLanguage error: " + e.getMessage());
            strValueOf = "";
        }
        LogUtils.v(TAG, "getClipboardContent: " + strValueOf);
        return strValueOf;
    }

    @JavascriptInterface
    public void onCanDownloadMedia(String str) {
        String str2 = TAG;
        LogUtils.j(str2, "get_video_info_from_js:" + str);
        SniffVideoInfoArrayBean sniffVideoInfoArrayBean = new SniffVideoInfoArrayBean();
        sniffVideoInfoArrayBean.setMultiVideoList(new ArrayList((Collection) ek4.e(str, new TypeToken<List<SniffVideoInfoBean>>() {
        }.getType())));
        if (SniffVideoInfoArrayBean.isNotEmpty(sniffVideoInfoArrayBean)) {
            LogUtils.j(str2, "video_info:" + sniffVideoInfoArrayBean);
            VideoSnifferCore videoSnifferCore = this.mVideoSnifferCore;
            if (videoSnifferCore != null) {
                videoSnifferCore.onJsSniffResult(sniffVideoInfoArrayBean);
            }
        }
    }

    @JavascriptInterface
    public void onGetVideos(String str) {
        String str2 = TAG;
        LogUtils.j(str2, "onGetVideos:" + str);
        SniffVideoInfoArrayBean sniffVideoInfoArrayBean = new SniffVideoInfoArrayBean();
        sniffVideoInfoArrayBean.setMultiVideoList(new ArrayList((Collection) ek4.e(str, new TypeToken<List<SniffVideoInfoBean>>() {
        }.getType())));
        if (SniffVideoInfoArrayBean.isNotEmpty(sniffVideoInfoArrayBean)) {
            LogUtils.j(str2, "video_info:" + sniffVideoInfoArrayBean);
            VideoSnifferCore videoSnifferCore = this.mVideoSnifferCore;
            if (videoSnifferCore != null) {
                videoSnifferCore.onJsSniffResult(sniffVideoInfoArrayBean);
            }
        }
    }

    @JavascriptInterface
    public final void popupVideoInfo(String str) {
    }

    @JavascriptInterface
    public void pushMessage(String str, String str2, String str3) {
    }

    @JavascriptInterface
    public void setBuriedPoint(String str) {
        SniffMarkPointer.markPointSniffFromJson(str);
    }

    @JavascriptInterface
    public void setBuriedPointCommon(final String str) {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                VSSniffJavaScriptInterface.lambda$setBuriedPointCommon$0(str);
            }
        });
    }

    @JavascriptInterface
    public void setCanDownload(boolean z) {
    }

    @JavascriptInterface
    public void setJsMedia(String str) {
        String str2 = TAG;
        LogUtils.j(str2, "get_video_info_from_js:" + str);
        SniffVideoInfoArrayBean sniffVideoInfoArrayBean = new SniffVideoInfoArrayBean();
        sniffVideoInfoArrayBean.setMultiVideoList(new ArrayList((Collection) ek4.e(str, new TypeToken<List<SniffVideoInfoBean>>() {
        }.getType())));
        if (!SniffVideoInfoArrayBean.isNotEmpty(sniffVideoInfoArrayBean)) {
            VideoSnifferCore videoSnifferCore = this.mVideoSnifferCore;
            if (videoSnifferCore != null) {
                videoSnifferCore.onClientScriptSniffFailed("get_video_info_from_js_failed:" + str);
                return;
            }
            return;
        }
        LogUtils.j(str2, "video_info:" + sniffVideoInfoArrayBean);
        VideoSnifferCore videoSnifferCore2 = this.mVideoSnifferCore;
        if (videoSnifferCore2 != null) {
            videoSnifferCore2.onClientScriptSniffResult(sniffVideoInfoArrayBean);
        }
    }

    @JavascriptInterface
    public void setValue(String str) {
        LogUtils.w(TAG, "javascript_call_back_setValue:" + str);
    }

    @JavascriptInterface
    public void submitSniff(String str) {
        LogUtils.j(TAG, "get_sniff_info_should_request_server", str);
        VideoSnifferCore videoSnifferCore = this.mVideoSnifferCore;
        if (videoSnifferCore != null) {
            videoSnifferCore.submitSniffInfo(str);
        }
    }
}
