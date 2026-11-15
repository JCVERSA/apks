package com.transsion.socket.internal;

import android.os.SystemClock;
import com.transsion.socket.SLog;
import com.transsion.socket.SocketClient;
import com.transsion.socket.SocketDataTransfer;
import com.transsion.socket.SocketMain;
import com.transsion.socket.SocketTransferChannel;
import java.util.ArrayList;

public class SocketHeartBeat extends Thread {
    static final String TAG = "SocketHeartBeat";
    SocketDataTransfer mHeartBeatSocketDataTransfer;
    SocketClient mSocketClient;
    ISocketHeartBeat mSocketHeartBeat;
    Watchdog.ISocketWatchdog mSocketWatchdog;
    long mTimeOut;
    Watchdog mWatchdog;
    final int STEP_INTERNAL = 5;
    ArrayList<Long> mHeartBeatTimeList = new ArrayList<>();

    public interface IServerHeartBeat {
        void onSocketError(int i);

        void onSocketTimeout(SocketTransferChannel socketTransferChannel);
    }

    public interface ISocketHeartBeat {
        void onSocketError(SocketClient socketClient, int i);

        void onSocketTimeout(SocketClient socketClient);
    }

    public SocketHeartBeat(SocketClient socketClient, long j, ISocketHeartBeat iSocketHeartBeat) {
        this.mSocketHeartBeat = iSocketHeartBeat;
        this.mSocketClient = socketClient;
        this.mTimeOut = j;
        Watchdog.ISocketWatchdog iSocketWatchdog = new Watchdog.ISocketWatchdog() {
            @Override
            public boolean isTimeOut() {
                boolean z;
                long jUptimeMillis = SystemClock.uptimeMillis();
                SocketHeartBeat socketHeartBeat = SocketHeartBeat.this;
                long j2 = jUptimeMillis - socketHeartBeat.mTimeOut;
                synchronized (socketHeartBeat.mHeartBeatTimeList) {
                    try {
                        z = true;
                        for (int size = SocketHeartBeat.this.mHeartBeatTimeList.size() - 1; size >= 0; size--) {
                            if (SocketHeartBeat.this.mHeartBeatTimeList.get(size).longValue() < j2) {
                                SocketHeartBeat.this.mHeartBeatTimeList.remove(size);
                            }
                        }
                        if (SocketHeartBeat.this.mHeartBeatTimeList.size() != 0) {
                            z = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return z;
            }

            @Override
            public void onCallHeartBeat() {
                if (SocketMain.DEBUG_SOCKET_HEARTBEAT) {
                    SLog.d(SocketHeartBeat.TAG, "SocketHeartBeat==count=" + SocketHeartBeat.this.mHeartBeatTimeList.size());
                }
                SocketTransferChannel heatBeatTransferChannel = SocketHeartBeat.this.mSocketClient.getHeatBeatTransferChannel();
                if (heatBeatTransferChannel == null) {
                    SLog.d(SocketHeartBeat.TAG, "SocketHeartBeat==socketTransferChannel is null ");
                } else {
                    heatBeatTransferChannel.sendSocketPackage(SocketStream.SocketPackage.HEART_BEAT_PACKAGE);
                }
            }

            @Override
            public void onTimeOut() {
                SocketHeartBeat socketHeartBeat = SocketHeartBeat.this;
                ISocketHeartBeat iSocketHeartBeat2 = socketHeartBeat.mSocketHeartBeat;
                if (iSocketHeartBeat2 != null) {
                    iSocketHeartBeat2.onSocketTimeout(socketHeartBeat.mSocketClient);
                }
                SocketHeartBeat.this.quit();
            }
        };
        this.mSocketWatchdog = iSocketWatchdog;
        this.mWatchdog = new Watchdog(j / 5, iSocketWatchdog, true);
    }

    public SocketDataTransfer getHeartSocketDataTransfer() {
        if (this.mHeartBeatSocketDataTransfer == null) {
            this.mHeartBeatSocketDataTransfer = new SocketDataTransfer(false) {
                @Override
                public boolean isHeartBeat() {
                    return true;
                }

                @Override
                public void onReceiveEmptyPackageData(SocketTransferChannel socketTransferChannel, SocketStream.SocketPackage socketPackage) {
                    if (SocketMain.DEBUG_SOCKET_HEARTBEAT) {
                        SLog.d(SocketHeartBeat.TAG, "receiveSocketData=========mClazzType=" + ((int) socketPackage.mClazzType));
                    }
                    if (socketPackage.mClazzType == -127) {
                        synchronized (SocketHeartBeat.this.mHeartBeatTimeList) {
                            SocketHeartBeat.this.mHeartBeatTimeList.add(Long.valueOf(SystemClock.uptimeMillis()));
                        }
                    }
                }

                @Override
                public void onSocketTransferCompleted(SocketTransferChannel socketTransferChannel, boolean z) {
                    if (z) {
                        return;
                    }
                    SocketHeartBeat.this.notifySocketError(socketTransferChannel.getErrorCode());
                }
            };
        }
        return this.mHeartBeatSocketDataTransfer;
    }

    public void notifySocketError(int i) {
        ISocketHeartBeat iSocketHeartBeat = this.mSocketHeartBeat;
        if (iSocketHeartBeat != null) {
            iSocketHeartBeat.onSocketError(this.mSocketClient, i);
        }
        quit();
    }

    public void quit() {
        this.mWatchdog.quit();
    }

    @Override
    public void run() {
        synchronized (this.mHeartBeatTimeList) {
            this.mHeartBeatTimeList.add(Long.valueOf(SystemClock.uptimeMillis()));
        }
        this.mWatchdog.run();
    }
}
