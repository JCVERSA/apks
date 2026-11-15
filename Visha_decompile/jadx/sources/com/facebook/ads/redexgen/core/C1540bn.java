package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public final class C1540bn implements InterfaceC1234Sh {
    public static byte[] A04;
    public Context A00;
    public final InterfaceC1233Sg A02;
    public final AtomicBoolean A03 = new AtomicBoolean(false);
    public C1231Se A01 = A00();

    static {
        A03();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 81);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{113, 101, 122, 106, 102, 112, 97, 97, 124, 123, 114, 102, 106, 126, 112, 108};
    }

    public C1540bn(Context context, InterfaceC1233Sg interfaceC1233Sg) {
        this.A00 = context;
        this.A02 = interfaceC1233Sg;
    }

    private C1231Se A00() {
        return C1231Se.A00(AbstractC1307Ve.A00(this.A00).getString(A01(0, 16, 100), null));
    }

    private void A02() {
        this.A02.ABw(new C1597ci(this));
    }

    public final void A04(String[] strArr, Integer num, Integer num2) {
        C1231Se c1231Se = new C1231Se(strArr, num, num2);
        C1231Se newSettings = this.A01;
        if (c1231Se.equals(newSettings)) {
            return;
        }
        this.A01 = c1231Se;
        this.A03.set(true);
        SharedPreferences.Editor editorEdit = AbstractC1307Ve.A00(this.A00).edit();
        C1231Se newSettings2 = this.A01;
        editorEdit.putString(A01(0, 16, 100), newSettings2.A07()).apply();
    }

    @Override
    public final C1231Se A7c() {
        A02();
        return this.A01;
    }

    @Override
    public final boolean AAY() {
        A02();
        if (this.A01 == null) {
            return false;
        }
        Set<String> setA0a = U7.A0a(this.A00);
        String identifier = this.A01.A07();
        Iterator<String> it = setA0a.iterator();
        while (it.hasNext()) {
            if (identifier.contains(it.next())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean AJC() {
        A02();
        return this.A03.getAndSet(false);
    }
}
