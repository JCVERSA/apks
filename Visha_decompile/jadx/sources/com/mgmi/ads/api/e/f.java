package com.mgmi.ads.api.e;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import com.lzy.okgo.model.HttpHeaders;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.model.WebviewResourceBean;
import defpackage.aud;
import defpackage.fyd;
import defpackage.i4d;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class f {
    private static f a;
    private boolean b = false;

    private f() {
    }

    public static f a() {
        if (a == null) {
            synchronized (com.mgmi.platform.b.b.class) {
                try {
                    if (a == null) {
                        a = new f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public void a(final Context context, long j) {
        if (this.b) {
            return;
        }
        this.b = true;
        String str = com.mgmi.platform.b.a().e() + "/creative/list";
        com.mgmi.g.a aVarI = new com.mgmi.g.a().a(j).i(100411);
        aVarI.a(com.mgmi.platform.b.t);
        if (fyd.e(context)) {
            Map<String, String> mapA = com.mgmi.f.b.a(context, aVarI, (String) null, false);
            com.mgadplus.netlib.a.a aVarB = new com.mgadplus.netlib.a.a(str).a(mapA).a(5000).b(5000);
            com.mgadplus.netlib.base.c.a aVar = com.mgadplus.netlib.base.c.a.HEADER;
            aVarB.a("auver", "v1", aVar);
            aVarB.a("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED, aVar);
            aVarB.a("Connection", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, aVar);
            if (mapA != null) {
                Iterator<Map.Entry<String, String>> it = mapA.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, String> next = it.next();
                    String value = next.getValue();
                    if (TextUtils.isEmpty(value)) {
                        value = "";
                    }
                    aVarB.a(next.getKey(), value, com.mgadplus.netlib.base.c.a.BODY);
                    it.remove();
                }
            }
            com.mgadplus.netlib.a.e.a(context, aVarB, new com.mgadplus.netlib.base.b<List<WebviewResourceBean>>() {
                @Override
                public void b(List<WebviewResourceBean> list) {
                    SourceKitLogger.a("mgadlog", "resourceBeanList" + list.size());
                    new com.mgmi.ads.api.a.k(context.getApplicationContext(), list).executeOnExecutor(i4d.a().c(), 0);
                }

                @Override
                public void a(int i, int i2, @Nullable String str2, @Nullable Throwable th, String str3) {
                    SourceKitLogger.a("mgadlog", "thow");
                }
            });
        }
    }

    public static String a(String str) {
        String strA = com.mgmi.b.c.a().a(str);
        if (aud.e(strA)) {
            return strA;
        }
        return null;
    }
}
