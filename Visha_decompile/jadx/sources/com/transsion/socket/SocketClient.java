package com.transsion.socket;

import android.util.Log;
import com.transsion.socket.internal.SocketHeartBeat;
import com.transsion.socket.internal.SocketThreadHandler;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.socket.untils.ThreadName;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;

public class SocketClient implements SocketTransferChannel.ChannelLifeListener {
    public static final int DEF_MAX_RETRY_COUNT = 4;
    public static final long DEF_RETRY_INTERVAL = 160;
    private static final String TAG = "SocketClient";
    Object LOCK;
    private final int MAX_RETRY_COUNT;
    SocketThreadHandler mHeatBeatPackageHandler;
    boolean mQuit;
    private long mRetryInterval;
    private int mRryCount;
    SocketHeartBeat mSocketHeartBeat;
    SocketTransferChannel mSocketTransferChannel;

    public SocketClient() {
        this(4, 160L);
    }

    private void checkSocketTransferChannel() throws IllegalAccessException {
        if (this.mSocketTransferChannel != null || this.mHeatBeatPackageHandler != null) {
            throw new IllegalAccessException("Do not created SocketTransferChannel repeatedly!");
        }
    }

    private SocketTransferChannel createSocket(boolean z, String str, int i, SocketDataTransfer socketDataTransfer) {
        SocketTransferChannel socketTransferChannelRelCreateSocket = null;
        while (true) {
            int i2 = this.mRryCount;
            if (i2 >= this.MAX_RETRY_COUNT) {
                break;
            }
            this.mRryCount = i2 + 1;
            Log.d(TAG, "createSocket-ipAddress" + str + ", port:" + i + ", mRryCount:" + this.mRryCount);
            if (this.mQuit) {
                Log.d(TAG, "createSocket-quit: true");
                break;
            }
            socketTransferChannelRelCreateSocket = relCreateSocket(z, this.mRryCount >= this.MAX_RETRY_COUNT, str, i, socketDataTransfer);
            Log.d(TAG, "createSocket-transferChannel: " + socketTransferChannelRelCreateSocket + ", mQuit:" + this.mQuit);
            if (socketTransferChannelRelCreateSocket != null) {
                break;
            }
            try {
                Thread.sleep(((long) (1 << this.mRryCount)) * this.mRetryInterval);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        if (socketTransferChannelRelCreateSocket == null) {
            onConnectFail(null);
            return null;
        }
        socketTransferChannelRelCreateSocket.setListener(this);
        if (ifBlockChannelCreate()) {
            while (!socketTransferChannelRelCreateSocket.ismQuit() && !socketTransferChannelRelCreateSocket.ismReady()) {
                try {
                    synchronized (socketTransferChannelRelCreateSocket.mSocketPackageList) {
                        try {
                            if (!socketTransferChannelRelCreateSocket.ismQuit() && !socketTransferChannelRelCreateSocket.ismReady()) {
                                socketTransferChannelRelCreateSocket.mSocketPackageList.wait();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        if (socketTransferChannelRelCreateSocket.ismQuit()) {
            return null;
        }
        return socketTransferChannelRelCreateSocket;
    }

    private SocketTransferChannel relCreateSocket(boolean z, boolean z2, String str, int i, SocketDataTransfer socketDataTransfer) {
        Socket socket = new Socket();
        try {
            socket.bind(null);
            onBeforeConnectSocketConfig(socket, z);
            socket.connect(new InetSocketAddress(str, i));
            SocketTransferChannel socketTransferChannel = new SocketTransferChannel(socket, socketDataTransfer);
            if (socketTransferChannel.getErrorCode() == 0) {
                return socketTransferChannel;
            }
            if (z2) {
                quit();
            }
            return null;
        } catch (IOException e) {
            try {
                socket.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            e.printStackTrace();
            if (z2) {
                quit();
            }
            return null;
        }
    }

    private boolean socketQuit() {
        synchronized (this.LOCK) {
            try {
                if (this.mQuit) {
                    return false;
                }
                this.mQuit = true;
                SocketHeartBeat socketHeartBeat = this.mSocketHeartBeat;
                if (socketHeartBeat != null) {
                    socketHeartBeat.quit();
                    this.mSocketHeartBeat = null;
                }
                SocketThreadHandler socketThreadHandler = this.mHeatBeatPackageHandler;
                if (socketThreadHandler != null) {
                    socketThreadHandler.safelyQuit();
                    this.mHeatBeatPackageHandler = null;
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public SocketTransferChannel getHeatBeatTransferChannel() {
        return this.mSocketTransferChannel;
    }

    public boolean ifBlockChannelCreate() {
        return true;
    }

    public boolean ifNeedVersion() {
        return false;
    }

    public void onBeforeConnectSocketConfig(Socket socket, boolean z) {
    }

    @Override
    public final void onChannelFail(SocketTransferChannel socketTransferChannel) {
        onConnectFail(socketTransferChannel);
        socketTransferChannel.safelyQuit();
    }

    @Override
    public void onChannelQuit(SocketTransferChannel socketTransferChannel) {
        this.mSocketTransferChannel = null;
        socketQuit();
        SLog.d(TAG, " onChannelQuit ");
    }

    @Override
    public final void onChannelReady(SocketTransferChannel socketTransferChannel) {
        onConnectSuccess(socketTransferChannel);
    }

    public void onConnectFail(SocketTransferChannel socketTransferChannel) {
        SLog.d(TAG, "=============onConnectFail====");
    }

    public void onConnectSuccess(SocketTransferChannel socketTransferChannel) {
        SLog.d(TAG, "=============onConnectSuccess====");
    }

    public void openHeartBeatSocket(String str, int i, long j, SocketHeartBeat.ISocketHeartBeat iSocketHeartBeat) throws IllegalAccessException {
        checkSocketTransferChannel();
        SocketHeartBeat socketHeartBeat = new SocketHeartBeat(this, j, iSocketHeartBeat);
        this.mSocketHeartBeat = socketHeartBeat;
        socketHeartBeat.setName(ThreadName.CLIENT_HEART_BEAT);
        SocketTransferChannel socketTransferChannelCreateSocket = createSocket(true, str, i, this.mSocketHeartBeat.getHeartSocketDataTransfer());
        this.mSocketTransferChannel = socketTransferChannelCreateSocket;
        if (this.mQuit && socketTransferChannelCreateSocket != null) {
            socketTransferChannelCreateSocket.quit();
        }
        this.mSocketHeartBeat.start();
        SLog.d(TAG, "openHeartBeatSocket: ");
    }

    public SocketTransferChannel openSocket(String str, int i, SocketDataTransfer socketDataTransfer) throws IllegalAccessException {
        checkSocketTransferChannel();
        SocketTransferChannel socketTransferChannelCreateSocket = createSocket(false, str, i, socketDataTransfer);
        this.mSocketTransferChannel = socketTransferChannelCreateSocket;
        return socketTransferChannelCreateSocket;
    }

    public void quit() {
        SocketTransferChannel socketTransferChannel;
        if (socketQuit() && (socketTransferChannel = this.mSocketTransferChannel) != null) {
            socketTransferChannel.quit();
        }
    }

    public void safelyQuit() {
        SocketTransferChannel socketTransferChannel;
        if (socketQuit() && (socketTransferChannel = this.mSocketTransferChannel) != null) {
            socketTransferChannel.safelyQuit();
        }
    }

    public void sendData(SocketData socketData) {
        SocketTransferChannel socketTransferChannel = this.mSocketTransferChannel;
        if (socketTransferChannel != null) {
            socketTransferChannel.sendData(socketData);
        }
    }

    public void waitingTransferCompleted() {
        SocketTransferChannel socketTransferChannel = this.mSocketTransferChannel;
        if (socketTransferChannel != null) {
            socketTransferChannel.waitingTransferCompleted();
        }
    }

    public SocketClient(int i, long j) {
        this.LOCK = new Object();
        this.mQuit = false;
        this.mRryCount = 0;
        this.mRetryInterval = 0L;
        this.MAX_RETRY_COUNT = i < 1 ? 1 : i;
        this.mRetryInterval = j;
    }
}
