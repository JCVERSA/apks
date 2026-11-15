package com.mgadplus.netlib.a;

import android.content.Context;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.lzy.okgo.model.HttpHeaders;
import com.mgmi.f.f;
import defpackage.i4d;
import defpackage.r7d;
import defpackage.vad;
import defpackage.w5d;
import java.util.Iterator;
import java.util.Map;

public class d extends c {
    private vad a = new vad(i4d.a().c());

    @Override
    public void a(Context context, a aVar, com.mgadplus.netlib.base.b bVar) {
        com.mgadplus.netlib.base.c cVarC = aVar.c();
        if (cVarC == null) {
            cVarC = new com.mgadplus.netlib.base.c();
        }
        com.mgadplus.netlib.base.c.a aVar2 = com.mgadplus.netlib.base.c.a.HEADER;
        cVarC.put("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED, aVar2);
        cVarC.put("Connection", "Keep-Alive", aVar2);
        cVarC.put("User-Agent", f.j(), aVar2);
        if (aVar.b() != null) {
            Iterator<Map.Entry<String, String>> it = aVar.b().entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, String> next = it.next();
                String value = next.getValue();
                if (TextUtils.isEmpty(value)) {
                    value = "";
                }
                cVarC.put(next.getKey(), value, com.mgadplus.netlib.base.c.a.BODY);
                it.remove();
            }
        }
        com.mgadplus.netlib.base.d dVar = new com.mgadplus.netlib.base.d(aVar.a(), cVarC);
        dVar.a(aVar.d()).b(aVar.e());
        w5d w5dVar = new w5d(new com.mgadplus.netlib.base.f(null), dVar, bVar);
        if (bVar != null) {
            bVar.d();
        }
        this.a.a(w5dVar, null);
    }

    @Override
    public void a(com.mgmi.net.a.a aVar, com.mgadplus.netlib.base.b bVar) {
        com.mgadplus.netlib.base.c cVar = new com.mgadplus.netlib.base.c();
        com.mgadplus.netlib.base.c.a aVar2 = com.mgadplus.netlib.base.c.a.HEADER;
        cVar.put("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED, aVar2);
        cVar.put("Connection", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, aVar2);
        cVar.put("User-Agent", f.j(), aVar2);
        this.a.a(new w5d(new com.mgadplus.netlib.base.f(null), new com.mgadplus.netlib.base.d(aVar.a(), cVar), bVar), null);
    }

    @Override
    public void a(r7d r7dVar) {
        if (r7dVar != null) {
            this.a.c(r7dVar);
        }
    }
}
