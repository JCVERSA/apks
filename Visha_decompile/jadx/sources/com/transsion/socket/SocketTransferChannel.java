package com.transsion.socket;

import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.transsion.socket.internal.SocketHeartBeat;
import com.transsion.socket.internal.SocketInputStream;
import com.transsion.socket.internal.SocketOutputStream;
import com.transsion.socket.internal.SocketStream;
import com.transsion.socket.internal.SocketThreadHandler;
import com.transsion.socket.internal.SocketUtils;
import com.transsion.socket.internal.Watchdog;
import com.transsion.socket.pkgdata.SocketBlockData;
import com.transsion.socket.pkgdata.SocketConnectData;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.socket.pkgdata.SocketEndData;
import com.transsion.socket.pkgdata.SocketFileData;
import com.transsion.socket.untils.ThreadName;
import java.io.DataInputStream;
import java.net.Socket;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.List;

public class SocketTransferChannel {
    static final String TAG = "SocketTransferChannel";
    private ChannelDataCallback dataCallback;
    private boolean isHeartBeat;
    private String mErrorMsg;
    private boolean mIsClient;
    private volatile long mLastReceiveHeartBeatTime;
    private ChannelLifeListener mListener;
    private SocketInputStream mReceiveInputStream;
    SocketThreadHandler mReceiverHandler;
    SocketThreadHandler mSendHandler;
    private SocketOutputStream mSendOutputStream;

    @Nullable
    private SocketHeartBeat.IServerHeartBeat mServerHeartBeat;
    private SocketThreadHandler mServer_HeartCheckThread;
    Socket mSocket;
    private SocketDataTransfer mSocketDataTransfer;
    boolean mSupportAsyncSend;
    public final ArrayList<SocketData> mSocketPackageList = new ArrayList<>();
    final Object LOCK = SocketServer.LOCK;
    final Object WAIT_LOCK = new Object();
    private boolean mQuit = false;
    private boolean mCallQuit = false;
    private boolean mCallReadySend = true;
    private int mBlockDataRefCount = 0;
    private boolean mCallSocketCompleted = false;
    private boolean mReady = false;
    private boolean mSkipComplete = false;
    private int mErrorCode = 0;
    private boolean mIsWaitingTransferCompleted = false;
    boolean mFlagWaitingSocketEnd = false;
    private boolean init = false;
    private final List<ChannelLifeListener> listeners = new ArrayList();

    public interface ChannelDataCallback {
        void OneDataTransferComplete();
    }

    public interface ChannelLifeListener {
        default void onChannelCreate(SocketTransferChannel socketTransferChannel) {
        }

        default void onChannelFail(SocketTransferChannel socketTransferChannel) {
        }

        void onChannelQuit(SocketTransferChannel socketTransferChannel);

        default void onChannelReady(SocketTransferChannel socketTransferChannel) {
        }

        default void onChannelTimeout(SocketTransferChannel socketTransferChannel) {
        }

        default void onClientReq(SocketTransferChannel socketTransferChannel, SocketConnectData socketConnectData) {
        }
    }

    public class SocketPackageImpl implements SocketStream.ISocketPackage {
        Socket mSocket;

        public SocketPackageImpl(Socket socket) {
            this.mSocket = socket;
        }

        @Override
        public void mHandleSocketPackage(SocketStream.SocketPackage socketPackage) {
            if (socketPackage.mClazzType != -127 || !SocketTransferChannel.this.isServer_HeartChannel()) {
                if (SocketTransferChannel.this.mSocketDataTransfer != null) {
                    SocketTransferChannel.this.mSocketDataTransfer.receiveSocketData(SocketTransferChannel.this, socketPackage);
                }
            } else {
                SocketTransferChannel.this.mLastReceiveHeartBeatTime = SystemClock.uptimeMillis();
                SocketTransferChannel.this.runOnceReceiveHeartData();
                if (SocketMain.DEBUG_SOCKET_HEARTBEAT) {
                    SLog.d(SocketTransferChannel.TAG, "receive and reply heart ");
                }
                SocketTransferChannel.this.sendSocketPackage(SocketStream.SocketPackage.HEART_BEAT_PACKAGE);
            }
        }

