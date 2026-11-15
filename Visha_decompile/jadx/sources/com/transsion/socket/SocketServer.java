package com.transsion.socket;

import android.util.Log;
import com.transsion.socket.SocketTransferChannel;
import com.transsion.socket.internal.SocketHeartBeat;
import com.transsion.socket.internal.SocketThreadHandler;
import com.transsion.socket.internal.SocketUtils;
import com.transsion.socket.pkgdata.SocketConnectData;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public abstract class SocketServer implements SocketTransferChannel.ChannelLifeListener {
    public static final long DURATION_RETRY = 500;
    public static final int MAX_RETRY_OPEN = 3;
    static final String TAG = "SocketServer";
    protected final int mPort;
    private SocketHeartBeat.IServerHeartBeat mServerHeartBeat;
    ServerSocket mServerSocket;
    SocketThreadHandler mSocketThreadHandler;
    public static final int MAX_SOCKET_NUM = (Runtime.getRuntime().availableProcessors() * 2) + 2;
    public static final Object LOCK = new Object();
    final ArrayList<SocketTransferChannel> mSocketChanelList = new ArrayList<>();
    Set<String> ipSets = new HashSet();
    boolean mBound = false;
    boolean mQuit = false;
    final boolean BLOCKING_OPEN = true;

    public SocketServer(int i) {
        this.mPort = i;
    }

    public void handNewClientReq(boolean z, SocketTransferChannel socketTransferChannel, SocketConnectData socketConnectData) {
        try {
            SLog.d(TAG, "socket connected:" + socketTransferChannel.getSocket() + ",accept = " + z);
            if (z) {
                socketTransferChannel.sendData(socketConnectData.responseReqData());
            } else {
                socketTransferChannel.setSkipComplete(true);
                socketTransferChannel.sendData(socketConnectData.refuse(true));
                socketTransferChannel.notifyConnectFail();
                onChannelQuitInternal(socketTransferChannel);
            }
        } catch (Exception unused) {
        }
    }

    private void mayAskUser(SocketTransferChannel socketTransferChannel, SocketConnectData socketConnectData) {
        if (ifNoRemind()) {
            handNewClientReq(true, socketTransferChannel, socketConnectData);
        } else {
            onNewClientRequest(socketTransferChannel, socketConnectData, new Action3() {
                @Override
                public final void accept(Object obj, Object obj2, Object obj3) {
                    this.a.handNewClientReq(((Boolean) obj).booleanValue(), (SocketTransferChannel) obj2, (SocketConnectData) obj3);
                }
            });
        }
    }

    private void onChannelQuitInternal(SocketTransferChannel socketTransferChannel) {
        boolean z;
        String string = socketTransferChannel.getSocket().getInetAddress().toString();
        synchronized (LOCK) {
            try {
                this.mSocketChanelList.remove(socketTransferChannel);
                z = true;
                for (int size = this.mSocketChanelList.size() - 1; size >= 0; size--) {
                    if (string.equals(this.mSocketChanelList.get(size).getSocket().getInetAddress().toString())) {
                        z = false;
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            this.ipSets.remove(string);
        }
    }

    public SocketHeartBeat.IServerHeartBeat createHeadBeatCallBack() {
        return null;
    }

    public abstract SocketDataTransfer createSocketDataReceiver();

    public void dump(PrintWriter printWriter) {
        printWriter.println("\t mSocketChanelList = " + this.mSocketChanelList.toString());
        printWriter.println("\t ipSets = " + this.ipSets);
    }

    public ServerSocket getServerSocket() {
        return this.mServerSocket;
    }

    public boolean ifNoRemind() {
        return true;
    }

    public boolean isQuit() {
        ServerSocket serverSocket;
        synchronized (LOCK) {
            try {
                if (!this.mQuit && (serverSocket = this.mServerSocket) != null) {
                    if (!serverSocket.isClosed() && this.mServerSocket.isBound()) {
                        return false;
                    }
                    release();
                    return true;
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isSocketBound() {
        return this.mBound && this.mServerSocket.isBound();
    }

    public boolean isSupportMultiClient() {
        return false;
    }

    @Override
    public void onChannelQuit(SocketTransferChannel socketTransferChannel) {
        SLog.d(TAG, " onChannelQuit ");
        socketTransferChannel.mayRegisterHeartCallback(null);
        onChannelQuitInternal(socketTransferChannel);
    }

    @Override
    public void onChannelReady(SocketTransferChannel socketTransferChannel) {
        SLog.d(TAG, "=============onConnectSuccess====");
        this.ipSets.add(socketTransferChannel.getSocket().getInetAddress().toString());
        socketTransferChannel.mayRegisterHeartCallback(this.mServerHeartBeat);
    }

    @Override
    public void onChannelTimeout(SocketTransferChannel socketTransferChannel) {
        SLog.d(TAG, "onChannelTimeout " + socketTransferChannel.getSocket().getInetAddress().toString());
        synchronized (LOCK) {
            try {
                String string = socketTransferChannel.getSocket().getInetAddress().toString();
                this.mSocketChanelList.remove(socketTransferChannel);
                for (int size = this.mSocketChanelList.size() - 1; size >= 0; size--) {
                    SocketTransferChannel socketTransferChannel2 = this.mSocketChanelList.get(size);
                    if (string.equals(socketTransferChannel2.getSocket().getInetAddress().toString())) {
                        socketTransferChannel2.quit();
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onClientReq(SocketTransferChannel socketTransferChannel, SocketConnectData socketConnectData) {
        if (this.ipSets.contains(socketTransferChannel.getSocket().getInetAddress().toString())) {
            handNewClientReq(true, socketTransferChannel, socketConnectData);
        } else if (isSupportMultiClient() || this.ipSets.size() == 0) {
            mayAskUser(socketTransferChannel, socketConnectData);
        } else {
            handNewClientReq(false, socketTransferChannel, socketConnectData);
        }
    }

    public void onNewClientRequest(SocketTransferChannel socketTransferChannel, SocketConnectData socketConnectData, Action3<Boolean, SocketTransferChannel, SocketConnectData> action3) {
        action3.accept(Boolean.TRUE, socketTransferChannel, socketConnectData);
    }

    public void onSocketServerCreateFail(int i) {
        SLog.w(TAG, "onSocketServerCreateFail:" + i + ", mQuit:" + this.mQuit);
    }

    public void openAcceptSocket() {
        try {
            Socket socketAccept = this.mServerSocket.accept();
            synchronized (LOCK) {
                try {
                    if (this.mQuit) {
                        SocketUtils.close(socketAccept);
                        return;
                    }
                    if (this.mSocketChanelList.size() < MAX_SOCKET_NUM) {
                        SocketTransferChannel socketTransferChannel = new SocketTransferChannel(socketAccept, createSocketDataReceiver());
                        socketTransferChannel.setListener(this);
                        this.mSocketChanelList.add(socketTransferChannel);
                    } else {
                        Log.d(TAG, "openAcceptSocket: " + this.mSocketChanelList.size());
                        SocketUtils.close(socketAccept);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            quit();
        }
    }

    public boolean openSocket() {
        this.mServerHeartBeat = createHeadBeatCallBack();
        SLog.i(TAG, "openSocket: mBound " + this.mBound);
        if (this.mBound) {
            onSocketServerCreateFail(100);
            return false;
        }
        SLog.i(TAG, "openSocket:" + this.mPort + ", mQuit:" + this.mQuit);
        try {
            synchronized (LOCK) {
                try {
                    if (this.mQuit) {
                        return false;
                    }
                    SLog.i(TAG, "openSocket:new ServerSocket()");
                    ServerSocket serverSocket = new ServerSocket();
                    this.mServerSocket = serverSocket;
                    serverSocket.setReuseAddress(true);
                    this.mServerSocket.bind(new InetSocketAddress(this.mPort));
                    this.mBound = true;
                    while (!this.mQuit) {
                        SLog.i(TAG, "openSocket:openAcceptSocket");
                        openAcceptSocket();
                    }
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (IOException e) {
            SLog.i(TAG, "openSocket: IOException: " + e.toString());
            onSocketServerCreateFail(101);
            return false;
        }
    }

    public void quit() {
        SLog.w(TAG, "quit:" + this.mQuit);
        synchronized (LOCK) {
            try {
                if (this.mQuit) {
                    return;
                }
                this.mQuit = true;
                SocketThreadHandler socketThreadHandler = this.mSocketThreadHandler;
                if (socketThreadHandler != null) {
                    socketThreadHandler.safelyQuit();
                }
                for (int size = this.mSocketChanelList.size() - 1; size >= 0; size--) {
                    this.mSocketChanelList.get(size).safelyQuit();
                }
                this.mSocketChanelList.clear();
                this.mServerHeartBeat = null;
                this.ipSets.clear();
                try {
                    try {
                        ServerSocket serverSocket = this.mServerSocket;
                        if (serverSocket == null) {
                            this.mBound = false;
                        } else {
                            serverSocket.close();
                            this.mBound = false;
                        }
                    } catch (Throwable th) {
                        this.mBound = false;
                        throw th;
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void registerHearBeat(SocketHeartBeat.IServerHeartBeat iServerHeartBeat) {
        this.mServerHeartBeat = iServerHeartBeat;
    }

    public void release() {
        quit();
    }

    public void runSocket(SocketThreadHandler socketThreadHandler) {
        while (socketThreadHandler.isThreadRunning()) {
            openAcceptSocket();
        }
    }

    public void waitingBound() {
        while (!this.mBound && !this.mQuit) {
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
