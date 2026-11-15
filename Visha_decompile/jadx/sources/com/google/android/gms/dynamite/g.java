package com.google.android.gms.dynamite;

import android.content.Context;

public final class g implements DynamiteModule.a {
    /* JADX WARN: Code duplicated, block: B:7:0x001b A[DONT_INVERT, PHI: r3
      0x001b: PHI (r3v2 int) = (r3v1 int), (r3v3 int) binds: [B:3:0x0014, B:5:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:8:0x001d  */
    @Override
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0094a interfaceC0094a) {
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        bVar.a = interfaceC0094a.a(context, str);
        int i = 1;
        int iB = interfaceC0094a.b(context, str, true);
        bVar.b = iB;
        int i2 = bVar.a;
        if (i2 == 0) {
            i2 = 0;
            if (iB == 0) {
                i = 0;
            } else if (i2 >= iB) {
                i = -1;
            }
        } else if (i2 >= iB) {
            i = -1;
        }
        bVar.c = i;
        return bVar;
    }
}
