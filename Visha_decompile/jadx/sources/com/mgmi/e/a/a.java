package com.mgmi.e.a;

import android.content.Context;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.HttpHeaders;
import com.mgmi.model.u;
import com.transsion.push.PushConstants;

public class a {
    private d a = com.mgmi.net.b.a().b();

    public a(Context context) {
    }

    public void a(com.mgmi.model.d dVar) {
        if (dVar == null || dVar.c(PushConstants.PUSH_SERVICE_TYPE_CLICK) == null) {
            return;
        }
        this.a.a(dVar.c(PushConstants.PUSH_SERVICE_TYPE_CLICK));
    }

    public void b(com.mgmi.model.d dVar) {
        if (dVar == null || dVar.c("favor") == null) {
            return;
        }
        this.a.a(dVar.c("favor"));
    }

    public void c(com.mgmi.model.d dVar) {
        if (dVar == null || dVar.c(TtmlNode.START) == null) {
            return;
        }
        this.a.a(dVar.c(TtmlNode.START));
    }

    public void d(com.mgmi.model.d dVar) {
        if (dVar == null || dVar.c(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE) == null) {
            return;
        }
        this.a.a(dVar.c(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE));
    }

    public void a(u uVar) {
        if (TextUtils.isEmpty(uVar.g())) {
            return;
        }
        this.a.a(uVar.g());
    }
}
