package com.bykv.vk.openvk.preload.geckox.c;

import com.bykv.vk.openvk.preload.a.d.c;
import com.bykv.vk.openvk.preload.a.m;
import com.bykv.vk.openvk.preload.a.r;
import java.io.IOException;

public final class a extends r<Boolean> {

    static class AnonymousClass1 {

        static final int[] f20041a;

        static {
            int[] iArr = new int[com.bykv.vk.openvk.preload.a.d.b.values().length];
            f20041a = iArr;
            try {
                iArr[com.bykv.vk.openvk.preload.a.d.b.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20041a[com.bykv.vk.openvk.preload.a.d.b.NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20041a[com.bykv.vk.openvk.preload.a.d.b.NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override
    public final void a(c cVar, Boolean bool) throws IOException {
        Boolean bool2 = bool;
        if (bool2 == null) {
            cVar.h();
        } else {
            cVar.a(bool2);
        }
    }

    @Override
    public final Boolean a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
        int i10 = AnonymousClass1.f20041a[bVarF.ordinal()];
        if (i10 == 1) {
            return Boolean.valueOf(aVar.i());
        }
        if (i10 == 2) {
            aVar.j();
            return null;
        }
        if (i10 == 3) {
            return Boolean.valueOf(aVar.m() != 0);
        }
        throw new m("Expected BOOLEAN or NUMBER but was ".concat(String.valueOf(bVarF)));
    }
}
