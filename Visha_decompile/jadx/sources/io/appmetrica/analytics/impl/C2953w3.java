package io.appmetrica.analytics.impl;

import android.util.Base64;
import androidx.annotation.NonNull;

public final class C2953w3 implements Qn {
    public final L8 a;

    public C2953w3() {
        this(new L8());
    }

    @Override
    @NonNull
    public final byte[] a(@NonNull R8 r8, @NonNull C2469ch c2469ch) {
        byte[] bArrDecode = new byte[0];
        String str = r8.b;
        if (str != null) {
            try {
                bArrDecode = Base64.decode(str, 0);
            } catch (Throwable unused) {
            }
        }
        L8 l8 = this.a;
        return ((K8) l8.a.a(r8.o)).a(bArrDecode);
    }

    public C2953w3(L8 l8) {
        this.a = l8;
    }
}
