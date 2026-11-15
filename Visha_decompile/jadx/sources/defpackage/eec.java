package defpackage;

import android.webkit.JavascriptInterface;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.playercommon.vishaweb.jsbridge.IJsToNative;

public class eec {
    public static final String b = "visha_" + eec.class.getSimpleName();
    public final IJsToNative a;

    public eec(IJsToNative iJsToNative) {
        this.a = iJsToNative;
    }

    @JavascriptInterface
    public void jsToNative(String str, String str2) {
        LogUtils.j(b, str + "\n" + str2);
        IJsToNative iJsToNative = this.a;
        if (iJsToNative != null) {
            iJsToNative.jsToNative(str, str2);
        }
    }
}
