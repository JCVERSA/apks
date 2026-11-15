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
import defpackage.cjb;
import defpackage.ikd;
import defpackage.jm4;
import java.io.File;
import java.io.FileInputStream;

public class AgentPageWebViewClient extends jm4 {
    public OverrideListener a;
    public String b;
    public int c = 4;

    public interface OverrideListener {
        boolean OnOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest);

        boolean OnOverrideUrlLoading(WebView webView, String str);

        void onError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError);

        void onPageFinished(WebView webView, String str);
    }

    public AgentPageWebViewClient(OverrideListener overrideListener) {
        this.a = overrideListener;
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        OverrideListener overrideListener = this.a;
        if (overrideListener != null) {
            overrideListener.onPageFinished(webView, str);
        }
    }

    @Override
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        OverrideListener overrideListener = this.a;
        if (overrideListener != null) {
            overrideListener.onError(webView, webResourceRequest, webResourceError);
        }
    }

    public void setMainPageUrl(String str) {
        this.b = str;
    }

    public void setSource(int i) {
        this.c = i;
    }

    @Override
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        File file;
        try {
            ikd.b().d("AgentPageWebViewClient", "shouldInterceptRequest URL== " + str);
            if (str.startsWith(AgentPageJsBridge.AGENT_PAGE_START_URL)) {
                String str2 = new String(Base64.decode(str.substring(21), 0));
                if (str2.startsWith("https://")) {
                    IDiskCache iDiskCacheG = this.c == 4 ? DiskLruCacheUtil.g(4) : DiskLruCacheUtil.g(1);
                    file = iDiskCacheG != null ? iDiskCacheG.d(new ImageCacheURL(str2)) : null;
                } else {
                    file = new File(str2);
                }
                if (file != null && file.exists() && file.length() > 0) {
                    MimeTypeMap.getSingleton();
                    return new WebResourceResponse(MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str)), "UTF-8", new FileInputStream(file));
                }
                ikd.b().e("AgentPageWebViewClient", "not found cache for Base64URL== " + str + ", decode url = " + str2);
            } else if (str.contains(AgentPageJsBridge.AGENT_PAGE_INFO) || (!TextUtils.isEmpty(this.b) && str.equals(this.b))) {
                IDiskCache iDiskCacheG2 = this.c == 4 ? DiskLruCacheUtil.g(4) : DiskLruCacheUtil.g(1);
                if (iDiskCacheG2 != null) {
                    File fileD = str.contains(AgentPageJsBridge.HTML_FROM_LOCAL) ? iDiskCacheG2.d(new ImageCacheURL(cjb.a(str))) : iDiskCacheG2.d(new ImageCacheURL(str));
                    if (fileD != null && fileD.exists() && fileD.length() > 0) {
                        MimeTypeMap.getSingleton();
                        return new WebResourceResponse(MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str)), "UTF-8", new FileInputStream(fileD));
                    }
                }
            }
            return super.shouldInterceptRequest(webView, str);
        } catch (Exception e) {
            ikd.b().e(Log.getStackTraceString(e));
            return super.shouldInterceptRequest(webView, str);
        }
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        ikd.b().d("AgentPageWebViewClient", "shouldOverrideUrlLoading url=" + str);
        OverrideListener overrideListener = this.a;
        if (overrideListener == null) {
            return false;
        }
        return overrideListener.OnOverrideUrlLoading(webView, str);
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        OverrideListener overrideListener = this.a;
        if (overrideListener == null) {
            return false;
        }
        return overrideListener.OnOverrideUrlLoading(webView, webResourceRequest);
    }
}
