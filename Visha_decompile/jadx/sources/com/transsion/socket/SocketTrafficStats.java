package com.transsion.socket;

import android.os.SystemClock;
import android.util.Log;
import com.transsion.socket.internal.LooperExecutor;
import java.util.ArrayList;
import java.util.Iterator;

public class SocketTrafficStats implements SocketTransferChannel.ChannelDataCallback {
    public static final int STATS_ALL = 7;
    public static final int STATS_RECEIVE_CHANNEL = 2;
    public static final int STATS_SEND_CHANNEL = 1;
    public static final int STATS_SEND_PLUS_RECEIVE_CHANNEL = 4;
    static final String TAG = "SocketTrafficStats";
    protected long mFirstReceiveTraffic;
    protected long mFirstSendTraffic;
    protected long mFirstTrafficTime;
    private final long mIntervalDuration;
    private long mIntervalReceiveTraffic;
    private long mIntervalSendTraffic;
    private long mIntervalTrafficTime;
    private final int mStatsType;
    private ArrayList<SocketTransferChannel> mTransferChannels = new ArrayList<>();
    private Object LOCK = new Object();
    protected boolean mStarting = false;
    public Runnable mInternalRun = new Runnable() {
        @Override
        public final void run() {
            this.b.lambda$new$1();
        }
    };
    private long[] mTemp = new long[2];
    private final long MILLIS_SECONDS = 1000;

    public SocketTrafficStats(long j, int i) {
        this.mIntervalDuration = j;
        this.mStatsType = i;
    }

    public void lambda$addSocketTransferChannel$0(SocketTransferChannel socketTransferChannel) {
        if (this.mTransferChannels.contains(socketTransferChannel)) {
            return;
        }
        socketTransferChannel.setDataCallback(this);
        this.mTransferChannels.add(socketTransferChannel);
    }

    public void lambda$new$1() {
        doCalc();
        doInterval();
    }

    private void resetReceiveTraffic() {
        Iterator<SocketTransferChannel> it = this.mTransferChannels.iterator();
        while (it.hasNext()) {
            it.next().resetReceiveTraffic();
        }
    }

    private void resetSendTraffic() {
        Iterator<SocketTransferChannel> it = this.mTransferChannels.iterator();
        while (it.hasNext()) {
            it.next().resetSendTraffic();
        }
    }

    public static long toKB(long j) {
        return j / 1024;
    }

    @Override
    public void OneDataTransferComplete() {
        doCalc();
    }

