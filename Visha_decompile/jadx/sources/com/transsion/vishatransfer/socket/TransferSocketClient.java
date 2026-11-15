package com.transsion.vishatransfer.socket;

import android.util.Log;
import com.transsion.socket.SocketClient;
import com.transsion.socket.SocketDataTransfer;
import com.transsion.socket.SocketTrafficStats;
import com.transsion.socket.SocketTransferChannel;
import com.transsion.socket.internal.SocketHeartBeat;
import com.transsion.socket.pkgdata.SocketCodeData;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.socket.pkgdata.SocketFileData;
import com.transsion.socket.pkgdata.SocketStringData;
import com.transsion.vishatransfer.constants.Constants;
import java.util.ArrayList;
import java.util.List;

public class TransferSocketClient {
    private static final String TAG = "TransferSocketClient";
    private static volatile TransferSocketClient mInstance;
    private boolean isProgressCalled;
    private volatile boolean isQuitSend;
    private long mAverageSpeedPerSecond;
    private TransferMessage mCurrentTransferMessage;
    private SocketClient mHeartBeatClient;
    private long mRecentSpeedPerSecond;
    private SocketClientListener mSocketClientListener;
    private SocketTransferChannel mSocketTransferChannel;
    private Thread mThread;
    private final List<TransferMessage> mTransferMessageList = new ArrayList();
    private final Object mWaitLock = new Object();
    private final Object mListWriteReadLock = new Object();
    private final Object mMessageLock = new Object();
    private int mCurrentTransferType = 0;
    private int mCurrentTransferPhase = 0;
    private boolean isSendThreadWait = false;
    private final SocketTrafficStats mSocketTrafficStats = new SocketTrafficStats(500, 1) {
        @Override
        public synchronized void onSendSpeedUpdate(long j, long j2, long j3) {
            TransferSocketClient.this.isProgressCalled = true;
            TransferSocketClient.this.mRecentSpeedPerSecond = j;
            TransferSocketClient.this.mAverageSpeedPerSecond = j2;
            synchronized (TransferSocketClient.this.mMessageLock) {
                try {
                    if (TransferSocketClient.this.mCurrentTransferMessage != null) {
                        TransferSocketClient.this.mCurrentTransferMessage.progress(j3);
                    } else if (TransferSocketClient.this.mSocketClientListener != null) {
                        TransferSocketClient.this.mSocketClientListener.onProgress(j3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };
    private boolean needHeartBeat = true;

    public class ClientSocketDataTransfer extends SocketDataTransfer {
        public ClientSocketDataTransfer() {
            super(false);
        }

        @Override
        public void onReadySendSocketData(SocketTransferChannel socketTransferChannel) {
            super.onReadySendSocketData(socketTransferChannel);
        }

        @Override
        public void onReceiveFinish() {
            if (TransferSocketClient.this.mSocketClientListener == null) {
                return;
            }
            TransferSocketClient.this.mSocketClientListener.onReceiveFinish();
        }

        @Override
        public void onReceiveSocketData(SocketTransferChannel socketTransferChannel, SocketData socketData) {
            Class cls;
            super.onReceiveSocketData(socketTransferChannel, socketData);
            if (TransferSocketClient.this.mSocketClientListener == null) {
                return;
            }
            int i = TransferSocketClient.this.mCurrentTransferType;
            if (i == 0) {
                if (!(socketData instanceof TransferSocketCodeData)) {
                    TransferSocketClient.this.mSocketClientListener.onError(-1);
                    return;
                }
                TransferSocketCodeData transferSocketCodeData = (TransferSocketCodeData) socketData;
                TransferSocketClient.this.mCurrentTransferType = transferSocketCodeData.getType();
                TransferSocketClient.this.mCurrentTransferPhase = transferSocketCodeData.getPhase();
                return;
            }
            if (i == 1) {
                cls = SocketCodeData.class;
            } else if (i == 2) {
                cls = SocketStringData.class;
            } else if (i != 3) {
                return;
            } else {
                cls = SocketFileData.class;
            }
            if (cls.isInstance(socketData)) {
                TransferSocketClient.this.mSocketClientListener.onReceived(TransferSocketClient.this.mCurrentTransferPhase, TransferSocketClient.this.mCurrentTransferType, socketData);
            } else {
                TransferSocketClient.this.mSocketClientListener.onError(-1);
            }
            TransferSocketClient.this.mCurrentTransferType = 0;
        }

        @Override
        public void onSocketTransferCompleted(SocketTransferChannel socketTransferChannel, boolean z) {
            super.onSocketTransferCompleted(socketTransferChannel, z);
            if (TransferSocketClient.this.mSocketClientListener == null) {
                return;
            }
            if (z) {
                TransferSocketClient.this.mSocketClientListener.onDisconnected();
            } else {
                TransferSocketClient.this.mSocketClientListener.onError(-1);
            }
            TransferSocketClient.this.release();
        }

        @Override
        public boolean onSupportAsyncSendData() {
            return true;
        }
    }

    public interface SocketClientListener {
        void onCreateSuccess();

        void onDisconnected();

        void onError(int i);

        void onProgress(long j);

        default void onReceiveFinish() {
        }

        void onReceived(int i, int i2, SocketData socketData);
    }

    private TransferSocketClient() {
    }

    public static TransferSocketClient getInstance() {
        if (mInstance == null) {
            synchronized (TransferSocketClient.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new TransferSocketClient();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return mInstance;
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
            if (socketTransferChannel != null && !socketTransferChannel.ismQuit()) {
                this.mSocketTransferChannel.sendData(transferSocketCodeData);
                if (this.mCurrentTransferMessage.isListenProgress()) {
                    this.isProgressCalled = false;
                    this.mSocketTrafficStats.startTrafficStats();
                }
                this.mCurrentTransferMessage.beforeSend();
                this.mSocketTransferChannel.sendData(this.mCurrentTransferMessage.getData());
                if (this.mCurrentTransferMessage.isListenProgress()) {
                    this.mSocketTrafficStats.stopTrafficStats();
                    if (!this.isProgressCalled) {
                        this.mSocketTrafficStats.onSendSpeedUpdate(0L, 0L, ((SocketFileData) this.mCurrentTransferMessage.getData()).calcTotalSendFileInfo().mTransferLength);
                    }
                }
                this.mCurrentTransferMessage.complete();
                synchronized (this.mMessageLock) {
                    this.mCurrentTransferMessage = null;
                }
            }
        }
        Log.d(TAG, "client send thread quit!");
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

    public long getAverageSpeedPerSecond() {
        return this.mAverageSpeedPerSecond;
    }

    public long getRecentSpeedPerSecond() {
        return this.mRecentSpeedPerSecond;
    }

    public void openHeartBeat(String str) {
        if (this.needHeartBeat) {
            try {
                try {
                    SocketClient socketClient = new SocketClient();
                    this.mHeartBeatClient = socketClient;
                    socketClient.openHeartBeatSocket(str, Constants.PORT, 30000L, new SocketHeartBeat.ISocketHeartBeat() {
                        @Override
                        public void onSocketError(SocketClient socketClient2, int i) {
                            if (TransferSocketClient.this.mSocketClientListener != null) {
                                TransferSocketClient.this.mSocketClientListener.onError(i);
                            }
                        }

                        @Override
                        public void onSocketTimeout(SocketClient socketClient2) {
                            if (TransferSocketClient.this.mSocketClientListener != null) {
                                TransferSocketClient.this.mSocketClientListener.onError(-1);
                            }
                        }
                    });
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            } finally {
                this.needHeartBeat = false;
            }
        }
    }

    public void openSocket(String str) throws IllegalStateException {
        try {
            if (this.mSocketClientListener == null) {
                throw new IllegalStateException("mSocketClientListener is null");
            }
            SocketTransferChannel socketTransferChannel = this.mSocketTransferChannel;
            if (socketTransferChannel != null) {
                socketTransferChannel.quit();
            }
            SocketTransferChannel socketTransferChannelOpenSocket = new SocketClient().openSocket(str, Constants.PORT, new ClientSocketDataTransfer());
            this.mSocketTransferChannel = socketTransferChannelOpenSocket;
            if (socketTransferChannelOpenSocket == null) {
                this.mSocketClientListener.onError(-1);
            } else {
                this.mSocketClientListener.onCreateSuccess();
                this.mSocketTrafficStats.addSocketTransferChannel(this.mSocketTransferChannel);
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    public void release() {
        if (this.isQuitSend) {
            return;
        }
        this.isQuitSend = true;
        synchronized (this.mListWriteReadLock) {
            this.mTransferMessageList.clear();
        }
        SocketTransferChannel socketTransferChannel = this.mSocketTransferChannel;
        if (socketTransferChannel != null) {
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
            socketTransferChannel.safelyQuit();
        }
        SocketClient socketClient = this.mHeartBeatClient;
        if (socketClient != null) {
            socketClient.quit();
        }
    }

    public void resetCurrentTransferType() {
        this.mCurrentTransferType = 0;
    }

    public void sendData(TransferMessage transferMessage) throws IllegalStateException {
        SocketTransferChannel socketTransferChannel = this.mSocketTransferChannel;
        if (socketTransferChannel == null || socketTransferChannel.ismQuit()) {
            throw new IllegalStateException("have not connect any server");
        }
        synchronized (this.mListWriteReadLock) {
            this.mTransferMessageList.add(transferMessage);
        }
        startSendData();
    }

    public void setNeedHeartBeat(boolean z) {
        this.needHeartBeat = z;
    }

    public void setSocketClientListener(SocketClientListener socketClientListener) {
        this.mSocketClientListener = socketClientListener;
    }

    public void waitRelease() {
        SocketTransferChannel socketTransferChannel = this.mSocketTransferChannel;
        if (socketTransferChannel != null) {
            socketTransferChannel.waitingTransferCompleted();
        }
        SocketClient socketClient = this.mHeartBeatClient;
        if (socketClient != null) {
            socketClient.waitingTransferCompleted();
            this.mHeartBeatClient = null;
        }
    }
}
