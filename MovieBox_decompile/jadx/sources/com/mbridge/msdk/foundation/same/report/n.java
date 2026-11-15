package com.mbridge.msdk.foundation.same.report;

import com.mbridge.msdk.tracker.network.q;
import com.mbridge.msdk.tracker.network.v;
import com.mbridge.msdk.tracker.w;
import java.io.UnsupportedEncodingException;

public class n extends w {
    @Override
    protected v<String> a(q qVar) {
        String str;
        try {
            str = new String(qVar.f37784b, com.mbridge.msdk.tracker.network.toolbox.f.a(qVar.f37785c));
        } catch (UnsupportedEncodingException unused) {
            str = new String(qVar.f37784b);
        }
        return v.a(str, com.mbridge.msdk.tracker.network.toolbox.f.a(qVar));
    }
}
