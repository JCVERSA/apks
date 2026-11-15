package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import java.util.Locale;

public abstract class Z9 {
    public static ImageView A00(final C1635dL c1635dL, final C1278Ua c1278Ua, final AbstractC1910hy abstractC1910hy, final InterfaceC1366Xn interfaceC1366Xn, final Z5 z5, Handler handler, Z6 z6) {
        c1635dL.A0F().AAv(z5.name().toLowerCase(Locale.US));
        return abstractC1910hy.A2F() ? new Z4(c1635dL, handler, z6, abstractC1910hy.A1y(), new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                C1635dL c1635dL2 = c1635dL;
                C1278Ua c1278Ua2 = c1278Ua;
                InterfaceC1366Xn interfaceC1366Xn2 = interfaceC1366Xn;
                Z5 z7 = z5;
                AbstractC1910hy abstractC1910hy2 = abstractC1910hy;
                Z9.A04(c1635dL2, c1278Ua2, interfaceC1366Xn2, z7, abstractC1910hy2.A25(), abstractC1910hy2.A23());
            }
        }) : new ZA(c1635dL, new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                C1635dL c1635dL2 = c1635dL;
                C1278Ua c1278Ua2 = c1278Ua;
                InterfaceC1366Xn interfaceC1366Xn2 = interfaceC1366Xn;
                Z5 z7 = z5;
                AbstractC1910hy abstractC1910hy2 = abstractC1910hy;
                Z9.A04(c1635dL2, c1278Ua2, interfaceC1366Xn2, z7, abstractC1910hy2.A25(), abstractC1910hy2.A23());
            }
        });
    }

    public static ImageView A01(C1635dL c1635dL, C1278Ua c1278Ua, AbstractC1910hy abstractC1910hy, Z5 z5, InterfaceC1366Xn interfaceC1366Xn, Handler handler) {
        return A00(c1635dL, c1278Ua, abstractC1910hy, interfaceC1366Xn, z5, handler, Z6.A03);
    }

    public static void A04(C1635dL c1635dL, C1278Ua c1278Ua, InterfaceC1366Xn interfaceC1366Xn, Z5 z5, String str, N9 n9) {
        if (c1278Ua != null) {
            c1278Ua.A04(UZ.A0A, null);
        }
        c1635dL.A0F().AAu(z5.name().toLowerCase(Locale.US));
        if (O3.A00(c1635dL.A02()).A0O(c1635dL.A02(), true)) {
            interfaceC1366Xn.AAf(str, n9);
        } else {
            if (TextUtils.isEmpty(n9.A00())) {
                return;
            }
            WN.A0O(new WN(), c1635dL, WQ.A00(n9.A00()), str);
        }
    }
}
