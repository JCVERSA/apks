package com.transsion.vishatransfer.socket;

import android.text.TextUtils;
import android.util.Log;
import com.transsion.socket.SocketDataTransfer;
import com.transsion.socket.SocketServer;
import com.transsion.socket.SocketTrafficStats;
import com.transsion.socket.SocketTransferChannel;
import com.transsion.socket.internal.SocketHeartBeat;
import com.transsion.socket.pkgdata.SocketCodeData;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.socket.pkgdata.SocketFileData;
import com.transsion.socket.pkgdata.SocketStringData;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class TransferSocketServer extends SocketServer {
    private static final String TAG = "TransferSocketServer";
    private static final Map<Integer, TransferSocketServer> sSocketMap = new ConcurrentHashMap();
    private boolean isProgressCalled;
    private boolean isQuitSend;
    private boolean isSendThreadWait;
    private long mAverageSpeedPerSecond;
    private TransferMessage mCurrentTransferMessage;
    private int mCurrentTransferPhase;
    private int mCurrentTransferType;
    private final Object mListWriteReadLock;
    private long mRecentSpeedPerSecond;
    private SocketServerListener mSocketServerListener;
    private final SocketTrafficStats mSocketTrafficStats;
    private SocketTransferChannel mSocketTransferChannel;
    private Thread mThread;
    private final List<TransferMessage> mTransferMessageList;
    private final Object mWaitLock;

    public class ServerSocketDataTransfer extends SocketDataTransfer {
        public ServerSocketDataTransfer() {
            super(true);
        }

        @Override
        public void onBeginReceiveSocketData(SocketTransferChannel socketTransferChannel) {
            super.onBeginReceiveSocketData(socketTransferChannel);
            TransferSocketServer.this.mSocketTrafficStats.startTrafficStats();
        }

        @Override
        public void onEndReceiveOneSocketData(SocketTransferChannel socketTransferChannel) {
            super.onEndReceiveOneSocketData(socketTransferChannel);
            TransferSocketServer.this.mSocketTrafficStats.stopTrafficStats();
        }

        @Override
        public void onReadySendSocketData(SocketTransferChannel socketTransferChannel) {
            TransferSocketServer.this.mSocketTransferChannel = socketTransferChannel;
            if (TransferSocketServer.this.mSocketServerListener != null) {
                TransferSocketServer.this.mSocketServerListener.onAccept();
            }
            TransferSocketServer.this.mSocketTrafficStats.addSocketTransferChannel(TransferSocketServer.this.mSocketTransferChannel);
        }

        @Override
        public void onReceiveFinish() {
            if (TransferSocketServer.this.mSocketServerListener != null) {
                TransferSocketServer.this.mSocketServerListener.onReceiveFinish();
            }
        }

        @Override
        public void onReceiveSocketData(SocketTransferChannel socketTransferChannel, SocketData socketData) {
            Class cls;
            super.onReceiveSocketData(socketTransferChannel, socketData);
            if (TransferSocketServer.this.mSocketServerListener == null) {
                return;
            }
            int i = TransferSocketServer.this.mCurrentTransferType;
            if (i == 0) {
                if (!(socketData instanceof TransferSocketCodeData)) {
                    TransferSocketServer.this.mSocketServerListener.onError(-1);
                    return;
                }
                TransferSocketCodeData transferSocketCodeData = (TransferSocketCodeData) socketData;
                TransferSocketServer.this.mCurrentTransferType = transferSocketCodeData.getType();
                TransferSocketServer.this.mCurrentTransferPhase = transferSocketCodeData.getPhase();
                if (TransferSocketServer.this.mCurrentTransferType == 3) {
                    TransferSocketServer.this.isProgressCalled = false;
                    return;
                }
                return;
            }
            if (i == 1) {
                cls = SocketCodeData.class;
            } else if (i == 2) {
                cls = SocketStringData.class;
            } else {
                if (i != 3) {
                    return;
                }
                if (!TransferSocketServer.this.isProgressCalled) {
                    SocketFileData socketFileData = (SocketFileData) socketData;
                    File file = TextUtils.isEmpty(socketFileData.mReceiveDir) ? new File(socketFileData.mSendFile) : new File(socketFileData.mReceiveDir);
                    if (file.exists() && file.isFile()) {
                        TransferSocketServer.this.mSocketServerListener.onProgress(file.length());
                    }
                }
                cls = SocketFileData.class;
            }
            if (cls.isInstance(socketData)) {
                TransferSocketServer.this.mSocketServerListener.onReceived(TransferSocketServer.this.mCurrentTransferPhase, TransferSocketServer.this.mCurrentTransferType, socketData);
            } else {
                TransferSocketServer.this.mSocketServerListener.onError(-1);
            }
            TransferSocketServer.this.mCurrentTransferType = 0;
        }

        @Override
        public void onSocketTransferCompleted(SocketTransferChannel socketTransferChannel, boolean z) {
            super.onSocketTransferCompleted(socketTransferChannel, z);
            TransferSocketServer.this.quit();
            if (TransferSocketServer.this.mSocketServerListener != null) {
                if (z) {
                    TransferSocketServer.this.mSocketServerListener.onDisconnected();
                    return;
                }
                if (TransferSocketServer.this.mSocketTrafficStats != null) {
                    TransferSocketServer.this.mSocketTrafficStats.stopTrafficStats();
                }
                TransferSocketServer.this.mSocketServerListener.onError(socketTransferChannel.getErrorCode());
            }
        }

        @Override
        public boolean onSupportAsyncSendData() {
            return true;
        }

        @Override
        public int socketTimeOut() {
            return 10000;
        }
    }

    public interface SocketServerListener {
        void onAccept();

        void onCreateFail();

        void onCreateSuccess();

        void onDisconnected();

        void onError(int i);

        void onProgress(long j);

        default void onReceiveFinish() {
        }

        void onReceived(int i, int i2, SocketData socketData);
    }

    private TransferSocketServer(int i) {
        super(i);
        this.mTransferMessageList = new ArrayList();
        this.mWaitLock = new Object();
        this.mListWriteReadLock = new Object();
        this.mCurrentTransferType = 0;
        this.mCurrentTransferPhase = 0;
        this.mSocketTrafficStats = new SocketTrafficStats(500L, 2) {
            @Override
            public void onReceiveSpeedUpdate(long j, long j2, long j3) {
                super.onReceiveSpeedUpdate(j, j2, j3);
                TransferSocketServer.this.mRecentSpeedPerSecond = j;
                TransferSocketServer.this.mAverageSpeedPerSecond = j2;
                TransferSocketServer.this.isProgressCalled = true;
                TransferSocketServer.this.mSocketServerListener.onProgress(j3);
            }
        };
    }

    public static void clear() {
        Iterator<TransferSocketServer> it = sSocketMap.values().iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        sSocketMap.clear();
    }

    public static TransferSocketServer getInstance(int i) {
        TransferSocketServer transferSocketServer;
        synchronized (SocketServer.LOCK) {
            try {
                Map<Integer, TransferSocketServer> map = sSocketMap;
                transferSocketServer = map.get(Integer.valueOf(i));
                if (transferSocketServer == null) {
                    transferSocketServer = new TransferSocketServer(i);
                    map.put(Integer.valueOf(i), transferSocketServer);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return transferSocketServer;
    }

    public void lambda$startSendData$0() {
        Thread thread;
        TransferMessage transferMessageRemove;
        Thread thread2;
        while (!this.isQuitSend && ((thread = this.mThread) == null || thread.getId() == Thread.currentThread().getId())) {
            synchronized (this.mListWriteReadLock) {
                try {
                    transferMessageRemove = this.mTransferMessageList.size() != 0 ? this.mTransferMessageList.remove(0) : null;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (transferMessageRemove == null) {
                synchronized (this.mWaitLock) {
                    try {
                        try {
                            this.isSendThreadWait = true;
                            if (this.mTransferMessageList.size() == 0) {
                                this.mWaitLock.wait();
                                this.isSendThreadWait = false;
                            }
                            if (this.isQuitSend || ((thread2 = this.mThread) != null && thread2.getId() != Thread.currentThread().getId())) {
                            }
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                break;
            }
            this.mCurrentTransferMessage = transferMessageRemove;
            TransferSocketCodeData transferSocketCodeData = new TransferSocketCodeData(this.mCurrentTransferMessage.getPhase(), this.mCurrentTransferMessage.getType());
            SocketTransferChannel socketTransferChannel = this.mSocketTransferChannel;
            if (socketTransferChannel != null) {
                socketTransferChannel.sendData(transferSocketCodeData);
            }
            TransferMessage transferMessage = this.mCurrentTransferMessage;
            if (transferMessage != null && this.mSocketTransferChannel != null) {
                transferMessage.beforeSend();
                this.mSocketTransferChannel.sendData(this.mCurrentTransferMessage.getData());
                this.mCurrentTransferMessage.complete();
                this.mCurrentTransferMessage = null;
            }
        }
        Log.d(TAG, "server send thread quit!");
    }

    private void startSendData() {
        Thread thread = this.mThread;
        if (thread == null || !thread.isAlive()) {
            this.isQuitSend = false;
            Thread thread2 = new Thread(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$startSendData$0();
                }
            });
            this.mThread = thread2;
            thread2.start();
            return;
        }
        synchronized (this.mWaitLock) {
            try {
                if (this.isSendThreadWait) {
                    this.mWaitLock.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public SocketHeartBeat.IServerHeartBeat createHeadBeatCallBack() {
        return new SocketHeartBeat.IServerHeartBeat() {
            @Override
            public void onSocketError(int i) {
                if (TransferSocketServer.this.mSocketTrafficStats != null) {
                    TransferSocketServer.this.mSocketTrafficStats.stopTrafficStats();
                }
                if (TransferSocketServer.this.mSocketServerListener != null) {
                    Log.i(TransferSocketServer.TAG, "onSocketError  disconnect:  ");
                    TransferSocketServer.this.mSocketServerListener.onDisconnected();
                }
            }

            @Override
            public void onSocketTimeout(SocketTransferChannel socketTransferChannel) {
                if (TransferSocketServer.this.mSocketTrafficStats != null) {
                    TransferSocketServer.this.mSocketTrafficStats.stopTrafficStats();
                }
            }
        };
    }

    @Override
    public SocketDataTransfer createSocketDataReceiver() {
        SocketServerListener socketServerListener = this.mSocketServerListener;
        if (socketServerListener != null) {
            socketServerListener.onCreateSuccess();
        }
        return new ServerSocketDataTransfer();
    }

    public long getAverageSpeedPerSecond() {
        return this.mAverageSpeedPerSecond;
    }

    public long getRecentSpeedPerSecond() {
        return this.mRecentSpeedPerSecond;
    }

    public SocketServerListener getSocketServerListener() {
        return this.mSocketServerListener;
    }

    @Override
    public void onSocketServerCreateFail(int i) {
        super.onSocketServerCreateFail(i);
        SocketServerListener socketServerListener = this.mSocketServerListener;
        if (socketServerListener != null) {
            socketServerListener.onCreateFail();
        }
    }

    @Override
    public void release() {
        synchronized (this.mListWriteReadLock) {
            this.mTransferMessageList.clear();
        }
        this.isQuitSend = true;
        synchronized (this.mWaitLock) {
            try {
                if (this.isSendThreadWait) {
                    this.mWaitLock.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mThread = null;
        synchronized (SocketServer.LOCK) {
            sSocketMap.remove(Integer.valueOf(this.mPort));
            super.quit();
        }
    }

    public void resetCurrentTransferType() {
        this.mCurrentTransferType = 0;
    }

    public void sendData(TransferMessage transferMessage) throws IllegalStateException, IOException {
        if (getServerSocket() == null) {
            throw new IllegalStateException("have not called openSocket");
        }
        if (!getServerSocket().isBound() || getServerSocket().isClosed()) {
            throw new IOException("Socket is closed or not bound");
        }
        synchronized (this.mListWriteReadLock) {
            this.mTransferMessageList.add(transferMessage);
        }
        startSendData();
    }

    public void setSocketServerListener(SocketServerListener socketServerListener) {
        this.mSocketServerListener = socketServerListener;
    }

    public void stopSend() {
        this.isQuitSend = true;
    }
}
