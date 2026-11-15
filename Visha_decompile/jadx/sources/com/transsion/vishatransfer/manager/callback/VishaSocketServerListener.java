package com.transsion.vishatransfer.manager.callback;

import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.socket.TransferSocketServer;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;", "Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;", "Lcom/transsion/vishatransfer/data/Conversation;", "conversation", "Lzfb;", "onConversationMessage", "(Lcom/transsion/vishatransfer/data/Conversation;)V", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface VishaSocketServerListener extends TransferSocketServer.SocketServerListener {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void onConversationMessage(VishaSocketServerListener vishaSocketServerListener, Conversation conversation) {
            y45.j(conversation, "conversation");
        }
    }

    void onConversationMessage(Conversation conversation);
}
