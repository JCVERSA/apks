package com.mgmi.ads.api.a;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.model.WebviewResourceBean;
import defpackage.ard;
import defpackage.aud;
import defpackage.b2d;
import defpackage.q3d;
import defpackage.t7d;
import java.io.File;
import java.util.List;

public class k extends AsyncTask<Integer, Integer, Boolean> {
    private Context a;
    private List<WebviewResourceBean> b;

    public k(Context context, List<WebviewResourceBean> list) {
        this.a = context;
        this.b = list;
    }

    @Override
    public Boolean doInBackground(Integer... numArr) throws Throwable {
        try {
            a(this.b);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Boolean.TRUE;
    }

    private void a(List<WebviewResourceBean> list) throws Throwable {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (WebviewResourceBean webviewResourceBean : list) {
            if (webviewResourceBean != null && !TextUtils.isEmpty(webviewResourceBean.addr)) {
                a(webviewResourceBean.addr);
            }
        }
    }

    private boolean a(String str) throws Throwable {
        if (aud.e(com.mgmi.b.c.a().a(str))) {
            return true;
        }
        try {
            String str2 = ard.b(this.a) + "/htmlad/";
            aud.d(str2, 524288000L);
            String[] strArrSplit = str.split("\\/");
            if (strArrSplit.length > 0) {
                String str3 = str2 + strArrSplit[strArrSplit.length - 1];
                String[] strArrSplit2 = strArrSplit[strArrSplit.length - 1].split(".zip");
                if (strArrSplit2.length > 0) {
                    String str4 = str2 + strArrSplit2[0];
                    if (!str3.endsWith("zip")) {
                        return false;
                    }
                    if (new File(str3).exists()) {
                        aud.g(str3);
                    }
                    if (q3d.a(str, str3) == 1) {
                        try {
                            t7d.a(str3, str4);
                            com.mgmi.b.c.a().a(str, str4 + "/index.html");
                            SourceKitLogger.a("lyz1", "put:" + str4 + "/index.html");
                            return true;
                        } catch (Exception unused) {
                            SourceKitLogger.a("lyz", "解压失败");
                            return false;
                        }
                    }
                    b2d.b(str3);
                }
            }
        } catch (Exception unused2) {
        }
        return false;
    }
}
