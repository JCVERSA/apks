package com.google.android.gms.dynamite;

import android.content.Context;

public final class f implements DynamiteModule.a {
    @Override
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0094a interfaceC0094a) {
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        int iB = interfaceC0094a.b(context, str, false);
        bVar.b = iB;
        bVar.c = iB != 0 ? 1 : 0;
        return bVar;
    }
}
