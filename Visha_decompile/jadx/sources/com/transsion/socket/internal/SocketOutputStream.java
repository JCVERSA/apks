package com.transsion.socket.internal;

import java.io.DataOutputStream;
import java.io.OutputStream;

public class SocketOutputStream extends DataOutputStream {
    private int MAX_ADD_COUNT;
    private long mOnceTotalCount;
    private long mRelCount;
    private boolean mSkip;
    private boolean stopCount;

    public SocketOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.MAX_ADD_COUNT = 1073741823;
        this.mRelCount = 0L;
        this.mOnceTotalCount = 0L;
        this.stopCount = false;
        this.mSkip = false;
    }

    public long getOutputSize() {
        if (this.stopCount) {
            return this.mOnceTotalCount;
        }
        int i = ((DataOutputStream) this).written;
        if (i > this.MAX_ADD_COUNT) {
            ((DataOutputStream) this).written = 0;
            this.mRelCount += (long) i;
            while (((DataOutputStream) this).written > this.MAX_ADD_COUNT) {
                ((DataOutputStream) this).written = 0;
            }
            i = 0;
        }
        return this.mRelCount + ((long) i);
    }

    public void resetSendTraffic() {
        this.mRelCount = 0L;
        ((DataOutputStream) this).written = 0;
        this.mOnceTotalCount = 0L;
        setStopCount(false);
    }

    public void setStopCount(boolean z) {
        this.stopCount = z;
    }

    public void stopSendCount() {
        this.mOnceTotalCount = getOutputSize();
        setStopCount(true);
    }
}
