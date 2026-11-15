package com.mgtv.a;

import android.text.TextUtils;
import com.yunfan.net.Yfnet;
import java.util.List;

public class b implements a {
    private static b c;
    private a d;
    private int a = 0;
    private int b = 0;
    private com.mgtv.easydatasource.jni.c e = null;

    public static b d() {
        if (c == null) {
            e();
        }
        return c;
    }

    private static synchronized void e() {
        if (c == null) {
            c = new b();
        }
    }

    @Override
    public int a() {
        a aVar = this.d;
        if (aVar == null) {
            return -1;
        }
        return aVar.a();
    }

    @Override
    public int b(c cVar) {
        a aVar = this.d;
        if (aVar == null) {
            return -1;
        }
        return aVar.b(cVar);
    }

    public int c() {
        return this.a;
    }

    @Override
    public long a(c cVar, String str, byte[] bArr, long j, long j2, long[] jArr, int[] iArr) {
        a aVar = this.d;
        if (aVar == null) {
            return -1L;
        }
        return aVar.a(cVar, str, bArr, j, j2, jArr, iArr);
    }

    @Override
    public String b() {
        a aVar = this.d;
        return aVar == null ? "" : aVar.b();
    }

    @Override
    public d a(c cVar) {
        a aVar = this.d;
        if (aVar == null) {
            return null;
        }
        return aVar.a(cVar);
    }

    @Override
    public void b(a.InterfaceC0173a interfaceC0173a) {
        a aVar = this.d;
        if (aVar == null) {
            return;
        }
        aVar.b(interfaceC0173a);
    }

    @Override
    public void a(int i) {
        a aVar = this.d;
        if (aVar == null) {
            return;
        }
        aVar.a(i);
    }

    @Override
    public void a(a.InterfaceC0173a interfaceC0173a) {
        a aVar = this.d;
        if (aVar == null) {
            return;
        }
        aVar.a(interfaceC0173a);
    }

    @Override
    public void a(c cVar, int i, boolean z) {
        a aVar = this.d;
        if (aVar == null || cVar == null) {
            return;
        }
        aVar.a(cVar, i, z);
    }

    public void a(String str, List<String> list, boolean z) {
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0 || c() != 0) {
            return;
        }
        Yfnet.a(str, list, z);
    }
}
