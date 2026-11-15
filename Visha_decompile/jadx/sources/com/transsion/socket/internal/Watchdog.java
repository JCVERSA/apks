package com.transsion.socket.internal;

import android.os.SystemClock;

public class Watchdog {
    private long mHeartBeatInternal;
    private boolean mQuit;
    ISocketWatchdog mSocketWatchdog;
    private boolean mTimeOutQuit;

    public interface ISocketWatchdog {
        boolean isTimeOut();

        void onCallHeartBeat();

        void onTimeOut();
    }

    public Watchdog(long j, ISocketWatchdog iSocketWatchdog, boolean z) {
        this.mTimeOutQuit = z;
        this.mHeartBeatInternal = Math.max(j, 1L);
        this.mSocketWatchdog = iSocketWatchdog == null ? new ISocketWatchdog() {
            @Override
            public boolean isTimeOut() {
                return false;
            }

            @Override
            public void onCallHeartBeat() {
            }

            @Override
            public void onTimeOut() {
            }
        } : iSocketWatchdog;
    }

    public void quit() {
        this.mQuit = true;
    }

    public void run() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        while (!this.mQuit) {
            this.mSocketWatchdog.onCallHeartBeat();
            waitTime(this.mHeartBeatInternal - (SystemClock.uptimeMillis() - jUptimeMillis));
            jUptimeMillis += this.mHeartBeatInternal;
            if (this.mSocketWatchdog.isTimeOut()) {
                this.mSocketWatchdog.onTimeOut();
                if (this.mTimeOutQuit) {
                    quit();
                }
            }
        }
    }

    public void waitTime(long j) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        while (true) {
            long jUptimeMillis2 = j - (SystemClock.uptimeMillis() - jUptimeMillis);
            if (jUptimeMillis2 <= 0) {
                return;
            }
            try {
                synchronized (this) {
                    try {
                        wait(jUptimeMillis2);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
