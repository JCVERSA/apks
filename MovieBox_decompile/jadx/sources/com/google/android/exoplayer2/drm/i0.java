package com.google.android.exoplayer2.drm;

import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public final class i0 implements j0 {

    private final com.google.android.exoplayer2.upstream.k.a f24348a;

    private final String f24349b;

    private final boolean f24350c;

    private final Map f24351d;

    public i0(String str, boolean z10, com.google.android.exoplayer2.upstream.k.a aVar) {
        com.google.android.exoplayer2.util.a.a((z10 && TextUtils.isEmpty(str)) ? false : true);
        this.f24348a = aVar;
        this.f24349b = str;
        this.f24350c = z10;
        this.f24351d = new HashMap();
    }

    private static byte[] c(com.google.android.exoplayer2.upstream.k.a aVar, String str, byte[] bArr, Map map) throws MediaDrmCallbackException {
        com.google.android.exoplayer2.upstream.i0 i0Var = new com.google.android.exoplayer2.upstream.i0(aVar.createDataSource());
        com.google.android.exoplayer2.upstream.n nVarA = new com.google.android.exoplayer2.upstream.n.b().j(str).e(map).d(2).c(bArr).b(1).a();
        int i10 = 0;
        com.google.android.exoplayer2.upstream.n nVarA2 = nVarA;
        while (true) {
            try {
                com.google.android.exoplayer2.upstream.l lVar = new com.google.android.exoplayer2.upstream.l(i0Var, nVarA2);
                try {
                    try {
                        byte[] bArrY0 = p0.Y0(lVar);
                        p0.n(lVar);
                        return bArrY0;
                    } catch (HttpDataSource$InvalidResponseCodeException e10) {
                        String strD = d(e10, i10);
                        if (strD == null) {
                            throw e10;
                        }
                        i10++;
                        nVarA2 = nVarA2.a().j(strD).a();
                        p0.n(lVar);
                    }
                } catch (Throwable th2) {
                    p0.n(lVar);
                    throw th2;
                }
            } catch (Exception e11) {
                throw new MediaDrmCallbackException(nVarA, (Uri) com.google.android.exoplayer2.util.a.e(i0Var.h()), i0Var.getResponseHeaders(), i0Var.f(), e11);
            }
        }
    }

    private static String d(HttpDataSource$InvalidResponseCodeException httpDataSource$InvalidResponseCodeException, int i10) {
        Map<String, List<String>> map;
        List<String> list;
        int i11 = httpDataSource$InvalidResponseCodeException.responseCode;
        if ((i11 != 307 && i11 != 308) || i10 >= 5 || (map = httpDataSource$InvalidResponseCodeException.headerFields) == null || (list = map.get(HttpHeaders.LOCATION)) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override
    public byte[] a(UUID uuid, c0.d dVar) {
        return c(this.f24348a, dVar.b() + "&signedRequest=" + p0.D(dVar.a()), null, Collections.emptyMap());
    }

    @Override
    public byte[] b(UUID uuid, c0.a aVar) throws MediaDrmCallbackException {
        String str;
        String strB = aVar.b();
        if (this.f24350c || TextUtils.isEmpty(strB)) {
            strB = this.f24349b;
        }
        if (TextUtils.isEmpty(strB)) {
            com.google.android.exoplayer2.upstream.n.b bVar = new com.google.android.exoplayer2.upstream.n.b();
            Uri uri = Uri.EMPTY;
            throw new MediaDrmCallbackException(bVar.i(uri).a(), uri, ImmutableMap.of(), 0L, new IllegalStateException("No license URL"));
        }
        HashMap map = new HashMap();
        UUID uuid2 = com.google.android.exoplayer2.l.f24516e;
        if (uuid2.equals(uuid)) {
            str = "text/xml";
        } else {
            str = com.google.android.exoplayer2.l.f24514c.equals(uuid) ? "application/json" : OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
        }
        map.put(HttpHeaders.CONTENT_TYPE, str);
        if (uuid2.equals(uuid)) {
            map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.f24351d) {
            map.putAll(this.f24351d);
        }
        return c(this.f24348a, strB, aVar.a(), map);
    }

    public void e(String str, String str2) {
        com.google.android.exoplayer2.util.a.e(str);
        com.google.android.exoplayer2.util.a.e(str2);
        synchronized (this.f24351d) {
            this.f24351d.put(str, str2);
        }
    }
}
