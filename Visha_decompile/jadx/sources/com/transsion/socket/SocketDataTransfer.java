package com.transsion.socket;

import com.transsion.socket.internal.SocketStream;
import com.transsion.socket.pkgdata.SocketBlockData;
import com.transsion.socket.pkgdata.SocketCodeData;
import com.transsion.socket.pkgdata.SocketConnectData;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.socket.pkgdata.SocketEndData;

public class SocketDataTransfer {
    static final int DEFAULT_CHECK_HEART_TIME = 4000;
    static final int DEFAULT_TIME_OUT = 10000;
    static final String TAG = "SocketDataTransfer";
    boolean isHeartBeat = isHeartBeat();
    boolean mIsSocketServer;

    public SocketDataTransfer(boolean z) {
        this.mIsSocketServer = z;
    }

    public void C_handleSockConnectData(SocketTransferChannel socketTransferChannel, SocketConnectData socketConnectData) {
        if (socketConnectData.mStatus != 2) {
            socketTransferChannel.notifyConnectFail();
        } else if (socketConnectData.isSignalRight()) {
            socketTransferChannel.sendData(socketConnectData.responseSYNData());
            socketTransferChannel.notifyChannelReady();
        }
    }

    public void S_handleSockConnectData(SocketTransferChannel socketTransferChannel, SocketConnectData socketConnectData) {
        byte b = socketConnectData.mStatus;
        if (b == 1) {
            if (socketConnectData.isNeedHeat()) {
                socketTransferChannel.setHeartBeat(socketConnectData.isHeartReq);
            }
            socketTransferChannel.notifyConnectReq(socketConnectData);
        } else if (b != 3) {
            socketTransferChannel.notifyConnectFail();
        } else if (socketConnectData.isSignalRight()) {
            socketTransferChannel.notifyChannelReady();
        }
    }

    public void beforeThreadCreate(SocketTransferChannel socketTransferChannel) {
    }

    public final void beginReceiveSocketData(SocketTransferChannel socketTransferChannel) {
        onBeginReceiveSocketData(socketTransferChannel);
    }

    public final void endReceiveOneSocketData(SocketTransferChannel socketTransferChannel) {
        onEndReceiveOneSocketData(socketTransferChannel);
    }

    public SocketConnectData getConnectData(SocketTransferChannel socketTransferChannel) {
        SocketConnectData socketConnectData = new SocketConnectData();
        if (isHeartBeat()) {
            socketConnectData.setVersion(getVersion()).setHeartReq(true);
        }
        return socketConnectData;
    }

    public int getVersion() {
        return SocketMain.getSocketVersion();
    }

    public void handleSocketClientBlockData(SocketTransferChannel socketTransferChannel, SocketBlockData socketBlockData) {
        byte b = socketBlockData.mStatus;
        if (b == 1) {
            socketTransferChannel.sendData(socketBlockData.requestBlockData());
        } else {
            if (b != 3) {
                return;
            }
            socketTransferChannel.checkBlockDataRefAndQuit();
        }
    }

    public void handleSocketServerBlockData(SocketTransferChannel socketTransferChannel, SocketBlockData socketBlockData) {
        byte b = socketBlockData.mStatus;
        if (b == 0) {
            socketTransferChannel.sendData(socketBlockData.responseInitRequest());
        } else {
            if (b != 2) {
                return;
            }
            socketTransferChannel.sendData(socketBlockData.responseFinish());
        }
    }

    public boolean isHeartBeat() {
        return false;
    }

    public void onBeginReceiveSocketData(SocketTransferChannel socketTransferChannel) {
    }

    public void onEndReceiveOneSocketData(SocketTransferChannel socketTransferChannel) {
    }

    public void onReadySendSocketData(SocketTransferChannel socketTransferChannel) {
    }

    public void onReceiveEmptyPackageData(SocketTransferChannel socketTransferChannel, SocketStream.SocketPackage socketPackage) {
        if (SocketMain.DEBUG_DATA_TRANSFER) {
            SLog.d(TAG, "receiveEmptyPackageData mClazzType:" + ((int) socketPackage.mClazzType) + ", size:" + socketPackage.mSize);
        }
    }

    public void onReceiveErrorCodePackageData(SocketTransferChannel socketTransferChannel, SocketCodeData socketCodeData) {
        if (SocketMain.DEBUG_DATA_TRANSFER) {
            SLog.d(TAG, "onReceiveErrorCodePackageData type:" + socketCodeData.mCode);
        }
    }

    public void onReceiveFinish() {
    }

    public void onReceiveSocketData(SocketTransferChannel socketTransferChannel, SocketData socketData) {
    }

    public void onSocketHeartBeatTimeOut(SocketTransferChannel socketTransferChannel) {
        if (SocketMain.DEBUG_SOCKET_HEARTBEAT) {
            SLog.d(TAG, "onSocketHeartBeatTimeOut channel:");
        }
    }

    public void onSocketTransferCompleted(SocketTransferChannel socketTransferChannel, boolean z) {
    }

    public boolean onSupportAsyncSendData() {
        return false;
    }

    public final void receiveSocketData(SocketTransferChannel socketTransferChannel, SocketStream.SocketPackage socketPackage) {
        SocketData socketData = socketPackage.toSocketData();
        byte b = socketPackage.mClazzType;
        if (socketData != null) {
            receiveSocketData(socketTransferChannel, socketData);
        } else if (this.mIsSocketServer && b == -127) {
            socketTransferChannel.sendSocketPackage(SocketStream.SocketPackage.HEART_BEAT_PACKAGE);
        } else {
            onReceiveEmptyPackageData(socketTransferChannel, socketPackage);
        }
    }

    public int serverCheckHeartBeatTime() {
        return 4000;
    }

    public int socketTimeOut() {
        return 10000;
    }

    public final void receiveSocketData(SocketTransferChannel socketTransferChannel, SocketData socketData) {
        if (socketData == null) {
            return;
        }
        SLog.d(TAG, " receiveSocketData " + socketData);
        if (socketData.onClazzType() == -125) {
            SocketConnectData socketConnectData = (SocketConnectData) socketData;
            if (this.mIsSocketServer) {
                S_handleSockConnectData(socketTransferChannel, socketConnectData);
                return;
            } else {
                C_handleSockConnectData(socketTransferChannel, socketConnectData);
                return;
            }
        }
        if (socketData.isBlockData()) {
            SocketBlockData socketBlockData = (SocketBlockData) socketData;
            if (this.mIsSocketServer) {
                handleSocketServerBlockData(socketTransferChannel, socketBlockData);
                return;
            } else {
                handleSocketClientBlockData(socketTransferChannel, socketBlockData);
                return;
            }
        }
        if (socketData.onClazzType() == -115) {
            onReceiveErrorCodePackageData(socketTransferChannel, (SocketCodeData) socketData);
            return;
        }
        if (socketData.onClazzType() == -128) {
            SocketEndData socketEndData = (SocketEndData) socketData;
            byte b = socketEndData.mFlag;
            if (b == 0) {
                socketEndData.mFlag = (byte) 1;
                socketTransferChannel.sendData(socketEndData);
                socketTransferChannel.flagWaitingSocketEnd();
                return;
            } else {
                if (b == 1) {
                    socketEndData.mFlag = (byte) 2;
                    socketTransferChannel.sendData(socketEndData);
                }
                onReceiveFinish();
                return;
            }
        }
        onReceiveSocketData(socketTransferChannel, socketData);
    }
}
