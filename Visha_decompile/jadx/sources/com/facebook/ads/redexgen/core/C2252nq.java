package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Message;

public final class C2252nq implements InterfaceC06183u {
    public Message A00;
    public C2251np A01;

    public C2252nq() {
    }

    private void A00() {
        this.A00 = null;
        this.A01 = null;
        C2251np.A01(this);
    }

    public final C2252nq A01(Message message, C2251np c2251np) {
        this.A00 = message;
        this.A01 = c2251np;
        return this;
    }

    public final void A02() {
        ((Message) C3M.A01(this.A00)).sendToTarget();
        A00();
    }

    public final boolean A03(Handler handler) {
        boolean success = handler.sendMessageAtFrontOfQueue((Message) C3M.A01(this.A00));
        A00();
        return success;
    }
}
