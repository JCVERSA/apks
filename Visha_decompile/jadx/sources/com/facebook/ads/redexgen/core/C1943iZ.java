package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;

public class C1943iZ implements InterfaceC1535bi {
    public final C7L A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override
    public final void AAe() {
        String strA00 = this.A00.A03.A23().A00();
        if (TextUtils.isEmpty(strA00)) {
            return;
        }
        WN.A0O(new WN(), this.A00.A04, WQ.A00(strA00), this.A00.A7G());
    }

    public C1943iZ(C7L c7l) {
        this.A00 = c7l;
    }

    @Override
    public final void AD8(C5G c5g) {
        new Handler(Looper.getMainLooper()).postDelayed(new C1945ib(this, c5g), 1L);
    }

    @Override
    public final void ADO() {
    }

    @Override
    public final void AFS(View view, MotionEvent motionEvent) {
    }
}
