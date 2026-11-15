package com.transsion.athena.hatnea;

import android.os.Handler;
import android.os.Message;
import defpackage.rbd;

public class atnhae extends anateh {
    private static final String[] c = {"https://time1.google.com", "https://time.cloudflare.com", "https://www.pool.ntp.org"};
    private int d;

    public atnhae(Handler handler) {
        super(handler);
        this.d = 0;
    }

    @Override
    public void a() throws Throwable {
        Message messageObtainMessage = this.a.obtainMessage(503);
        messageObtainMessage.obj = 0L;
        while (true) {
            int i = this.d;
            if (i >= 3) {
                break;
            }
            rbd rbdVarC = b.c(c[i]);
            if (rbdVarC.a == 0) {
                messageObtainMessage.obj = rbdVarC.b;
                break;
            }
            this.d++;
        }
        this.a.sendMessageAtFrontOfQueue(messageObtainMessage);
    }

    @Override
    public String c() {
        return "Retrieve-Time";
    }
}
