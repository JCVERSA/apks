package defpackage;

import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;

public final class zaf implements lu8 {
    public final Status b = Status.RESULT_SUCCESS;
    public ProxyResponse c;

    public zaf(ProxyResponse proxyResponse) {
        this.c = proxyResponse;
    }

    @Override
    public final Status getStatus() {
        return this.b;
    }
}
