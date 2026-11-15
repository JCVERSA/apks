package com.google.android.gms.dynamite;

import android.content.Context;

public final class j implements DynamiteModule.a {
    @Override
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0094a interfaceC0094a) {
        int iB;
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        int iA = interfaceC0094a.a(context, str);
        bVar.a = iA;
        int i = 1;
        int i2 = 0;
        if (iA != 0) {
            iB = interfaceC0094a.b(context, str, false);
            bVar.b = iB;
        } else {
            iB = interfaceC0094a.b(context, str, true);
            bVar.b = iB;
        }
        int i3 = bVar.a;
        if (i3 == 0) {
            if (iB == 0) {
                i = 0;
            }
            bVar.c = i;
            return bVar;
        }
        i2 = i3;
        if (iB < i2) {
            i = -1;
        }
        bVar.c = i;
        return bVar;
    }
}
