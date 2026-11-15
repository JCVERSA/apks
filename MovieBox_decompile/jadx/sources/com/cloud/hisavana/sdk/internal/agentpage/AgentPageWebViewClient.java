package com.cloud.hisavana.sdk.internal.agentpage;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.webkit.MimeTypeMap;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.util.o0;
import g7.j;
import java.io.File;
import java.io.FileInputStream;

public class AgentPageWebViewClient extends j {

    OverrideListener f21931a;

    private String f21932b;

    private int f21933c = 4;

    public interface OverrideListener {
        boolean OnOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest);

        boolean OnOverrideUrlLoading(WebView webView, String str);

        void onError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError);

        void onPageFinished(WebView webView, String str);
    }

    public AgentPageWebViewClient(OverrideListener overrideListener) {
        this.f21931a = overrideListener;
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        OverrideListener overrideListener = this.f21931a;
        if (overrideListener != null) {
            overrideListener.onPageFinished(webView, str);
        }
    }

    @Override
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        OverrideListener overrideListener = this.f21931a;
        if (overrideListener != null) {
            overrideListener.onError(webView, webResourceRequest, webResourceError);
        }
    }

    public void setMainPageUrl(String str) {
        this.f21932b = str;
    }

    public void setSource(int i10) {
        this.f21933c = i10;
    }

    @Override
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        File file;
        try {
            b4.b().d("AgentPageWebViewClient", "shouldInterceptRequest URL== " + str);
            if (str.startsWith(AgentPageJsBridge.AGENT_PAGE_START_URL)) {
                String str2 = new String(Base64.decode(str.substring(21), 0));
                if (str2.startsWith("https://")) {
                    IDiskCache iDiskCacheG = this.f21933c == 4 ? DiskLruCacheUtil.g(4) : DiskLruCacheUtil.g(1);
                    file = iDiskCacheG != null ? iDiskCacheG.c(new ImageCacheURL(str2)) : null;
                } else {
                    file = new File(str2);
                }
                if (file != null && file.exists() && file.length() > 0) {
                    MimeTypeMap.getSingleton();
                    return new WebResourceResponse(MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str)), "UTF-8", new FileInputStream(file));
                }
                b4.b().e("AgentPageWebViewClient", "not found cache for Base64URL== " + str + ", decode url = " + str2);
            } else if (str.contains(AgentPageJsBridge.AGENT_PAGE_INFO) || (!TextUtils.isEmpty(this.f21932b) && str.equals(this.f21932b))) {
                IDiskCache iDiskCacheG2 = this.f21933c == 4 ? DiskLruCacheUtil.g(4) : DiskLruCacheUtil.g(1);
                if (iDiskCacheG2 != null) {
                    File fileC = str.contains(AgentPageJsBridge.HTML_FROM_LOCAL) ? iDiskCacheG2.c(new ImageCacheURL(o0.a(str))) : iDiskCacheG2.c(new ImageCacheURL(str));
                    if (fileC != null && fileC.exists() && fileC.length() > 0) {
                        MimeTypeMap.getSingleton();
                        return new WebResourceResponse(MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str)), "UTF-8", new FileInputStream(fileC));
                    }
                }
            }
            return super.shouldInterceptRequest(webView, str);
        } catch (Exception e10) {
            b4.b().e(Log.getStackTraceString(e10));
            return super.shouldInterceptRequest(webView, str);
        }
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        b4.b().d("AgentPageWebViewClient", "shouldOverrideUrlLoading url=" + str);
        OverrideListener overrideListener = this.f21931a;
        if (overrideListener == null) {
            return false;
        }
        return overrideListener.OnOverrideUrlLoading(webView, str);
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        OverrideListener overrideListener = this.f21931a;
        if (overrideListener == null) {
            return false;
        }
        return overrideListener.OnOverrideUrlLoading(webView, webResourceRequest);
    }
}
