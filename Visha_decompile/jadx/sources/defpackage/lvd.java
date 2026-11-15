package defpackage;

import android.text.TextUtils;
import android.widget.TextView;
import com.mgmi.model.VASTAd;

public abstract class lvd {
    public static String a(VASTAd vASTAd) {
        if (vASTAd == null) {
            return "广告";
        }
        String adOrigin = vASTAd.getAdOrigin();
        if (TextUtils.isEmpty(adOrigin)) {
            return "广告";
        }
        return "广告·" + adOrigin;
    }

    public static void b(VASTAd vASTAd, TextView textView) {
        if (vASTAd == null || textView == null) {
            return;
        }
        if (!vASTAd.isShowAdLog()) {
            l4d.f(textView, 8);
        } else {
            textView.setText(a(vASTAd));
            l4d.f(textView, 0);
        }
    }
}
