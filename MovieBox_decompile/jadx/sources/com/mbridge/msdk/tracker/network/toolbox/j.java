package com.mbridge.msdk.tracker.network.toolbox;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ImagesContract;
import com.mbridge.msdk.tracker.network.p;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

public class j implements com.mbridge.msdk.thrid.okhttp.m {

    private final String f37840b;

    private final String f37841c;

    private final p f37842d;

    public j(String str, String str2, p pVar) {
        this.f37840b = str;
        this.f37841c = str2;
        this.f37842d = pVar;
    }

    @Override
    @NonNull
    public List<InetAddress> a(@NonNull String str) throws UnknownHostException {
        try {
            List<InetAddress> listA = com.mbridge.msdk.thrid.okhttp.m.f37449a.a(str);
            return (listA.isEmpty() && i.b().c(this.f37840b, this.f37841c, str)) ? a(str, new UnknownHostException("DNS result is empty")) : listA;
        } catch (UnknownHostException e10) {
            if (i.b().c(this.f37840b, this.f37841c, str)) {
                return a(str, new UnknownHostException(e10.getMessage()));
            }
            throw e10;
        }
    }

    private List<InetAddress> a(String str, UnknownHostException unknownHostException) throws UnknownHostException {
        p pVar = this.f37842d;
        if (pVar != null) {
            pVar.c(ImagesContract.LOCAL);
        }
        return i.b().a(str, unknownHostException);
    }
}
