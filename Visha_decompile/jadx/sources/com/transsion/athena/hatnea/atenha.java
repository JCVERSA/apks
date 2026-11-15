package com.transsion.athena.hatnea;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.tranplayer.MediaPlayer;
import defpackage.c4d;
import defpackage.e5d;
import defpackage.rbd;
import defpackage.y3d;

public class atenha extends anateh {
    private final com.transsion.athena.config.data.model.enatha c;
    private final y3d d;

    public atenha(@NonNull Handler handler, com.transsion.athena.config.data.model.enatha enathaVar, y3d y3dVar) {
        super(handler);
        this.c = enathaVar;
        this.d = y3dVar;
    }

    @Override
    public void a() throws Throwable {
        rbd rbdVarD = b.d(ehanat.i(), "", this.c.i());
        if (rbdVarD.a == -1 && anehat.a(this.c.b()) && ehanat.u() && !this.a.hasMessages(MediaPlayer.Event.VideoFPS)) {
            Message messageObtainMessage = this.a.obtainMessage(MediaPlayer.Event.VideoFPS);
            messageObtainMessage.arg1 = 1;
            this.a.sendMessageDelayed(messageObtainMessage, 300000L);
            return;
        }
        int i = rbdVarD.a;
        if (i == 0) {
            String str = (String) rbdVarD.b;
            c4d.g("<-- globalConfig:%s", str);
            e5d.o().i(str);
            this.c.b(System.currentTimeMillis() + this.c.c());
            this.a.postAtFrontOfQueue(new Runnable() {
                @Override
                public final void run() {
                    this.b.d();
                }
            });
        } else if (i != 1) {
            com.transsion.athena.config.data.model.enatha enathaVar = this.c;
            enathaVar.c(enathaVar.d() + 1);
        } else {
            c4d.g("<-- globalConfig:%s", "NOT_MODIFIED");
            this.c.b(System.currentTimeMillis() + this.c.c());
        }
        e5d.o().x();
    }

    @Override
    public String c() {
        return "Retrieve-Global-Config";
    }

    public void d() {
        y3d y3dVar = this.d;
        if (y3dVar != null) {
            y3dVar.a(0, false);
        }
    }
}
