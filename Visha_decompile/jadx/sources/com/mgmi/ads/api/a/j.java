package com.mgmi.ads.api.a;

import android.content.Context;
import com.mgmi.model.VASTStaticResource;
import com.mgmi.model.WebviewResourceBean;
import defpackage.aud;
import defpackage.i4d;
import java.util.ArrayList;
import java.util.List;

public class j {
    public List<WebviewResourceBean> a = new ArrayList();

    public void a(Context context, List<VASTStaticResource> list) {
        String url;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                VASTStaticResource vASTStaticResource = list.get(i);
                if (vASTStaticResource != null && ((url = vASTStaticResource.getUrl()) == null || !aud.e(com.mgmi.b.c.a().a(url)))) {
                    this.a.add(new WebviewResourceBean(vASTStaticResource.getType(), vASTStaticResource.getUrl()));
                }
            }
        }
        List<WebviewResourceBean> list2 = this.a;
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        new k(context.getApplicationContext(), this.a).executeOnExecutor(i4d.a().c(), 0);
    }
}
