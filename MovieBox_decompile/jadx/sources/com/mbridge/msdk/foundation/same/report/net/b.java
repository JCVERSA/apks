package com.mbridge.msdk.foundation.same.report.net;

import com.mbridge.msdk.foundation.same.net.c;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.o0;

public abstract class b extends c<String> {

    private static final String f34794a = "b";

    public abstract void a(String str);

    public abstract void b(String str);

    @Override
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        o0.b(f34794a, "errorCode = " + aVar.f34597a);
        a(com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override
    public void onSuccess(e<String> eVar) {
        if (eVar != null) {
            b(eVar.f34596c);
        }
    }
}
