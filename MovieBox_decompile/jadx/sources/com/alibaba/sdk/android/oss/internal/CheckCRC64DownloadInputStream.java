package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;

public class CheckCRC64DownloadInputStream extends CheckedInputStream {
    private long mClientCRC64;
    private String mRequestId;
    private long mServerCRC64;
    private long mTotalBytesRead;
    private long mTotalLength;

    public CheckCRC64DownloadInputStream(InputStream inputStream, Checksum checksum, long j10, long j11, String str) {
        super(inputStream, checksum);
        this.mTotalLength = j10;
        this.mServerCRC64 = j11;
        this.mRequestId = str;
    }

    private void checkCRC64(int i10) throws IOException {
        long j10 = this.mTotalBytesRead + ((long) i10);
        this.mTotalBytesRead = j10;
        if (j10 >= this.mTotalLength) {
            long value = getChecksum().getValue();
            this.mClientCRC64 = value;
            OSSUtils.checkChecksum(Long.valueOf(value), Long.valueOf(this.mServerCRC64), this.mRequestId);
        }
    }

    public long getClientCRC64() {
        return this.mClientCRC64;
    }

    @Override
    public int read() throws IOException {
        int i10 = super.read();
        checkCRC64(i10);
        return i10;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = super.read(bArr, i10, i11);
        checkCRC64(i12);
        return i12;
    }
}
