package com.transsion.athena.hatnea;

import android.os.Handler;
import android.os.Message;

public class atnhae extends anateh {

    private static final String[] f41648c = {"https://time1.google.com", "https://time.cloudflare.com", "https://www.pool.ntp.org"};

    private int f41649d;

    public atnhae(Handler handler) {
        super(handler);
        this.f41649d = 0;
    }

    @Override
    protected void a() throws Throwable {
        Message messageObtainMessage = this.f41636a.obtainMessage(503);
        messageObtainMessage.obj = 0L;
        while (true) {
            int i10 = this.f41649d;
            if (i10 >= 3) {
                break;
            }
            ehanat<Long> ehanatVarA = anehat.a(f41648c[i10]);
            if (ehanatVarA.f41651a == 0) {
                messageObtainMessage.obj = ehanatVarA.f41652b;
                break;
            }
            this.f41649d++;
        }
        this.f41636a.sendMessageAtFrontOfQueue(messageObtainMessage);
    }

    @Override
    protected String c() {
        return "Retrieve-Time";
    }
}
