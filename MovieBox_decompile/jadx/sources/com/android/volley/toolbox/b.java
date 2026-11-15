package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.Request;
import com.android.volley.VolleyError;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public class b implements com.android.volley.f {

    protected final f f18666a;

    private final a f18667b;

    protected final ByteArrayPool f18668c;

    public b(a aVar) {
        this(aVar, new ByteArrayPool(4096));
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
    
        r12 = r3.d();
        r0 = r3.c();
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public com.android.volley.g a(Request request) throws VolleyError {
        IOException iOException;
        e eVar;
        byte[] bArr;
        e eVarA;
        int iD;
        List listC;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            try {
                eVarA = this.f18667b.a(request, d.c(request.getCacheEntry()));
                try {
                    break;
                } catch (IOException e10) {
                    bArr = null;
                    eVar = eVarA;
                    iOException = e10;
                }
            } catch (IOException e11) {
                iOException = e11;
                eVar = null;
                bArr = null;
            }
            l.a(request, l.e(request, iOException, jElapsedRealtime, eVar, bArr));
        }
        if (iD == 304) {
            return l.b(request, SystemClock.elapsedRealtime() - jElapsedRealtime, listC);
        }
        InputStream inputStreamA = eVarA.a();
        byte[] bArrC = inputStreamA != null ? l.c(inputStreamA, eVarA.b(), this.f18668c) : new byte[0];
        l.d(SystemClock.elapsedRealtime() - jElapsedRealtime, request, bArrC, iD);
        if (iD < 200 || iD > 299) {
            throw new IOException();
        }
        return new com.android.volley.g(iD, bArrC, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listC);
    }

    public b(a aVar, ByteArrayPool byteArrayPool) {
        this.f18667b = aVar;
        this.f18666a = aVar;
        this.f18668c = byteArrayPool;
    }
}
