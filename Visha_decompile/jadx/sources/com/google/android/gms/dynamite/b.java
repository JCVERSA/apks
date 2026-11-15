package com.google.android.gms.dynamite;

import android.content.Context;

public final class b implements DynamiteModule.a {
    @Override
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0094a interfaceC0094a) {
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        int iA = interfaceC0094a.a(context, str);
        bVar.a = iA;
        bVar.c = iA != 0 ? -1 : 0;
        return bVar;
    }
}
