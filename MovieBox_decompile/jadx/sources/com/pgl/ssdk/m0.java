package com.pgl.ssdk;

import android.content.Context;
import com.vungle.ads.internal.protos.Sdk$SDKError;

public class m0 extends j0 {

    private Context f39352n;

    private final int f39353o;

    public m0(Context context, int i10) {
        super(context);
        this.f39352n = context;
        this.f39353o = i10;
    }

    @Override
    public String a() {
        int i10 = this.f39353o;
        if (i10 == 222) {
            return "/ssdk/v2/r?os=0&ver=7.1.0.0.overseas-rc.6&mode=1&app_ver=" + z.g(this.f39352n) + "&region=" + b0.a() + "&did=" + com.pgl.ssdk.ces.b.d() + "&aid=" + com.pgl.ssdk.ces.b.c();
        }
        if (i10 != 301) {
            return null;
        }
        return "/ssdk/sd/token?os=android&app_id=" + com.pgl.ssdk.ces.b.c() + "&did=" + com.pgl.ssdk.ces.b.d() + "&app_ver=" + z.g(this.f39352n) + "&platform=android&ver=7.1.0.0.overseas-rc.6&mode=1";
    }

    @Override
    public void a(int i10, byte[] bArr) {
        try {
            if (i10 == 200) {
                int i11 = this.f39353o;
                if (i11 == 222) {
                    ((Integer) com.pgl.ssdk.ces.a.meta(Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, null, bArr)).intValue();
                    return;
                }
                if (i11 == 301) {
                    Object objA = c1.a(bArr);
                    r0.b("write token result = ".concat(String.valueOf(objA)));
                    if ((objA instanceof Integer) && ((Integer) objA).intValue() == 0) {
                        r0.b("write token succ");
                        c1.f39260a = 200;
                        return;
                    } else {
                        if (objA instanceof String) {
                            c1.f39262c = (String) objA;
                            c1.f39260a = 200;
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            k0.b(this.f39352n);
        } catch (Throwable unused) {
        }
    }
}
