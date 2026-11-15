package androidx.media3.datasource.rtmp;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.BaseDataSource;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import io.antmedia.rtmp_client.RtmpClient;
import java.io.IOException;

@UnstableApi
public final class RtmpDataSource extends BaseDataSource {
    public static final int a = 0;

    @Nullable
    private RtmpClient rtmpClient;

    @Nullable
    private Uri uri;

    public static final class Factory implements DataSource.Factory {

        @Nullable
        private TransferListener transferListener;

        public Factory setTransferListener(@Nullable TransferListener transferListener) {
            this.transferListener = transferListener;
            return this;
        }

        @Override
        public RtmpDataSource createDataSource() {
            RtmpDataSource rtmpDataSource = new RtmpDataSource();
            TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                rtmpDataSource.addTransferListener(transferListener);
            }
            return rtmpDataSource;
        }
    }

    static {
        MediaLibraryInfo.registerModule("media3.datasource.rtmp");
    }

    public RtmpDataSource() {
        super(true);
    }

    @Override
    public void close() {
        if (this.uri != null) {
            this.uri = null;
            transferEnded();
        }
        RtmpClient rtmpClient = this.rtmpClient;
        if (rtmpClient != null) {
            rtmpClient.a();
            this.rtmpClient = null;
        }
    }

    @Override
    @Nullable
    public Uri getUri() {
        return this.uri;
    }

    @Override
    public long open(DataSpec dataSpec) throws RtmpClient.RtmpIOException {
        transferInitializing(dataSpec);
        RtmpClient rtmpClient = new RtmpClient();
        this.rtmpClient = rtmpClient;
        rtmpClient.b(dataSpec.uri.toString(), false);
        this.uri = dataSpec.uri;
        transferStarted(dataSpec);
        return -1L;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int iC = ((RtmpClient) Util.castNonNull(this.rtmpClient)).c(bArr, i, i2);
        if (iC == -1) {
            return -1;
        }
        bytesTransferred(iC);
        return iC;
    }
}