        @Override
        public void onHandleSocketData(short s, DataInputStream dataInputStream) {
            SocketData socketDataClass = SocketData.getSocketDataClass(s);
            if (socketDataClass == null) {
                try {
                    SLog.i(SocketTransferChannel.TAG, "onHandleSocketData - clazzType:" + ((int) s));
                } catch (Exception e) {
                    if (SocketMain.DEBUG_SOCKET_PRINT_TRACE) {
                        e.printStackTrace();
                    }
                    SocketTransferChannel.this.mErrorMsg = e.getMessage();
                    SLog.i(SocketTransferChannel.TAG, "e-msg:" + SocketTransferChannel.this.mErrorMsg);
                    SocketTransferChannel.this.socketError(4);
                    return;
                }
            }
            if (SocketMain.DEBUG_DATA_TRANSFER) {
                SLog.i(SocketTransferChannel.TAG, "onHandleSocketData - clazzType0:" + ((int) s) + "::::");
            }
            if (SocketTransferChannel.this.mSocketDataTransfer != null && !SocketTransferChannel.this.isServer_HeartChannel() && (socketDataClass instanceof SocketFileData)) {
                SocketTransferChannel.this.mSocketDataTransfer.beginReceiveSocketData(SocketTransferChannel.this);
            }
            socketDataClass.readData(dataInputStream);
            if (SocketMain.DEBUG_DATA_TRANSFER) {
                SLog.i(SocketTransferChannel.TAG, "onHandleSocketData - clazzType1:" + ((int) s) + "::::" + socketDataClass);
            }
            if (SocketTransferChannel.this.ismReady() && SocketTransferChannel.this.dataCallback != null && (socketDataClass instanceof SocketFileData)) {
                SocketTransferChannel.this.dataCallback.OneDataTransferComplete();
            }
            if (SocketTransferChannel.this.mSocketDataTransfer != null) {
                SocketTransferChannel.this.mSocketDataTransfer.receiveSocketData(SocketTransferChannel.this, socketDataClass);
            }
            if (SocketTransferChannel.this.mSocketDataTransfer == null || SocketTransferChannel.this.isServer_HeartChannel() || !(socketDataClass instanceof SocketFileData)) {
                return;
            }
            SocketTransferChannel.this.mSocketDataTransfer.endReceiveOneSocketData(SocketTransferChannel.this);
        }
    }

    public SocketTransferChannel(Socket socket, SocketDataTransfer socketDataTransfer) {
        this.mIsClient = false;
        this.mSupportAsyncSend = false;
        this.mSocket = socket;
        this.mSocketDataTransfer = socketDataTransfer;
        if (socketDataTransfer != null) {
            this.mIsClient = !socketDataTransfer.mIsSocketServer;
            this.isHeartBeat = socketDataTransfer.isHeartBeat;
            this.mSupportAsyncSend = socketDataTransfer.onSupportAsyncSendData();
        }
        try {
            this.mSendOutputStream = new SocketOutputStream(socket.getOutputStream());
            this.mReceiveInputStream = new SocketInputStream(socket.getInputStream());
            if (socketDataTransfer != null) {
                socketDataTransfer.beforeThreadCreate(this);
            }
            createSendPackageHandler();
            createReceiverHandler();
            updateThreadName();
        } catch (Exception e) {
            this.mErrorMsg = e.getMessage();
            SLog.i(TAG, "e-io-msg:" + this.mErrorMsg);
            socketError(3);
        }
    }

