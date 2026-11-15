package com.google.android.exoplayer2.drm;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.common.collect.ImmutableMap;
import defpackage.blb;
import defpackage.ox9;
import defpackage.to0;
import defpackage.vs1;
import defpackage.zi;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public final class i implements j {
    public final com.google.android.exoplayer2.upstream.a.InterfaceC0084a a;
    public final String b;
    public final boolean c;
    public final Map d;

    public i(String str, boolean z, com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a) {
        zi.a((z && TextUtils.isEmpty(str)) ? false : true);
        this.a = interfaceC0084a;
        this.b = str;
        this.c = z;
        this.d = new HashMap();
    }

    public static byte[] c(com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a, String str, byte[] bArr, Map map) throws MediaDrmCallbackException {
        ox9 ox9Var = new ox9(interfaceC0084a.createDataSource());
        com.google.android.exoplayer2.upstream.b bVarA = new com.google.android.exoplayer2.upstream.b.C0085b().j(str).e(map).d(2).c(bArr).b(1).a();
        int i = 0;
        com.google.android.exoplayer2.upstream.b bVarA2 = bVarA;
        while (true) {
            try {
                vs1 vs1Var = new vs1(ox9Var, bVarA2);
                try {
                    try {
                        byte[] bArrK0 = blb.K0(vs1Var);
                        blb.m(vs1Var);
                        return bArrK0;
                    } catch (HttpDataSource$InvalidResponseCodeException e) {
                        String strD = d(e, i);
                        if (strD == null) {
                            throw e;
                        }
                        i++;
                        bVarA2 = bVarA2.a().j(strD).a();
                        blb.m(vs1Var);
                    }
                } catch (Throwable th) {
                    blb.m(vs1Var);
                    throw th;
                }
            } catch (Exception e2) {
                throw new MediaDrmCallbackException(bVarA, (Uri) zi.e(ox9Var.d()), ox9Var.getResponseHeaders(), ox9Var.c(), e2);
            }
        }
    }

    public static String d(HttpDataSource$InvalidResponseCodeException httpDataSource$InvalidResponseCodeException, int i) {
        Map<String, List<String>> map;
        List<String> list;
        int i2 = httpDataSource$InvalidResponseCodeException.responseCode;
        if ((i2 != 307 && i2 != 308) || i >= 5 || (map = httpDataSource$InvalidResponseCodeException.headerFields) == null || (list = map.get("Location")) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override
    public byte[] a(UUID uuid, g.a aVar) throws MediaDrmCallbackException {
        String str;
        String strB = aVar.b();
        if (this.c || TextUtils.isEmpty(strB)) {
            strB = this.b;
        }
        if (TextUtils.isEmpty(strB)) {
            com.google.android.exoplayer2.upstream.b.C0085b c0085b = new com.google.android.exoplayer2.upstream.b.C0085b();
            Uri uri = Uri.EMPTY;
            throw new MediaDrmCallbackException(c0085b.i(uri).a(), uri, ImmutableMap.of(), 0L, new IllegalStateException("No license URL"));
        }
        HashMap map = new HashMap();
        UUID uuid2 = to0.e;
        if (uuid2.equals(uuid)) {
            str = "text/xml";
        } else {
            str = to0.c.equals(uuid) ? "application/json" : "application/octet-stream";
        }
        map.put("Content-Type", str);
        if (uuid2.equals(uuid)) {
            map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.d) {
            map.putAll(this.d);
        }
        return c(this.a, strB, aVar.a(), map);
    }

    @Override
    public byte[] b(UUID uuid, g.C0079g c0079g) {
        return c(this.a, c0079g.b() + "&signedRequest=" + blb.A(c0079g.a()), null, Collections.emptyMap());
    }

    public void e(String str, String str2) {
        zi.e(str);
        zi.e(str2);
        synchronized (this.d) {
            this.d.put(str, str2);
        }
    }
}
