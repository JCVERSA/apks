package com.transsion.vishatransfer.connection;

import android.util.Log;
import com.google.gson.Gson;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.letswitch.service.api.FileInformation;
import com.transsion.letswitch.service.api.LetSwitchServiceProxy;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.socket.pkgdata.SocketFileData;
import com.transsion.socket.pkgdata.SocketStringData;
import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.data.FileData;
import com.transsion.vishatransfer.manager.callback.VishaSocketClientListener;
import com.transsion.vishatransfer.socket.TransferMessage;
import com.transsion.vishatransfer.socket.TransferSocketClient;
import defpackage.cl0;
import defpackage.el0;
import defpackage.hk1;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.v6a;
import defpackage.w74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J7\u0010\u0015\u001a\u00020\b2(\u0010\u0014\u001a$\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\b0\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\u0003J\u0015\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u001b\u0010\u001f\u001a\u00020\b2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\b¢\u0006\u0004\b!\u0010\u0003J\r\u0010\"\u001a\u00020\u0006¢\u0006\u0004\b\"\u0010#J\r\u0010$\u001a\u00020\u0004¢\u0006\u0004\b$\u0010%J\r\u0010&\u001a\u00020\u0004¢\u0006\u0004\b&\u0010%J\r\u0010'\u001a\u00020\u0004¢\u0006\u0004\b'\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\"\u0010+\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010%\"\u0004\b.\u0010/R\"\u00100\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010,\u001a\u0004\b1\u0010%\"\u0004\b2\u0010/R\u0016\u00103\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010,R\u0018\u00104\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u00106\u001a\u0004\b7\u0010#\"\u0004\b8\u00109R\"\u0010:\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u00106\u001a\u0004\b;\u0010#\"\u0004\b<\u00109R\u0014\u0010=\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b=\u00106R\u0014\u0010>\u001a\u00020\u000f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010A\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u0014\u0010D\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010G\u001a\u00020F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010H¨\u0006I"}, d2 = {"Lcom/transsion/vishatransfer/connection/ConnectClientManager;", "", MethodDecl.initName, "()V", "", "fileSize", "", "fileNum", "Lzfb;", "setTotalSize", "(JI)V", "Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;", "socketClientListener", "setListener", "(Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;)V", "", "ipAddress", "startSocketClient", "(Ljava/lang/String;)V", "Lkotlin/Function4;", "callback", "getTransferInfo", "(Lw74;)V", "resetPercent", "Lcom/transsion/vishatransfer/data/Conversation;", "conversation", "sendConversationToServer", "(Lcom/transsion/vishatransfer/data/Conversation;)V", "", "Lcom/transsion/vishatransfer/data/FileData;", "fileDataList", "sendFileDataToServer", "(Ljava/util/List;)V", "release", "getTransferTotalNum", "()I", "getTransferTotalSize", "()J", "getRecentSpeedPerSecond", "getAverageSpeedPerSecond", "Lcom/transsion/vishatransfer/socket/TransferSocketClient;", "socketClient", "Lcom/transsion/vishatransfer/socket/TransferSocketClient;", "totalFileSize", "J", "getTotalFileSize", "setTotalFileSize", "(J)V", "sendFileSize", "getSendFileSize", "setSendFileSize", "currentFileSize", "socketClientListenerCallback", "Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;", "I", "getFileNum", "setFileNum", "(I)V", "totalNum", "getTotalNum", "setTotalNum", "CONVERSATION_FOR_TRANSFER_FILE_INFO", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "Lhk1;", "coroutineExceptionHandler", "Lhk1;", "Lnk1;", "coroutineScope", "Lnk1;", "", "isReceiveFinished", "Z", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConnectClientManager {
    public static final int CONVERSATION_FOR_TRANSFER_FILE_INFO = 100012;
    public static final ConnectClientManager INSTANCE = new ConnectClientManager();
    private static final String TAG = "ConnectClientManager";
    private static final hk1 coroutineExceptionHandler;
    private static final nk1 coroutineScope;
    private static long currentFileSize;
    private static int fileNum;
    private static boolean isReceiveFinished;
    private static long sendFileSize;
    private static TransferSocketClient socketClient;
    private static VishaSocketClientListener socketClientListenerCallback;
    private static long totalFileSize;
    private static int totalNum;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.vishatransfer.connection.ConnectClientManager$sendFileDataToServer$1", f = "ConnectClientManager.kt", l = {134}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final List<FileData> $fileDataList;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.vishatransfer.connection.ConnectClientManager$sendFileDataToServer$1$2", f = "ConnectClientManager.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass2 extends SuspendLambda implements s74 {
            final List<FileData> $fileDataList;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(List<FileData> list, wh1<? super AnonymousClass2> wh1Var) {
                super(2, wh1Var);
                this.$fileDataList = list;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass2(this.$fileDataList, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                for (FileData fileData : this.$fileDataList) {
                    final SocketFileData socketFileData = new SocketFileData();
                    socketFileData.setSendFile(fileData.getPath());
                    socketFileData.setCoverOldFile(fileData.isCover());
                    socketFileData.setReceiveFile(fileData.getReceivePath());
                    TransferMessage transferMessage = new TransferMessage() {
                        @Override
                        public void beforeSend() {
                            ConnectClientManager.currentFileSize = 0L;
                        }

                        @Override
                        public void complete() {
                            VishaSocketClientListener vishaSocketClientListener = ConnectClientManager.socketClientListenerCallback;
                            if (vishaSocketClientListener != null) {
                                vishaSocketClientListener.onReceived(getPhase(), getType(), socketFileData);
                            }
                            ConnectClientManager.currentFileSize = 0L;
                            ConnectClientManager connectClientManager = ConnectClientManager.INSTANCE;
                            connectClientManager.setFileNum(connectClientManager.getFileNum() + 1);
                            VishaSocketClientListener vishaSocketClientListener2 = ConnectClientManager.socketClientListenerCallback;
                            if (vishaSocketClientListener2 != null) {
                                vishaSocketClientListener2.onProgress(ConnectClientManager.currentFileSize);
                            }
                            Log.d("socket_debug", "ConnectClientManager_sendFileDataToServer_complete sendFileSize " + connectClientManager.getSendFileSize() + " totalFileSize " + connectClientManager.getTotalFileSize() + " fileNum " + connectClientManager.getFileNum() + " totalNum" + connectClientManager.getTotalNum());
                            if (connectClientManager.getFileNum() == connectClientManager.getTotalNum()) {
                                connectClientManager.resetPercent();
                            }
                        }

                        @Override
                        public void progress(long position) {
                            long j = position - ConnectClientManager.currentFileSize;
                            ConnectClientManager connectClientManager = ConnectClientManager.INSTANCE;
                            connectClientManager.setSendFileSize(connectClientManager.getSendFileSize() + j);
                            ConnectClientManager.currentFileSize = position;
                            VishaSocketClientListener vishaSocketClientListener = ConnectClientManager.socketClientListenerCallback;
                            if (vishaSocketClientListener != null) {
                                vishaSocketClientListener.onProgress(position);
                            }
                            Log.d("socket_debug", "ConnectClientManager_sendFileDataToServer_progress sendFileSize " + connectClientManager.getSendFileSize() + " totalFileSize " + connectClientManager.getTotalFileSize() + " fileNum " + connectClientManager.getFileNum() + " totalNum" + connectClientManager.getTotalNum());
                        }
                    };
                    transferMessage.setData(socketFileData);
                    transferMessage.setType(3);
                    transferMessage.setPhase(50);
                    transferMessage.setIsListenProgress(true);
                    try {
                        TransferSocketClient transferSocketClient = ConnectClientManager.socketClient;
                        if (transferSocketClient != null) {
                            transferSocketClient.sendData(transferMessage);
                        }
                    } catch (Exception unused) {
                    }
                }
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(List<FileData> list, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$fileDataList = list;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.$fileDataList, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                Ref$IntRef ref$IntRef = new Ref$IntRef();
                for (FileData fileData : this.$fileDataList) {
                    ref$IntRef.element++;
                    FileInformation fileInfo = LetSwitchServiceProxy.getFileOperation().getFileInfo(fileData.getPath());
                    if (fileInfo != null) {
                        ConnectClientManager connectClientManager = ConnectClientManager.INSTANCE;
                        connectClientManager.setTotalFileSize(connectClientManager.getTotalFileSize() + fileInfo.getLength());
                    }
                }
                ConnectClientManager connectClientManager2 = ConnectClientManager.INSTANCE;
                connectClientManager2.setTotalNum(connectClientManager2.getTotalNum() + ref$IntRef.element);
                connectClientManager2.setTotalSize(connectClientManager2.getTotalFileSize(), ref$IntRef.element);
                rx5 rx5VarC = mc2.c();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$fileDataList, null);
                this.label = 1;
                if (cl0.g(rx5VarC, anonymousClass2, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    static {
        ConnectClientManager$special$$inlined$CoroutineExceptionHandler$1 connectClientManager$special$$inlined$CoroutineExceptionHandler$1 = new ConnectClientManager$special$$inlined$CoroutineExceptionHandler$1(hk1.w1);
        coroutineExceptionHandler = connectClientManager$special$$inlined$CoroutineExceptionHandler$1;
        coroutineScope = d.a(mc2.a().plus(v6a.b(null, 1, null)).plus(connectClientManager$special$$inlined$CoroutineExceptionHandler$1));
    }

    private ConnectClientManager() {
    }

    public final void setTotalSize(long fileSize, int fileNum2) {
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
        transferMessage.setData(new SocketStringData(new Gson().toJson(new Conversation(100012, fileSize, false, fileNum2, totalNum, null, 36, null))));
        transferMessage.setType(2);
        transferMessage.setPhase(10);
        try {
            TransferSocketClient transferSocketClient = socketClient;
            if (transferSocketClient != null) {
                transferSocketClient.sendData(transferMessage);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final long getAverageSpeedPerSecond() {
        TransferSocketClient transferSocketClient = socketClient;
        if (transferSocketClient != null) {
            return transferSocketClient.getAverageSpeedPerSecond();
        }
        return 0L;
    }

    public final int getFileNum() {
        return fileNum;
    }

    public final long getRecentSpeedPerSecond() {
        TransferSocketClient transferSocketClient = socketClient;
        if (transferSocketClient != null) {
            return transferSocketClient.getRecentSpeedPerSecond();
        }
        return 0L;
    }

    public final long getSendFileSize() {
        return sendFileSize;
    }

    public final long getTotalFileSize() {
        return totalFileSize;
    }

    public final int getTotalNum() {
        return totalNum;
    }

    public final void getTransferInfo(w74 callback) {
        y45.j(callback, "callback");
        if (socketClient != null) {
            Integer numValueOf = Integer.valueOf(totalNum);
            Long lValueOf = Long.valueOf(totalFileSize);
            TransferSocketClient transferSocketClient = socketClient;
            Long lValueOf2 = transferSocketClient != null ? Long.valueOf(transferSocketClient.getRecentSpeedPerSecond()) : null;
            TransferSocketClient transferSocketClient2 = socketClient;
            callback.invoke(numValueOf, lValueOf, lValueOf2, transferSocketClient2 != null ? Long.valueOf(transferSocketClient2.getAverageSpeedPerSecond()) : null);
        }
    }

    public final int getTransferTotalNum() {
        return totalNum;
    }

    public final long getTransferTotalSize() {
        return totalFileSize;
    }

    public final void release() {
        try {
            TransferSocketClient transferSocketClient = socketClient;
            if (transferSocketClient != null) {
                transferSocketClient.release();
            }
        } catch (Exception unused) {
        }
    }

    public final void resetPercent() {
        totalFileSize = 0L;
        sendFileSize = 0L;
        currentFileSize = 0L;
        fileNum = 0;
        totalNum = 0;
    }

    public final void sendConversationToServer(Conversation conversation) {
        y45.j(conversation, "conversation");
        TransferMessage transferMessage = new TransferMessage() {
            @Override
            public void beforeSend() {
                Log.e(ConnectClientManager.TAG, "sendConversationToServer beforeSend");
            }

            @Override
            public void complete() {
                Log.e(ConnectClientManager.TAG, "sendConversationToServer complete");
            }

            @Override
            public void progress(long position) {
            }
        };
        transferMessage.setData(new SocketStringData(new Gson().toJson(conversation)));
        transferMessage.setType(2);
        transferMessage.setPhase(10);
        try {
            TransferSocketClient transferSocketClient = socketClient;
            if (transferSocketClient != null) {
                transferSocketClient.sendData(transferMessage);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void sendFileDataToServer(List<FileData> fileDataList) {
        y45.j(fileDataList, "fileDataList");
        el0.d(coroutineScope, mc2.b(), null, new AnonymousClass1(fileDataList, null), 2, null);
    }

    public final void setFileNum(int i) {
        fileNum = i;
    }

    public final void setListener(VishaSocketClientListener socketClientListener) {
        socketClientListenerCallback = socketClientListener;
    }

    public final void setSendFileSize(long j) {
        sendFileSize = j;
    }

    public final void setTotalFileSize(long j) {
        totalFileSize = j;
    }

    public final void setTotalNum(int i) {
        totalNum = i;
    }

    public final void startSocketClient(final String ipAddress) {
        y45.j(ipAddress, "ipAddress");
        TransferSocketClient transferSocketClient = TransferSocketClient.getInstance();
        socketClient = transferSocketClient;
        if (transferSocketClient != null) {
            transferSocketClient.resetCurrentTransferType();
        }
        TransferSocketClient transferSocketClient2 = socketClient;
        if (transferSocketClient2 != null) {
            transferSocketClient2.setSocketClientListener(new TransferSocketClient.SocketClientListener() {
                @Override
                public void onCreateSuccess() {
                    VishaSocketClientListener vishaSocketClientListener = ConnectClientManager.socketClientListenerCallback;
                    if (vishaSocketClientListener != null) {
                        vishaSocketClientListener.onCreateSuccess();
                    }
                    TransferSocketClient.getInstance().openHeartBeat(ipAddress);
                    Log.d("socket_debug", "ConnectClientManager_startSocketClient_onCreateSuccess");
                }

                @Override
                public void onDisconnected() {
                    VishaSocketClientListener vishaSocketClientListener = ConnectClientManager.socketClientListenerCallback;
                    if (vishaSocketClientListener != null) {
                        vishaSocketClientListener.onDisconnected();
                    }
                    Log.d("socket_debug", "ConnectClientManager_startSocketClient_onDisconnected");
                }

                @Override
                public void onError(int code) {
                    if (ConnectClientManager.isReceiveFinished) {
                        return;
                    }
                    VishaSocketClientListener vishaSocketClientListener = ConnectClientManager.socketClientListenerCallback;
                    if (vishaSocketClientListener != null) {
                        vishaSocketClientListener.onError(code);
                    }
                    Log.d("socket_debug", "ConnectClientManager_startSocketClient_onError");
                }

                @Override
                public void onProgress(long position) {
                    VishaSocketClientListener vishaSocketClientListener = ConnectClientManager.socketClientListenerCallback;
                    if (vishaSocketClientListener != null) {
                        vishaSocketClientListener.onProgress(position);
                    }
                }

                @Override
                public void onReceiveFinish() {
                    VishaSocketClientListener vishaSocketClientListener = ConnectClientManager.socketClientListenerCallback;
                    if (vishaSocketClientListener != null) {
                        vishaSocketClientListener.onReceiveFinish();
                    }
                    ConnectClientManager.isReceiveFinished = true;
                    Log.d("socket_debug", "ConnectClientManager_startSocketClient_onReceiveFinish");
                }

                @Override
                public void onReceived(int phase, int type, SocketData data) {
                    if (phase == 10) {
                        try {
                            Gson gson = new Gson();
                            y45.h(data, "null cannot be cast to non-null type com.transsion.socket.pkgdata.SocketStringData");
                            Conversation conversation = (Conversation) gson.fromJson(((SocketStringData) data).getValue(), Conversation.class);
                            VishaSocketClientListener vishaSocketClientListener = ConnectClientManager.socketClientListenerCallback;
                            if (vishaSocketClientListener != null) {
                                y45.g(conversation);
                                vishaSocketClientListener.onConversationMessage(conversation);
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            });
        }
        isReceiveFinished = false;
        TransferSocketClient transferSocketClient3 = socketClient;
        if (transferSocketClient3 != null) {
            transferSocketClient3.openSocket(ipAddress);
        }
    }
}
