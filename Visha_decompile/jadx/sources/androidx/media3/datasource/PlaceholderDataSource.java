package androidx.media3.datasource;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.PlaceholderDataSource;
import java.io.IOException;

@UnstableApi
public final class PlaceholderDataSource implements DataSource {
    public static final PlaceholderDataSource INSTANCE = new PlaceholderDataSource();
    public static final DataSource.Factory FACTORY = new DataSource.Factory() {
        @Override
        public final DataSource createDataSource() {
            return PlaceholderDataSource.b();
        }
    };

    private PlaceholderDataSource() {
    }

    public static PlaceholderDataSource b() {
        return new PlaceholderDataSource();
    }

    @Override
    public void addTransferListener(TransferListener transferListener) {
    }

    @Override
    public void close() {
    }

    @Override
    @Nullable
    public Uri getUri() {
        return null;
    }

    @Override
    public long open(DataSpec dataSpec) throws IOException {
        throw new IOException("PlaceholderDataSource cannot be opened");
    }

    @Override
    public int read(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException();
    }
}
