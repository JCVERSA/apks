package defpackage;

import android.os.Handler;
import android.os.Message;

public final class y7h implements nkg {
    public Message a;

    public y7h(y8h y8hVar) {
    }

    public final y7h a(Message message, z9h z9hVar) {
        this.a = message;
        return this;
    }

    public final boolean b(Handler handler) {
        Message message = this.a;
        message.getClass();
        boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        this.a = null;
        z9h.h(this);
        return zSendMessageAtFrontOfQueue;
    }

    @Override
    public final void zza() {
        Message message = this.a;
        message.getClass();
        message.sendToTarget();
        this.a = null;
        z9h.h(this);
    }
}
