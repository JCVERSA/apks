package com.google.android.gms.dynamite;

import android.content.Context;

public final class d implements DynamiteModule.a {
    @Override
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0094a interfaceC0094a) {
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        int iB = interfaceC0094a.b(context, str, true);
        bVar.b = iB;
        if (iB != 0) {
            bVar.c = 1;
        } else {
            int iA = interfaceC0094a.a(context, str);
            bVar.a = iA;
            if (iA != 0) {
                bVar.c = -1;
            }
        }
        return bVar;
    }
}
