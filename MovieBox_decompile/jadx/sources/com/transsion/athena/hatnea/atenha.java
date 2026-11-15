package com.transsion.athena.hatnea;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;

public class atenha extends anateh {

    private final com.transsion.athena.config.data.model.enatha f41639c;

    private final com.transsion.athena.aethna.aethna f41640d;

    public atenha(@NonNull Handler handler, com.transsion.athena.config.data.model.enatha enathaVar, com.transsion.athena.aethna.aethna aethnaVar) {
        super(handler);
        this.f41639c = enathaVar;
        this.f41640d = aethnaVar;
    }

    @Override
    protected void a() throws Throwable {
        ehanat<String> ehanatVarA = anehat.a(com.transsion.athena.config.data.model.ehanat.i(), "", this.f41639c.i());
        if (ehanatVarA.f41651a == -1 && com.transsion.athena.config.data.model.anehat.a(this.f41639c.b()) && com.transsion.athena.config.data.model.ehanat.u() && !this.f41636a.hasMessages(298)) {
            Message messageObtainMessage = this.f41636a.obtainMessage(298);
            messageObtainMessage.arg1 = 1;
            this.f41636a.sendMessageDelayed(messageObtainMessage, 300000L);
            return;
        }
        int i10 = ehanatVarA.f41651a;
        if (i10 == 0) {
            String str = ehanatVarA.f41652b;
            com.transsion.athena.taaneh.aethna.c("<-- globalConfig:%s", str);
            com.transsion.athena.aethna.athena.c().a(str);
            this.f41639c.b(System.currentTimeMillis() + this.f41639c.c());
            this.f41636a.postAtFrontOfQueue(new Runnable() {
                @Override
                public final void run() {
                    this.f41627a.d();
                }
            });
        } else if (i10 != 1) {
            com.transsion.athena.config.data.model.enatha enathaVar = this.f41639c;
            enathaVar.c(enathaVar.d() + 1);
        } else {
            com.transsion.athena.taaneh.aethna.c("<-- globalConfig:%s", "NOT_MODIFIED");
            this.f41639c.b(System.currentTimeMillis() + this.f41639c.c());
        }
        com.transsion.athena.aethna.athena.c().l();
    }

    @Override
    protected String c() {
        return "Retrieve-Global-Config";
    }

    public void d() {
        com.transsion.athena.aethna.aethna aethnaVar = this.f41640d;
        if (aethnaVar != null) {
            aethnaVar.a(0, false);
        }
    }
}
