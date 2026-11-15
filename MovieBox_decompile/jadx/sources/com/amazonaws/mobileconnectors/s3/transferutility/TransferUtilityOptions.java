package com.amazonaws.mobileconnectors.s3.transferutility;

import java.io.Serializable;

public class TransferUtilityOptions implements Serializable {
    private static final int MILLIS_IN_MINUTE = 60000;
    private static final long serialVersionUID = 1;
    private TransferNetworkConnectionType transferNetworkConnectionType;

    @Deprecated
    private long transferServiceCheckTimeInterval;
    private int transferThreadPoolSize;

    public TransferUtilityOptions() {
        this.transferServiceCheckTimeInterval = getDefaultCheckTimeInterval();
        this.transferThreadPoolSize = getDefaultThreadPoolSize();
        this.transferNetworkConnectionType = getDefaultTransferNetworkConnectionType();
    }

    @Deprecated
    static long getDefaultCheckTimeInterval() {
        return 60000L;
    }

    static int getDefaultThreadPoolSize() {
        return (Runtime.getRuntime().availableProcessors() + 1) * 2;
    }

    static TransferNetworkConnectionType getDefaultTransferNetworkConnectionType() {
        return TransferNetworkConnectionType.ANY;
    }

    public TransferNetworkConnectionType getTransferNetworkConnectionType() {
        return this.transferNetworkConnectionType;
    }

    @Deprecated
    public long getTransferServiceCheckTimeInterval() {
        return this.transferServiceCheckTimeInterval;
    }

    public int getTransferThreadPoolSize() {
        return this.transferThreadPoolSize;
    }

    public void setTransferThreadPoolSize(int i10) {
        if (i10 < 0) {
            this.transferThreadPoolSize = getDefaultThreadPoolSize();
        } else {
            this.transferThreadPoolSize = i10;
        }
    }

    public TransferUtilityOptions(int i10, TransferNetworkConnectionType transferNetworkConnectionType) {
        this.transferServiceCheckTimeInterval = getDefaultCheckTimeInterval();
        this.transferThreadPoolSize = i10;
        this.transferNetworkConnectionType = transferNetworkConnectionType;
    }

    @Deprecated
    public void setTransferServiceCheckTimeInterval(long j10) {
    }
}
