package com.facebook.ads.redexgen.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Arrays;

public final class MY extends BroadcastReceiver {
    public static byte[] A04;
    public InterfaceC1947id A00;
    public MX A01;
    public C1635dL A02;
    public String A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 17);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{120, 66, 78, 76, 15, 71, 64, 66, 68, 67, 78, 78, 74, 15, 64, 69, 82, 15, 67, 64, 79, 79, 68, 83, 15, 66, 77, 72, 66, 74, 68, 69};
    }

    public MY(C1635dL c1635dL, String str, InterfaceC1947id interfaceC1947id, MX mx) {
        this.A02 = c1635dL;
        this.A03 = str;
        this.A01 = mx;
        this.A00 = interfaceC1947id;
    }

    public final void A02() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(A00(1, 31, 48) + A00(0, 1, 83) + this.A03);
        OO.A00(this.A02).A06(this, intentFilter);
    }

    public final void A03() {
        OO.A00(this.A02).A05(this);
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        String intentAction = A00(0, 1, 83);
        String[] parts = action.split(intentAction);
        String str = parts[0];
        if (str == null) {
            return;
        }
        String intentAction2 = A00(1, 31, 48);
        if (intentAction2.equals(str)) {
            this.A01.ACb(this.A00);
        }
    }
}
