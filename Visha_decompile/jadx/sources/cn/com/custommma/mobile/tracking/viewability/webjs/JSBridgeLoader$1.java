package cn.com.custommma.mobile.tracking.viewability.webjs;

import android.content.SharedPreferences;
import android.text.TextUtils;

class JSBridgeLoader$1 implements Runnable {
    final a this$0;

    public JSBridgeLoader$1(a aVar) {
    }

    @Override
    public void run() {
        a.a(null, true);
        try {
            byte[] bArrA = a.C0020a.a(a.b(null));
            String str = bArrA != null ? new String(bArrA, "UTF-8") : null;
            if (!TextUtils.isEmpty(str) && !str.equals(a.c(null))) {
                SharedPreferences.Editor editorEdit = a.e(null).getSharedPreferences("mma.viewabilityjs.bridgejs", 0).edit();
                editorEdit.putString(a.f(null), str);
                editorEdit.apply();
                if (TextUtils.isEmpty(a.c(null))) {
                    a.d(null, str);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        a.a(null, false);
    }
}
