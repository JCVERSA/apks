package com.pgl.ssdk;

import android.content.Context;

public class l0 implements Runnable {

    private Context f39347a;

    private int f39348b;

    private Object[] f39349c;

    public l0(Context context, int i10, Object[] objArr) {
        this.f39347a = context;
        this.f39348b = i10;
        this.f39349c = objArr;
    }

    @Override
    public void run() {
        try {
            if (this.f39348b == 222) {
                h0.a(this.f39347a).a();
            }
            byte[] bArr = (byte[]) com.pgl.ssdk.ces.a.meta(this.f39348b, this.f39347a, this.f39349c);
            if (bArr == null || bArr.length <= 0) {
                return;
            }
            new m0(this.f39347a, this.f39348b).a(1, 2, bArr);
        } catch (Throwable unused) {
        }
    }
}
