package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;

public final class DummyDataSource implements DataSource {
    public static final DummyDataSource INSTANCE = new DummyDataSource();
    public static final DataSource.Factory FACTORY = new DataSource.Factory() {
        @Override
        public DataSource createDataSource() {
            return new DummyDataSource();
        }
    };

    private DummyDataSource() {
    }

    @Override
    public void close() throws IOException {
    }

    @Override
    public Uri getUri() {
        return null;
    }

    @Override
    public long open(DataSpec dataSpec) throws IOException {
        throw new IOException("Dummy source");
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        throw new UnsupportedOperationException();
    }
}
