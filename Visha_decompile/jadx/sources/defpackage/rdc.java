package defpackage;

import android.util.Log;
import android.webkit.JavascriptInterface;
import com.just.agentweb.jsbridge.BridgeWebView;
import com.transsion.playercommon.vishaweb.jsbridge.IJsToNative;
import java.util.Map;

public class rdc extends BridgeWebView.BaseJavascriptInterface {
    public BridgeWebView a;
    public IJsToNative b;

    public rdc(Map map, BridgeWebView bridgeWebView, IJsToNative iJsToNative) {
        super(map);
        this.a = bridgeWebView;
        this.b = iJsToNative;
    }

    @JavascriptInterface
    public void jsToNative(String str, String str2) {
        Log.d("VishaVip_jsNative", str + "\n" + str2);
        IJsToNative iJsToNative = this.b;
        if (iJsToNative != null) {
            iJsToNative.jsToNative(str, str2);
        }
    }

    @Override
    public String send(String str) {
        return str;
    }
}
