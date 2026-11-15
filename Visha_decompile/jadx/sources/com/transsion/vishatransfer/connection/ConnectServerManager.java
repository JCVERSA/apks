package com.transsion.vishatransfer.connection;

import android.util.Log;
import com.google.gson.Gson;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.socket.pkgdata.SocketEndData;
import com.transsion.socket.pkgdata.SocketStringData;
import com.transsion.vishatransfer.constants.Constants;
import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.manager.callback.VishaSocketServerListener;
import com.transsion.vishatransfer.socket.TransferMessage;
import com.transsion.vishatransfer.socket.TransferSocketServer;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000I\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\b\u0004*\u00014\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\f\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0012J\r\u0010\u0014\u001a\u00020\u0010¢\u0006\u0004\b\u0014\u0010\u0012J\r\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0003J\r\u0010\u0016\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0003J\r\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\u0003J\u0015\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\"\u0010\u001f\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\u0012\"\u0004\b\"\u0010#R\"\u0010$\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010 \u001a\u0004\b%\u0010\u0012\"\u0004\b&\u0010#R\u0016\u0010'\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010 R\u0018\u0010(\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\"\u0010*\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010\u000f\"\u0004\b-\u0010\bR\"\u0010.\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010+\u001a\u0004\b/\u0010\u000f\"\u0004\b0\u0010\bR\u0016\u00102\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00105\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106¨\u00067"}, d2 = {"Lcom/transsion/vishatransfer/connection/ConnectServerManager;", "", MethodDecl.initName, "()V", "", "retryTime", "Lzfb;", "releaseSocketServer", "(I)V", "checkServerSocket", "Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;", "socketClientListener", "setListener", "(Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;)V", "getTransferTotalNum", "()I", "", "getTransferTotalSize", "()J", "getRecentSpeedPerSecond", "getAverageSpeedPerSecond", "resetPercent", "release", "sendSocketEndData", "Lcom/transsion/vishatransfer/data/Conversation;", "conversation", "sendConversationToClient", "(Lcom/transsion/vishatransfer/data/Conversation;)V", "Lcom/transsion/vishatransfer/socket/TransferSocketServer;", "mSocketServer", "Lcom/transsion/vishatransfer/socket/TransferSocketServer;", "totalFileSize", "J", "getTotalFileSize", "setTotalFileSize", "(J)V", "receiveFileSize", "getReceiveFileSize", "setReceiveFileSize", "currentFileSize", "socketServerListenerCallback", "Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;", "fileNum", "I", "getFileNum", "setFileNum", "totalNum", "getTotalNum", "setTotalNum", "", "isReceiveFinished", "Z", "com/transsion/vishatransfer/connection/ConnectServerManager$socketServerListener$1", "socketServerListener", "Lcom/transsion/vishatransfer/connection/ConnectServerManager$socketServerListener$1;", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConnectServerManager {
    private static long currentFileSize;
    private static int fileNum;
    private static boolean isReceiveFinished;
    private static TransferSocketServer mSocketServer;
    private static long receiveFileSize;
    private static VishaSocketServerListener socketServerListenerCallback;
    private static long totalFileSize;
    private static int totalNum;
    public static final ConnectServerManager INSTANCE = new ConnectServerManager();
    private static final ConnectServerManager$socketServerListener$1 socketServerListener = new TransferSocketServer.SocketServerListener() {
        @Override
        public void onAccept() {
            VishaSocketServerListener vishaSocketServerListener = ConnectServerManager.socketServerListenerCallback;
            if (vishaSocketServerListener != null) {
                vishaSocketServerListener.onAccept();
            }
            Log.d("socket_debug", "ConnectServerManager_socketServerListener_onAccept");
        }

        @Override
        public void onCreateFail() {
            VishaSocketServerListener vishaSocketServerListener = ConnectServerManager.socketServerListenerCallback;
            if (vishaSocketServerListener != null) {
                vishaSocketServerListener.onCreateFail();
            }
            Log.d("socket_debug", "ConnectServerManager_socketServerListener_onCreateFail");
        }

        @Override
        public void onCreateSuccess() {
            VishaSocketServerListener vishaSocketServerListener = ConnectServerManager.socketServerListenerCallback;
            if (vishaSocketServerListener != null) {
                vishaSocketServerListener.onCreateSuccess();
            }
            Log.d("socket_debug", "ConnectServerManager_socketServerListener_onCreateSuccess");
        }

        @Override
        public void onDisconnected() {
            VishaSocketServerListener vishaSocketServerListener = ConnectServerManager.socketServerListenerCallback;
            if (vishaSocketServerListener != null) {
                vishaSocketServerListener.onDisconnected();
            }
            Log.d("socket_debug", "ConnectServerManager_socketServerListener_onDisconnected");
        }

        @Override
        public void onError(int code) {
            if (ConnectServerManager.isReceiveFinished) {
                return;
            }
            VishaSocketServerListener vishaSocketServerListener = ConnectServerManager.socketServerListenerCallback;
            if (vishaSocketServerListener != null) {
                vishaSocketServerListener.onError(code);
            }
            Log.d("socket_debug", "ConnectServerManager_socketServerListener_onError");
        }

        @Override
        public void onProgress(long position) {
            VishaSocketServerListener vishaSocketServerListener = ConnectServerManager.socketServerListenerCallback;
            if (vishaSocketServerListener != null) {
                vishaSocketServerListener.onProgress(position);
            }
            long j = position - ConnectServerManager.currentFileSize;
            ConnectServerManager connectServerManager = ConnectServerManager.INSTANCE;
            connectServerManager.setReceiveFileSize(connectServerManager.getReceiveFileSize() + j);
            Log.d("socket_debug", "ConnectServerManager_onProgress_" + connectServerManager.getReceiveFileSize() + " totalFileSize " + connectServerManager.getTotalFileSize() + " fileNum " + connectServerManager.getFileNum() + " totalNum " + connectServerManager.getTotalNum());
            ConnectServerManager.currentFileSize = position;
        }

        @Override
        public void onReceiveFinish() {
            VishaSocketServerListener vishaSocketServerListener = ConnectServerManager.socketServerListenerCallback;
            if (vishaSocketServerListener != null) {
                vishaSocketServerListener.onReceiveFinish();
            }
            ConnectServerManager.isReceiveFinished = true;
            Log.d("socket_debug", "ConnectServerManager_socketServerListener_onReceiveFinish");
        }

        @Override
        public void onReceived(int phase, int type, SocketData data) {
            if (phase == 10) {
                try {
                    Gson gson = new Gson();
                    y45.h(data, "null cannot be cast to non-null type com.transsion.socket.pkgdata.SocketStringData");
                    Conversation conversation = (Conversation) gson.fromJson(((SocketStringData) data).getValue(), Conversation.class);
                    if (conversation.getType() == 100012) {
                        ConnectServerManager connectServerManager = ConnectServerManager.INSTANCE;
                        connectServerManager.setTotalFileSize(connectServerManager.getTotalFileSize() + conversation.getTotalFileSize());
                        connectServerManager.setTotalNum(connectServerManager.getTotalNum() + conversation.getTotalNum());
                    } else {
                        VishaSocketServerListener vishaSocketServerListener = ConnectServerManager.socketServerListenerCallback;
                        if (vishaSocketServerListener != null) {
                            y45.g(conversation);
                            vishaSocketServerListener.onConversationMessage(conversation);
                        }
                    }
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            if (phase != 50) {
                return;
            }
            VishaSocketServerListener vishaSocketServerListener2 = ConnectServerManager.socketServerListenerCallback;
            if (vishaSocketServerListener2 != null) {
                vishaSocketServerListener2.onReceived(phase, type, data);
            }
            ConnectServerManager.currentFileSize = 0L;
            ConnectServerManager connectServerManager2 = ConnectServerManager.INSTANCE;
            connectServerManager2.setFileNum(connectServerManager2.getFileNum() + 1);
            VishaSocketServerListener vishaSocketServerListener3 = ConnectServerManager.socketServerListenerCallback;
            if (vishaSocketServerListener3 != null) {
                vishaSocketServerListener3.onProgress(ConnectServerManager.currentFileSize);
            }
            Log.d("socket_debug", "ConnectServerManager_onReceived_" + connectServerManager2.getReceiveFileSize() + " totalFileSize " + connectServerManager2.getTotalFileSize() + " fileNum " + connectServerManager2.getFileNum() + " totalNum " + connectServerManager2.getTotalNum());
            if (connectServerManager2.getFileNum() == connectServerManager2.getTotalNum()) {
                connectServerManager2.sendSocketEndData();
                connectServerManager2.resetPercent();
            }
        }
    };

    private ConnectServerManager() {
    }

    private final void releaseSocketServer(int retryTime) {
        try {
            TransferSocketServer transferSocketServer = mSocketServer;
            y45.g(transferSocketServer);
            transferSocketServer.release();
            Thread.sleep(((long) retryTime) * 500);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void checkServerSocket() {
        TransferSocketServer transferSocketServer = mSocketServer;
        if (transferSocketServer == null || (transferSocketServer != null && transferSocketServer.isQuit())) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (i >= 3) {
                    break;
                }
                TransferSocketServer transferSocketServer2 = TransferSocketServer.getInstance(Constants.PORT);
                mSocketServer = transferSocketServer2;
                if (transferSocketServer2 != null) {
                    transferSocketServer2.resetCurrentTransferType();
                }
                TransferSocketServer transferSocketServer3 = mSocketServer;
                if (transferSocketServer3 != null) {
                    transferSocketServer3.setSocketServerListener(socketServerListener);
                }
                TransferSocketServer transferSocketServer4 = mSocketServer;
                if (transferSocketServer4 != null && transferSocketServer4.openSocket()) {
                    break;
                }
                releaseSocketServer(i2);
                i = i2;
            }
        }
        isReceiveFinished = false;
    }

    public final long getAverageSpeedPerSecond() {
        TransferSocketServer transferSocketServer = mSocketServer;
        if (transferSocketServer != null) {
            return transferSocketServer.getAverageSpeedPerSecond();
        }
        return 0L;
    }

    public final int getFileNum() {
        return fileNum;
    }

    public final long getReceiveFileSize() {
        return receiveFileSize;
    }

    public final long getRecentSpeedPerSecond() {
        TransferSocketServer transferSocketServer = mSocketServer;
        if (transferSocketServer != null) {
            return transferSocketServer.getRecentSpeedPerSecond();
        }
        return 0L;
    }

    public final long getTotalFileSize() {
        return totalFileSize;
    }

    public final int getTotalNum() {
        return totalNum;
    }

    public final int getTransferTotalNum() {
        return totalNum;
    }

    public final long getTransferTotalSize() {
        return totalFileSize;
    }

    public final void release() {
        try {
            TransferSocketServer transferSocketServer = mSocketServer;
            if (transferSocketServer != null) {
                transferSocketServer.release();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void resetPercent() {
        totalFileSize = 0L;
        receiveFileSize = 0L;
        currentFileSize = 0L;
        fileNum = 0;
        totalNum = 0;
    }

    public final void sendConversationToClient(Conversation conversation) {
        y45.j(conversation, "conversation");
        TransferMessage transferMessage = new TransferMessage() {
            @Override
            public void beforeSend() {
            }

            @Override
            public void complete() {
            }

            @Override
            public void progress(long position) {
            }
        };
        transferMessage.setData(new SocketStringData(new Gson().toJson(conversation)));
        transferMessage.setType(2);
        transferMessage.setPhase(10);
        try {
            TransferSocketServer transferSocketServer = mSocketServer;
            if (transferSocketServer != null) {
                transferSocketServer.sendData(transferMessage);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void sendSocketEndData() {
        TransferMessage transferMessage = new TransferMessage() {
            @Override
            public void beforeSend() {
            }

            @Override
            public void complete() {
            }

            @Override
            public void progress(long position) {
            }
        };
        transferMessage.setData(new SocketEndData());
        transferMessage.setType(2);
        transferMessage.setPhase(10);
        try {
            TransferSocketServer transferSocketServer = mSocketServer;
            if (transferSocketServer != null) {
                transferSocketServer.sendData(transferMessage);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void setFileNum(int i) {
        fileNum = i;
    }

    public final void setListener(VishaSocketServerListener socketClientListener) {
        socketServerListenerCallback = socketClientListener;
    }

    public final void setReceiveFileSize(long j) {
        receiveFileSize = j;
    }

    public final void setTotalFileSize(long j) {
        totalFileSize = j;
    }

    public final void setTotalNum(int i) {
        totalNum = i;
    }
}
