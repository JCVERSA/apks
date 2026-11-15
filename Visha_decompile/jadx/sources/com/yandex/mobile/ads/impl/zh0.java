package com.yandex.mobile.ads.impl;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public final class zh0 implements bw0 {
    private final tv.a a;

    @Nullable
    private final String b;
    private final boolean c;
    private final HashMap d;

    public zh0(@Nullable String str, boolean z, yz.a aVar) {
        hg.a((z && TextUtils.isEmpty(str)) ? false : true);
        this.a = aVar;
        this.b = str;
        this.c = z;
        this.d = new HashMap();
    }

    public final byte[] a(UUID uuid, l60.a aVar) throws cw0 {
        String str;
        String strB = aVar.b();
        if (this.c || TextUtils.isEmpty(strB)) {
            strB = this.b;
        }
        if (TextUtils.isEmpty(strB)) {
            xv.a aVar2 = new xv.a();
            Uri uri = Uri.EMPTY;
            throw new cw0(aVar2.a(uri).a(), uri, lk0.g(), 0L, new IllegalStateException("No license URL"));
        }
        HashMap map = new HashMap();
        UUID uuid2 = rm.e;
        if (uuid2.equals(uuid)) {
            str = "text/xml";
        } else {
            str = rm.c.equals(uuid) ? "application/json" : "application/octet-stream";
        }
        map.put("Content-Type", str);
        if (uuid2.equals(uuid)) {
            map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.d) {
            map.putAll(this.d);
        }
        return a(this.a, strB, aVar.a(), map);
    }

    public final byte[] a(l60.d dVar) throws cw0 {
        return a(this.a, dVar.b() + "&signedRequest=" + f92.a(dVar.a()), null, Collections.emptyMap());
    }

    public final void a(String str, String str2) {
        str.getClass();
        str2.getClass();
        synchronized (this.d) {
            this.d.put(str, str2);
        }
    }

    private static byte[] a(tv.a aVar, String str, @Nullable byte[] bArr, Map<String, String> map) throws cw0 {
        Map<String, List<String>> map2;
        List<String> list;
        s22 s22Var = new s22(aVar.a());
        xv xvVarA = new xv.a().b(str).a(map).b().a(bArr).a(1).a();
        int i = 0;
        int i2 = 0;
        xv xvVarA2 = xvVarA;
        while (true) {
            try {
                vv vvVar = new vv(s22Var, xvVarA2);
                try {
                    int i3 = f92.a;
                    byte[] bArr2 = new byte[4096];
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        int i4 = vvVar.read(bArr2);
                        if (i4 != -1) {
                            byteArrayOutputStream.write(bArr2, i, i4);
                        } else {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            f92.a((Closeable) vvVar);
                            return byteArray;
                        }
                        f92.a((Closeable) vvVar);
                        throw th;
                    }
                } catch (th0 e) {
                    try {
                        int i5 = e.e;
                        String str2 = ((i5 != 307 && i5 != 308) || i2 >= 5 || (map2 = e.f) == null || (list = map2.get("Location")) == null || list.isEmpty()) ? null : list.get(i);
                        if (str2 != null) {
                            i2++;
                            xvVarA2 = xvVarA2.a().b(str2).a();
                            f92.a((Closeable) vvVar);
                        } else {
                            throw e;
                        }
                    } catch (Throwable th) {
                        f92.a((Closeable) vvVar);
                        throw th;
                    }
                }
            } catch (Exception e2) {
                Uri uriF = s22Var.f();
                uriF.getClass();
                throw new cw0(xvVarA, uriF, s22Var.getResponseHeaders(), s22Var.e(), e2);
            }
        }
    }
}
