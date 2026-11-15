package com.transsion.vishatransfer.manager;

import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.socket.pkgdata.SocketFileData;
import com.transsion.vishatransfer.connection.ConnectServerManager;
import com.transsion.vishatransfer.data.ConnectedState;
import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.data.FileData;
import com.transsion.vishatransfer.manager.WifiTransferManager$socketServerListener$1;
import com.transsion.vishatransfer.manager.callback.AccessReceiverActionListener;
import com.transsion.vishatransfer.manager.callback.VishaSocketServerListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\u0004J)\u0010\u0010\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001a\u0010\u0004¨\u0006\u001b"}, d2 = {"com/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1", "Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;", "Lzfb;", "onCreateSuccess", "()V", "onCreateFail", "onAccept", "", TrackingKey.CODE, "onError", "(I)V", "onDisconnected", TypedValues.CycleType.S_WAVE_PHASE, "type", "Lcom/transsion/socket/pkgdata/SocketData;", "data", "onReceived", "(IILcom/transsion/socket/pkgdata/SocketData;)V", "", "position", "onProgress", "(J)V", "Lcom/transsion/vishatransfer/data/Conversation;", "conversation", "onConversationMessage", "(Lcom/transsion/vishatransfer/data/Conversation;)V", "onReceiveFinish", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WifiTransferManager$socketServerListener$1 implements VishaSocketServerListener {
    final WifiTransferManager this$0;

    public WifiTransferManager$socketServerListener$1(WifiTransferManager wifiTransferManager) {
        this.this$0 = wifiTransferManager;
    }

    public static final zfb onAccept$lambda$5(WifiTransferManager wifiTransferManager) {
        ConnectedState connectedState = new ConnectedState(1, "accept", wifiTransferManager.getMUserType());
        List<AccessReceiverActionListener> list = wifiTransferManager.mListeners;
        if (list != null) {
            for (AccessReceiverActionListener accessReceiverActionListener : list) {
                if (accessReceiverActionListener != null) {
                    accessReceiverActionListener.onTransferState(connectedState);
                }
            }
        }
        wifiTransferManager.setConnectState(connectedState);
        return zfb.a;
    }

    public static final zfb onConversationMessage$lambda$15(WifiTransferManager wifiTransferManager, Conversation conversation) {
        List<AccessReceiverActionListener> list = wifiTransferManager.mListeners;
        if (list != null) {
            for (AccessReceiverActionListener accessReceiverActionListener : list) {
                if (accessReceiverActionListener != null) {
                    accessReceiverActionListener.onConversationMessage(conversation);
                }
            }
        }
        return zfb.a;
    }

    public static final zfb onCreateFail$lambda$3(WifiTransferManager wifiTransferManager) {
        ConnectedState connectedState = new ConnectedState(3, "createFail", wifiTransferManager.getMUserType());
        List<AccessReceiverActionListener> list = wifiTransferManager.mListeners;
        if (list != null) {
            for (AccessReceiverActionListener accessReceiverActionListener : list) {
                if (accessReceiverActionListener != null) {
                    accessReceiverActionListener.onTransferState(connectedState);
                }
            }
        }
        wifiTransferManager.setConnectState(connectedState);
        return zfb.a;
    }

    public static final zfb onCreateSuccess$lambda$1(WifiTransferManager wifiTransferManager) {
        ConnectedState connectedState = new ConnectedState(0, "createSuccess", wifiTransferManager.getMUserType());
        List<AccessReceiverActionListener> list = wifiTransferManager.mListeners;
        if (list != null) {
            for (AccessReceiverActionListener accessReceiverActionListener : list) {
                if (accessReceiverActionListener != null) {
                    accessReceiverActionListener.onTransferState(connectedState);
                }
            }
        }
        wifiTransferManager.setConnectState(connectedState);
        return zfb.a;
    }

    public static final zfb onDisconnected$lambda$9(WifiTransferManager wifiTransferManager) {
        ConnectedState connectedState = new ConnectedState(2, "disConnected", wifiTransferManager.getMUserType());
        List<AccessReceiverActionListener> list = wifiTransferManager.mListeners;
        if (list != null) {
            for (AccessReceiverActionListener accessReceiverActionListener : list) {
                if (accessReceiverActionListener != null) {
                    accessReceiverActionListener.onTransferState(connectedState);
                }
            }
        }
        wifiTransferManager.setConnectState(connectedState);
        return zfb.a;
    }

    public static final zfb onError$lambda$7(WifiTransferManager wifiTransferManager) {
        ConnectedState connectedState = new ConnectedState(3, "error", wifiTransferManager.getMUserType());
        List<AccessReceiverActionListener> list = wifiTransferManager.mListeners;
        if (list != null) {
            for (AccessReceiverActionListener accessReceiverActionListener : list) {
                if (accessReceiverActionListener != null) {
                    accessReceiverActionListener.onTransferState(connectedState);
                }
            }
        }
        wifiTransferManager.setConnectState(connectedState);
        return zfb.a;
    }

    public static final zfb onProgress$lambda$13(WifiTransferManager wifiTransferManager) {
        ConnectedState connectedState = new ConnectedState(7, "onTransfer", wifiTransferManager.getMUserType());
        if (!wifiTransferManager.mIsStartReceive) {
            wifiTransferManager.mIsStartReceive = true;
            connectedState.setState(8);
        }
        List<AccessReceiverActionListener> list = wifiTransferManager.mListeners;
        if (list != null) {
            for (AccessReceiverActionListener accessReceiverActionListener : list) {
                if (accessReceiverActionListener != null) {
                    accessReceiverActionListener.onTransferState(connectedState);
                }
                if (accessReceiverActionListener != null) {
                    ConnectServerManager connectServerManager = ConnectServerManager.INSTANCE;
                    accessReceiverActionListener.onProgress(connectServerManager.getTotalFileSize(), connectServerManager.getReceiveFileSize(), connectServerManager.getFileNum(), connectServerManager.getTotalNum());
                }
            }
        }
        wifiTransferManager.setConnectState(connectedState);
        return zfb.a;
    }

    public static final zfb onReceiveFinish$lambda$17(WifiTransferManager wifiTransferManager) {
        ConnectedState connectedState = new ConnectedState(6, "receiveFinish", wifiTransferManager.getMUserType());
        List<AccessReceiverActionListener> list = wifiTransferManager.mListeners;
        if (list != null) {
            for (AccessReceiverActionListener accessReceiverActionListener : list) {
                if (accessReceiverActionListener != null) {
                    accessReceiverActionListener.onTransferState(connectedState);
                }
            }
        }
        wifiTransferManager.setConnectState(connectedState);
        return zfb.a;
    }

    public static final zfb onReceived$lambda$11(SocketData socketData, WifiTransferManager wifiTransferManager) {
        try {
            y45.h(socketData, "null cannot be cast to non-null type com.transsion.socket.pkgdata.SocketFileData");
            SocketFileData socketFileData = (SocketFileData) socketData;
            String str = socketFileData.mSendFile;
            y45.i(str, "mSendFile");
            String str2 = socketFileData.mReceiveDir;
            y45.i(str2, "mReceiveDir");
            FileData fileData = new FileData(str, str2, false, false, socketFileData.isReceiveSuccess(), 12, null);
            List<AccessReceiverActionListener> list = wifiTransferManager.mListeners;
            if (list != null) {
                for (AccessReceiverActionListener accessReceiverActionListener : list) {
                    if (accessReceiverActionListener != null) {
                        accessReceiverActionListener.onFileTranslated(fileData, wifiTransferManager.getMUserType());
                    }
                }
            }
        } catch (Exception unused) {
        }
        return zfb.a;
    }

    @Override
    public void onAccept() {
        Log.d("socket_debug", "WifiTransferManager_socketServerListener_onAccept");
        final WifiTransferManager wifiTransferManager = this.this$0;
        wifiTransferManager.doOnMainThread(new c74() {
            @Override
            public final Object invoke() {
                return WifiTransferManager$socketServerListener$1.onAccept$lambda$5(wifiTransferManager);
            }
        });
    }

    @Override
    public void onConversationMessage(final Conversation conversation) {
        y45.j(conversation, "conversation");
        Log.d("socket_debug", "WifiTransferManager_socketServerListener_onConversationMessage");
        final WifiTransferManager wifiTransferManager = this.this$0;
        wifiTransferManager.doOnMainThread(new c74() {
            @Override
            public final Object invoke() {
                return WifiTransferManager$socketServerListener$1.onConversationMessage$lambda$15(wifiTransferManager, conversation);
            }
        });
    }

    @Override
    public void onCreateFail() {
        Log.d("socket_debug", "WifiTransferManager_socketServerListener_onCreateFail");
        final WifiTransferManager wifiTransferManager = this.this$0;
        wifiTransferManager.doOnMainThread(new c74() {
            @Override
            public final Object invoke() {
                return WifiTransferManager$socketServerListener$1.onCreateFail$lambda$3(wifiTransferManager);
            }
        });
    }

    @Override
    public void onCreateSuccess() {
        Log.d("socket_debug", "WifiTransferManager_socketServerListener_onCreateSuccess");
        final WifiTransferManager wifiTransferManager = this.this$0;
        wifiTransferManager.doOnMainThread(new c74() {
            @Override
            public final Object invoke() {
                return WifiTransferManager$socketServerListener$1.onCreateSuccess$lambda$1(wifiTransferManager);
            }
        });
    }

    @Override
    public void onDisconnected() {
        Log.d("socket_debug", "WifiTransferManager_socketServerListener_onDisconnected");
        final WifiTransferManager wifiTransferManager = this.this$0;
        wifiTransferManager.doOnMainThread(new c74() {
            @Override
            public final Object invoke() {
                return WifiTransferManager$socketServerListener$1.onDisconnected$lambda$9(wifiTransferManager);
            }
        });
    }

    @Override
    public void onError(int code) {
        Log.d("socket_debug", "WifiTransferManager_socketServerListener_onError");
        final WifiTransferManager wifiTransferManager = this.this$0;
        wifiTransferManager.doOnMainThread(new c74() {
            @Override
            public final Object invoke() {
                return WifiTransferManager$socketServerListener$1.onError$lambda$7(wifiTransferManager);
            }
        });
    }

    @Override
    public void onProgress(long position) {
        final WifiTransferManager wifiTransferManager = this.this$0;
        wifiTransferManager.doOnMainThread(new c74() {
            @Override
            public final Object invoke() {
                return WifiTransferManager$socketServerListener$1.onProgress$lambda$13(wifiTransferManager);
            }
        });
    }

    @Override
    public void onReceiveFinish() {
        Log.d("socket_debug", "WifiTransferManager_socketServerListener_onReceiveFinish");
        final WifiTransferManager wifiTransferManager = this.this$0;
        wifiTransferManager.doOnMainThread(new c74() {
            @Override
            public final Object invoke() {
                return WifiTransferManager$socketServerListener$1.onReceiveFinish$lambda$17(wifiTransferManager);
            }
        });
    }

    @Override
    public void onReceived(int phase, int type, final SocketData data) {
        Log.d("socket_debug", "WifiTransferManager_socketServerListener_onReceived");
        final WifiTransferManager wifiTransferManager = this.this$0;
        wifiTransferManager.doOnMainThread(new c74() {
            @Override
            public final Object invoke() {
                return WifiTransferManager$socketServerListener$1.onReceived$lambda$11(data, wifiTransferManager);
            }
        });
    }
}