    public void addSocketTransferChannel(final SocketTransferChannel socketTransferChannel) {
        if (socketTransferChannel == null) {
            return;
        }
        SocketMain.SOCKET_HELP_EXECUTOR.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$addSocketTransferChannel$0(socketTransferChannel);
            }
        });
    }

    public void doCalc() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        long jMax = Math.max(1L, jUptimeMillis - this.mIntervalTrafficTime);
        long jMax2 = Math.max(1L, jUptimeMillis - this.mFirstTrafficTime);
        long currentChannelsSendTraffic = (this.mStatsType & 5) > 0 ? getCurrentChannelsSendTraffic() : 0L;
        long currentChannelsReceiveTraffic = (this.mStatsType & 6) > 0 ? getCurrentChannelsReceiveTraffic() : 0L;
        if ((this.mStatsType & 1) == 1) {
            long j = ((currentChannelsSendTraffic - this.mIntervalSendTraffic) * 1000) / jMax;
            long j2 = currentChannelsSendTraffic - this.mFirstSendTraffic;
            onSendSpeedUpdate(j, (j2 * 1000) / jMax2, j2);
        }
        if ((this.mStatsType & 2) == 2) {
            long j3 = ((currentChannelsReceiveTraffic - this.mIntervalReceiveTraffic) * 1000) / jMax;
            long j4 = currentChannelsReceiveTraffic - this.mFirstReceiveTraffic;
            onReceiveSpeedUpdate(j3, (j4 * 1000) / jMax2, j4);
        }
        if ((this.mStatsType & 4) == 4) {
            long j5 = currentChannelsSendTraffic + currentChannelsReceiveTraffic;
            long j6 = ((j5 - (this.mIntervalSendTraffic + this.mIntervalReceiveTraffic)) * 1000) / jMax;
            long j7 = j5 - (this.mFirstReceiveTraffic + this.mFirstSendTraffic);
            onSendPlusReceiveSpeedUpdate(j6, (1000 * j7) / jMax2, j7);
        }
        if (this.mIntervalSendTraffic != currentChannelsSendTraffic) {
            this.mIntervalSendTraffic = currentChannelsSendTraffic;
        }
        if (this.mIntervalReceiveTraffic != currentChannelsReceiveTraffic) {
            this.mIntervalReceiveTraffic = currentChannelsReceiveTraffic;
        }
        this.mIntervalTrafficTime = jUptimeMillis;
    }

    public void doInterval() {
        synchronized (this.LOCK) {
            try {
                if (this.mStarting) {
                    LooperExecutor looperExecutor = SocketMain.SOCKET_HELP_EXECUTOR;
                    looperExecutor.removeCallbacks(this.mInternalRun);
                    looperExecutor.postDelayed(this.mInternalRun, this.mIntervalDuration);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long getCurrentChannelsReceiveTraffic() {
        Iterator<SocketTransferChannel> it = this.mTransferChannels.iterator();
        long currentReceiveTraffic = 0;
        while (it.hasNext()) {
            currentReceiveTraffic += it.next().getCurrentReceiveTraffic();
        }
        return currentReceiveTraffic;
    }

    public long getCurrentChannelsSendTraffic() {
        Iterator<SocketTransferChannel> it = this.mTransferChannels.iterator();
        long currentSendTraffic = 0;
        while (it.hasNext()) {
            currentSendTraffic += it.next().getCurrentSendTraffic();
        }
        return currentSendTraffic;
    }

    public long getReceiveTrafficBytes() {
        return getCurrentChannelsReceiveTraffic() - this.mFirstReceiveTraffic;
    }

    public long getSendTrafficBytes() {
        return getCurrentChannelsSendTraffic() - this.mFirstSendTraffic;
    }

    public void onReceiveSpeedUpdate(long j, long j2, long j3) {
        if (SocketMain.DEBUG_TRANSFER_SPEED) {
            SLog.d(TAG, "onReceiveSpeedUpdate:" + j + ",averageSpeedPerSecond:" + j2 + ", totalTrafficBytes:" + j3);
        }
    }

    public void onSendPlusReceiveSpeedUpdate(long j, long j2, long j3) {
        if (SocketMain.DEBUG_TRANSFER_SPEED) {
            SLog.d(TAG, "onSendPlusReceiveSpeedUpdate:" + j + ",averageSpeedPerSecond:" + j2 + ", totalTrafficBytes:" + j3);
        }
    }

    public void onSendSpeedUpdate(long j, long j2, long j3) {
        if (SocketMain.DEBUG_TRANSFER_SPEED) {
            SLog.d(TAG, "onSendSpeedUpdate:" + j + ",averageSpeedPerSecond:" + j2 + ", totalTrafficBytes:" + j3);
        }
    }

    public void startTrafficStats() {
        resetReceiveTraffic();
        resetSendTraffic();
        this.mFirstReceiveTraffic = getCurrentChannelsReceiveTraffic();
        long currentChannelsSendTraffic = getCurrentChannelsSendTraffic();
        this.mFirstSendTraffic = currentChannelsSendTraffic;
        this.mIntervalReceiveTraffic = this.mFirstReceiveTraffic;
        this.mIntervalSendTraffic = currentChannelsSendTraffic;
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.mFirstTrafficTime = jUptimeMillis;
        this.mIntervalTrafficTime = jUptimeMillis;
        Log.d(TAG, String.format(" startTrafficStats: mIntervalReceiveTraffic = %s , mFirstTrafficTime = %s ", Long.valueOf(this.mIntervalReceiveTraffic), Long.valueOf(this.mFirstTrafficTime)));
        synchronized (this.LOCK) {
            this.mStarting = true;
            doInterval();
        }
    }

    public void stopTrafficStats() {
        synchronized (this.LOCK) {
            this.mStarting = false;
            SocketMain.SOCKET_HELP_EXECUTOR.removeCallbacks(this.mInternalRun);
        }
        Log.d(TAG, "stopTrafficStats: ");
    }
}
