package com.hunantv.media.player.datasource;

import com.hunantv.media.player.libnative.IMediaDataSource;
import com.hunantv.media.player.libnative.ImgoRtmpClient;
import java.io.IOException;

public class a implements IMediaDataSource {
    private final ImgoRtmpClient a = new ImgoRtmpClient();
    private String b;

    public void a(String str) {
        this.b = str;
    }

    public int b(String str) {
        return this.a.open(str);
    }

    @Override
    public void close() {
        this.a.close();
    }

    @Override
    public long getSize() throws IOException {
        b(this.b);
        return -1L;
    }

    @Override
    public int readAt(long j, byte[] bArr, int i, int i2) throws IOException {
        return this.a.read(bArr, i, i2);
    }
}
