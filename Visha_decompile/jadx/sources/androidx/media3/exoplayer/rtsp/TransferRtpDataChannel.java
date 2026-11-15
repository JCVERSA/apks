package androidx.media3.exoplayer.rtsp;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.BaseDataSource;
import androidx.media3.datasource.DataSpec;
import java.util.Arrays;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

final class TransferRtpDataChannel extends BaseDataSource implements RtpDataChannel, RtspMessageChannel.InterleavedBinaryDataListener {
    private static final String DEFAULT_TCP_TRANSPORT_FORMAT = "RTP/AVP/TCP;unicast;interleaved=%d-%d";
    private int channelNumber;
    private final LinkedBlockingQueue<byte[]> packetQueue;
    private final long pollTimeoutMs;
    private byte[] unreadData;

    public TransferRtpDataChannel(long j) {
        super(true);
        this.pollTimeoutMs = j;
        this.packetQueue = new LinkedBlockingQueue<>();
        this.unreadData = new byte[0];
        this.channelNumber = -1;
    }

    @Override
    public void close() {
    }

    @Override
    public RtspMessageChannel.InterleavedBinaryDataListener getInterleavedBinaryDataListener() {
        return this;
    }

    @Override
    public int getLocalPort() {
        return this.channelNumber;
    }

    @Override
    public String getTransport() {
        Assertions.checkState(this.channelNumber != -1);
        return Util.formatInvariant(DEFAULT_TCP_TRANSPORT_FORMAT, Integer.valueOf(this.channelNumber), Integer.valueOf(this.channelNumber + 1));
    }

    @Override
    @Nullable
    public Uri getUri() {
        return null;
    }

    @Override
    public boolean needsClosingOnLoadCompletion() {
        return false;
    }

    @Override
    public void onInterleavedBinaryDataReceived(byte[] bArr) {
        this.packetQueue.add(bArr);
    }

    @Override
    public long open(DataSpec dataSpec) {
        this.channelNumber = dataSpec.uri.getPort();
        return -1L;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int iMin = Math.min(i2, this.unreadData.length);
        System.arraycopy(this.unreadData, 0, bArr, i, iMin);
        byte[] bArr2 = this.unreadData;
        this.unreadData = Arrays.copyOfRange(bArr2, iMin, bArr2.length);
        if (iMin == i2) {
            return iMin;
        }
        try {
            byte[] bArrPoll = this.packetQueue.poll(this.pollTimeoutMs, TimeUnit.MILLISECONDS);
            if (bArrPoll == null) {
                return -1;
            }
            int iMin2 = Math.min(i2 - iMin, bArrPoll.length);
            System.arraycopy(bArrPoll, 0, bArr, i + iMin, iMin2);
            if (iMin2 < bArrPoll.length) {
                this.unreadData = Arrays.copyOfRange(bArrPoll, iMin2, bArrPoll.length);
            }
            return iMin + iMin2;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return -1;
        }
    }
}