    private void addSocketPackage(SocketData socketData) {
        synchronized (this.LOCK) {
            try {
                if (this.mQuit) {
                    return;
                }
                boolean z = this.mSocketPackageList.size() == 0;
                this.mSocketPackageList.add(socketData);
                if (z) {
                    synchronized (this.mSocketPackageList) {
                        this.mSocketPackageList.notifyAll();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void createSendPackageHandler() {
        SocketThreadHandler socketThreadHandler = new SocketThreadHandler(new SocketThreadHandler.SocketRunnable() {
            @Override
            public void run() {
                SocketData socketDataRemove;
                if (SocketMain.DEBUG_DATA_TRANSFER) {
                    SLog.d(SocketTransferChannel.TAG, "openSendSocket start Send data...");
                }
                if (SocketTransferChannel.this.mIsClient && !SocketTransferChannel.this.ismReady()) {
                    SocketTransferChannel socketTransferChannel = SocketTransferChannel.this;
                    socketTransferChannel.relSendData(socketTransferChannel.mSocketDataTransfer != null ? SocketTransferChannel.this.mSocketDataTransfer.getConnectData(SocketTransferChannel.this) : new SocketConnectData());
                }
                while (!SocketTransferChannel.this.mQuit) {
                    if (SocketTransferChannel.this.mCallReadySend && SocketTransferChannel.this.ismReady() && !SocketTransferChannel.this.isHeartBeat()) {
                        SocketTransferChannel.this.mCallReadySend = false;
                        if (SocketTransferChannel.this.mSocketDataTransfer != null) {
                            SocketTransferChannel.this.mSocketDataTransfer.onReadySendSocketData(SocketTransferChannel.this);
                        }
                    }
                    synchronized (SocketTransferChannel.this.LOCK) {
                        try {
                            socketDataRemove = SocketTransferChannel.this.mSocketPackageList.size() > 0 ? SocketTransferChannel.this.mSocketPackageList.remove(0) : null;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (socketDataRemove == null) {
                        synchronized (SocketTransferChannel.this.mSocketPackageList) {
                            try {
                                if (SocketTransferChannel.this.mSocketPackageList.size() <= 0) {
                                    if (!SocketTransferChannel.this.mQuit) {
                                        SocketTransferChannel.this.mSocketPackageList.wait();
                                    }
                                }
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                    } else {
                        SocketTransferChannel.this.relSendData(socketDataRemove);
                    }
                }
            }
        });
        this.mSendHandler = socketThreadHandler;
        socketThreadHandler.start();
    }

    public int getSocketErrorCode() {
        if (this.mSocket.isClosed()) {
            return 1;
        }
        if (!this.mSocket.isConnected()) {
            return 2;
        }
        if (this.mSocket.isOutputShutdown()) {
            return 3;
        }
        return this.mSocket.isInputShutdown() ? 4 : 1000;
    }

    public boolean isServer_HeartChannel() {
        return this.isHeartBeat && !this.mIsClient;
    }

    public void relSendData(SocketData socketData) {
        if (socketData == null || this.mSendOutputStream == null) {
            return;
        }
        if (SocketMain.DEBUG_SEND_DATA) {
            SLog.d(TAG, "sendData socketData = " + socketData);
        }
        try {
            if (socketData.isPackageData()) {
                SocketStream.writeSocketPackage(this.mSendOutputStream, socketData.toSocketPackage());
                return;
            }
            SocketStream.writeSocketStream(this.mSendOutputStream, socketData);
            ChannelDataCallback channelDataCallback = this.dataCallback;
            if (channelDataCallback == null || !(socketData instanceof SocketFileData)) {
                return;
            }
            channelDataCallback.OneDataTransferComplete();
        } catch (SocketException e) {
            if (SocketMain.DEBUG_SOCKET_PRINT_TRACE) {
                e.printStackTrace();
            }
            this.mErrorMsg = e.getMessage();
            SLog.i(TAG, "msg:" + this.mErrorMsg);
            socketError(3);
        }
    }

    public void runOnceReceiveHeartData() {
        if (this.init) {
            return;
        }
        this.init = true;
        this.isHeartBeat = true;
        SLog.d(TAG, "runOnceReceiveHeartData init server heart watch dog");
        SocketThreadHandler socketThreadHandler = this.mServer_HeartCheckThread;
        if (socketThreadHandler == null || !socketThreadHandler.isThreadRunning()) {
            final Watchdog watchdog = new Watchdog(this.mSocketDataTransfer.serverCheckHeartBeatTime(), new Watchdog.ISocketWatchdog() {
                @Override
                public boolean isTimeOut() {
                    return Math.abs(SystemClock.uptimeMillis() - SocketTransferChannel.this.mLastReceiveHeartBeatTime) >= ((long) SocketTransferChannel.this.mSocketDataTransfer.socketTimeOut());
                }

                @Override
                public void onCallHeartBeat() {
                }

                @Override
                public void onTimeOut() {
                    SLog.w(SocketTransferChannel.TAG, "heart beat onTimeOut ");
                    if (SocketTransferChannel.this.mServerHeartBeat != null) {
                        SocketTransferChannel.this.mServerHeartBeat.onSocketTimeout(SocketTransferChannel.this);
                    }
                    if (SocketTransferChannel.this.mListener != null) {
                        SocketTransferChannel.this.mListener.onChannelTimeout(SocketTransferChannel.this);
                    }
                    if (SocketTransferChannel.this.mServer_HeartCheckThread != null) {
                        SocketTransferChannel.this.mServer_HeartCheckThread.safelyQuit();
                    }
                    SocketTransferChannel.this.quit();
                }
            }, true);
            SocketThreadHandler socketThreadHandler2 = new SocketThreadHandler(new SocketThreadHandler.SocketRunnable() {
                @Override
                public void run() {
                    Watchdog watchdog2 = watchdog;
                    if (watchdog2 != null) {
                        watchdog2.run();
                    }
                }
            });
            this.mServer_HeartCheckThread = socketThreadHandler2;
            socketThreadHandler2.setName(ThreadName.SERVER_HEART_CHECK);
            this.mServer_HeartCheckThread.start();
        }
    }

    private void updateThreadName() {
        try {
            SocketThreadHandler socketThreadHandler = this.mReceiverHandler;
            if (socketThreadHandler != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(ThreadName.RECEIVE);
                sb.append(this.isHeartBeat ? "_Heart_beat" : "");
                socketThreadHandler.setName(sb.toString());
            }
            SocketThreadHandler socketThreadHandler2 = this.mSendHandler;
            if (socketThreadHandler2 != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(ThreadName.SEND);
                sb2.append(this.isHeartBeat ? "_Heart_beat" : "");
                socketThreadHandler2.setName(sb2.toString());
            }
        } catch (Exception unused) {
        }
    }

    public void addListener(ChannelLifeListener channelLifeListener) {
        if (this.listeners.contains(channelLifeListener)) {
            return;
        }
        this.listeners.add(channelLifeListener);
    }

    public void checkBlockDataRefAndQuit() {
        if (this.mIsClient) {
            synchronized (this.LOCK) {
                try {
                    int i = this.mBlockDataRefCount - 1;
                    this.mBlockDataRefCount = i;
                    if (this.mIsWaitingTransferCompleted && i == 0) {
                        waitingTransferCompleted();
                    }
                    if (SocketMain.DEBUG_DATA_TRANSFER) {
                        SLog.d(TAG, "checkSafelyQuit mBlockDataRefCount:" + this.mBlockDataRefCount + ", mCallQuit:" + this.mCallQuit);
                    }
                    if (this.mCallQuit && this.mBlockDataRefCount <= 0) {
                        quitWithForce(false);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void createReceiverHandler() {
        this.mReceiverHandler = new SocketThreadHandler(new SocketThreadHandler.SocketRunnable() {
            @Override
            @RequiresApi(api = 19)
            public void run() {
                SocketTransferChannel socketTransferChannel = SocketTransferChannel.this;
                SocketPackageImpl socketPackageImpl = socketTransferChannel.new SocketPackageImpl(socketTransferChannel.mSocket);
                SLog.d(SocketTransferChannel.TAG, "openReadSocket start received data...");
                try {
                    SocketStream.readSocket(SocketTransferChannel.this.mReceiveInputStream, socketPackageImpl);
                } catch (SocketException e) {
                    SLog.i(SocketTransferChannel.TAG, "msg:" + e.getMessage());
                    if (!SocketTransferChannel.this.mQuit) {
                        SocketTransferChannel socketTransferChannel2 = SocketTransferChannel.this;
                        socketTransferChannel2.socketReceiverError(socketTransferChannel2.getSocketErrorCode());
                    }
                }
                if (!SocketTransferChannel.this.mSocket.isClosed()) {
                    SocketUtils.close(SocketTransferChannel.this.mSocket);
                }
                SLog.d(SocketTransferChannel.TAG, "openReadSocket mSocket.isClosed():" + SocketTransferChannel.this.mSocket.isClosed());
            }
        });
        synchronized (this.LOCK) {
            try {
                if (this.mQuit) {
                    SocketUtils.close(this.mSocket);
                } else {
                    this.mReceiverHandler.start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dumpSpeed() {
    }

    public void flagWaitingSocketEnd() {
        this.mFlagWaitingSocketEnd = true;
    }

    public long getCurrentReceiveTraffic() {
        SocketInputStream socketInputStream = this.mReceiveInputStream;
        if (socketInputStream != null) {
            return socketInputStream.getInputSize();
        }
        return 0L;
    }

    public long getCurrentSendTraffic() {
        SocketOutputStream socketOutputStream = this.mSendOutputStream;
        if (socketOutputStream != null) {
            return socketOutputStream.getOutputSize();
        }
        return 0L;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public Socket getSocket() {
        return this.mSocket;
    }

    public boolean isHeartBeat() {
        return this.isHeartBeat;
    }

    public boolean ismQuit() {
        return this.mQuit;
    }

    public boolean ismReady() {
        return this.mReady;
    }

    public void mayRegisterHeartCallback(SocketHeartBeat.IServerHeartBeat iServerHeartBeat) {
        if (!this.mIsClient && this.isHeartBeat) {
            this.mServerHeartBeat = iServerHeartBeat;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("mayRegisterHeartCallback: ");
        sb.append(iServerHeartBeat == null);
        sb.append("<>");
        sb.append(true ^ this.mCallSocketCompleted);
        sb.append("<>");
        sb.append(this.mErrorCode);
        Log.i(TAG, sb.toString());
        if (iServerHeartBeat == null && !this.mCallSocketCompleted && this.mErrorCode == 0) {
            socketError(5);
        }
    }

    public void notifyChannelReady() {
        synchronized (this.mSocketPackageList) {
            this.mSocketPackageList.notifyAll();
            this.mReady = true;
        }
        ChannelLifeListener channelLifeListener = this.mListener;
        if (channelLifeListener != null) {
            channelLifeListener.onChannelReady(this);
        }
    }

    public void notifyConnectFail() {
        synchronized (this.mSocketPackageList) {
            this.mSocketPackageList.notifyAll();
            this.mReady = false;
        }
        ChannelLifeListener channelLifeListener = this.mListener;
        if (channelLifeListener != null) {
            channelLifeListener.onChannelFail(this);
        }
    }

    public void notifyConnectReq(SocketConnectData socketConnectData) {
        ChannelLifeListener channelLifeListener = this.mListener;
        if (channelLifeListener != null) {
            channelLifeListener.onClientReq(this, socketConnectData);
        }
    }

    public void onSocketTransferCompleted(boolean z) {
        SocketDataTransfer socketDataTransfer;
        SocketHeartBeat.IServerHeartBeat iServerHeartBeat;
        if (isServer_HeartChannel()) {
            if (!z && (iServerHeartBeat = this.mServerHeartBeat) != null && !this.mCallSocketCompleted) {
                iServerHeartBeat.onSocketError(getErrorCode());
            }
            quit();
            this.mCallSocketCompleted = true;
            return;
        }
        quit();
        synchronized (this.LOCK) {
            try {
                if (!this.mCallSocketCompleted && (socketDataTransfer = this.mSocketDataTransfer) != null) {
                    if (this.mFlagWaitingSocketEnd) {
                        z = true;
                    }
                    if (!this.mSkipComplete) {
                        socketDataTransfer.onSocketTransferCompleted(this, z);
                    }
                    this.mCallSocketCompleted = true;
                }
                synchronized (this.WAIT_LOCK) {
                    this.WAIT_LOCK.notifyAll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void quit() {
        quitWithForce(true);
    }

    public void quitWithForce(boolean z) {
        if (SocketMain.DEBUG_DATA_TRANSFER) {
            SLog.d(TAG, "_safelyQuit mBlockDataRefCount:" + this.mBlockDataRefCount + ", forceQuit:" + z);
        }
        synchronized (this.LOCK) {
            try {
                if (this.mQuit) {
                    return;
                }
                if (!z && this.mBlockDataRefCount > 0) {
                    this.mCallQuit = true;
                    return;
                }
                this.mQuit = true;
                SocketUtils.close(this.mSocket);
                synchronized (this.mSocketPackageList) {
                    this.mSocketPackageList.notifyAll();
                }
                SocketThreadHandler socketThreadHandler = this.mSendHandler;
                if (socketThreadHandler != null) {
                    socketThreadHandler.safelyQuit();
                }
                SocketThreadHandler socketThreadHandler2 = this.mReceiverHandler;
                if (socketThreadHandler2 != null) {
                    socketThreadHandler2.safelyQuit();
                }
                SocketThreadHandler socketThreadHandler3 = this.mServer_HeartCheckThread;
                if (socketThreadHandler3 != null) {
                    socketThreadHandler3.safelyQuit();
                    this.mServer_HeartCheckThread = null;
                }
                ChannelLifeListener channelLifeListener = this.mListener;
                if (channelLifeListener != null) {
                    channelLifeListener.onChannelQuit(this);
                    this.mListener = null;
                }
                this.dataCallback = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void receiveSocketEnd() {
        if (SocketMain.DEBUG_SEND_DATA) {
            SLog.i(TAG, "receiveSocketEnd: mIsClient = " + this.mIsClient + " isHeartBeat = " + this.isHeartBeat);
        }
        onSocketTransferCompleted(true);
    }

    public void resetReceiveTraffic() {
        SocketInputStream socketInputStream = this.mReceiveInputStream;
        if (socketInputStream != null) {
            socketInputStream.resetReceiveTraffic();
        }
    }

    public void resetSendTraffic() {
        SocketOutputStream socketOutputStream = this.mSendOutputStream;
        if (socketOutputStream != null) {
            socketOutputStream.resetSendTraffic();
        }
    }

    public void safelyQuit() {
        quitWithForce(false);
    }

    public void sendData(SocketData socketData) {
        if (!ismReady()) {
            relSendData(socketData);
            return;
        }
        if (this.mSupportAsyncSend || Thread.currentThread() == this.mSendHandler) {
            relSendData(socketData);
            return;
        }
        if (this.mIsClient && socketData.isBlockData()) {
            SocketBlockData socketBlockData = (SocketBlockData) socketData;
            synchronized (this.LOCK) {
                try {
                    if (socketBlockData.mStatus == 0) {
                        this.mBlockDataRefCount++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        addSocketPackage(socketData);
    }

    public void sendSocketPackage(SocketStream.SocketPackage socketPackage) {
        try {
            SocketStream.writeSocketPackage(this.mSendOutputStream, socketPackage);
        } catch (SocketException e) {
            if (SocketMain.DEBUG_SOCKET_PRINT_TRACE) {
                e.printStackTrace();
            }
            this.mErrorMsg = e.getMessage();
            SLog.i(TAG, "e-msg:" + this.mErrorMsg);
            socketError(getSocketErrorCode());
        }
    }

    public void setDataCallback(ChannelDataCallback channelDataCallback) {
        this.dataCallback = channelDataCallback;
    }

    public void setHeartBeat(boolean z) {
        this.isHeartBeat = z;
        updateThreadName();
    }

    public void setListener(ChannelLifeListener channelLifeListener) {
        this.mListener = channelLifeListener;
    }

    public void setSkipComplete(boolean z) {
        this.mSkipComplete = z;
    }

    public void socketError(int i) {
        if (SocketMain.DEBUG_SEND_DATA) {
            SLog.i(TAG, "socketError errorCode:" + i + " mQuit = " + this.mQuit);
        }
        this.mErrorCode = i;
        onSocketTransferCompleted(false);
    }

    public void socketReceiverError(int i) {
        if (SocketMain.DEBUG_SEND_DATA) {
            SLog.i(TAG, "socketReceiverError errorCode:" + i);
        }
        this.mErrorCode = i;
        onSocketTransferCompleted(false);
    }

    public void syncSendData(Runnable runnable) {
    }

    public void waitingTransferCompleted() {
        try {
            if (Thread.currentThread() != this.mSendHandler) {
                sendData(new SocketEndData());
                synchronized (this.WAIT_LOCK) {
                    this.WAIT_LOCK.wait();
                }
                return;
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        synchronized (this.LOCK) {
            try {
                if (this.mBlockDataRefCount == 0) {
                    sendData(new SocketEndData());
                } else {
                    this.mIsWaitingTransferCompleted = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
