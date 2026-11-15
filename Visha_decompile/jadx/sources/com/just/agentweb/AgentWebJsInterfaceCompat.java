package com.just.agentweb;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import android.webkit.JavascriptInterface;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import java.lang.ref.WeakReference;

public class AgentWebJsInterfaceCompat {
    private String TAG = getClass().getSimpleName();
    private WeakReference<Activity> mActivityWeakReference;
    private WeakReference<AgentWeb> mReference;

    public AgentWebJsInterfaceCompat(AgentWeb agentWeb, Activity activity) {
        this.mReference = null;
        this.mActivityWeakReference = null;
        this.mReference = new WeakReference<>(agentWeb);
        this.mActivityWeakReference = new WeakReference<>(activity);
    }

    @JavascriptInterface
    public void uploadFile() {
        uploadFile(SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE);
    }

    @JavascriptInterface
    public void uploadFile(String str) {
        LogUtils.i(this.TAG, str + "  " + this.mActivityWeakReference.get() + "  " + this.mReference.get());
        if (this.mActivityWeakReference.get() == null || this.mReference.get() == null) {
            return;
        }
        AgentWebUtils.showFileChooserCompat(this.mActivityWeakReference.get(), this.mReference.get().getWebCreator().getWebView(), null, null, this.mReference.get().getPermissionInterceptor(), null, str, new Handler.Callback() {
            @Override
            public boolean handleMessage(Message message) {
                if (AgentWebJsInterfaceCompat.this.mReference.get() == null) {
                    return true;
                }
                JsAccessEntrace jsAccessEntrace = ((AgentWeb) AgentWebJsInterfaceCompat.this.mReference.get()).getJsAccessEntrace();
                Object obj = message.obj;
                jsAccessEntrace.quickCallJs("uploadFileResult", obj instanceof String ? (String) obj : null);
                return true;
            }
        });
    }
}
