package com.bytedance.sdk.component.sP.Sj.Sj.Sj;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

public class vS extends InputStream {
    InputStream Sj;
    HttpURLConnection sP;

    public vS(InputStream inputStream, HttpURLConnection httpURLConnection) {
        this.Sj = inputStream;
        this.sP = httpURLConnection;
    }

    @Override
    public int available() throws IOException {
        InputStream inputStream = this.Sj;
        if (inputStream != null) {
            return inputStream.available();
        }
        return 0;
    }

    @Override
    public void close() throws IOException {
        InputStream inputStream = this.Sj;
        if (inputStream != null) {
            inputStream.close();
            this.Sj = null;
        }
        HttpURLConnection httpURLConnection = this.sP;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.sP = null;
        }
    }

    @Override
    public synchronized void mark(int i10) {
        InputStream inputStream = this.Sj;
        if (inputStream != null) {
            inputStream.mark(i10);
        }
    }

    @Override
    public boolean markSupported() {
        InputStream inputStream = this.Sj;
        if (inputStream != null) {
            return inputStream.markSupported();
        }
        return false;
    }

    @Override
    public int read() throws IOException {
        InputStream inputStream = this.Sj;
        if (inputStream != null) {
            return inputStream.read();
        }
        return 0;
    }

    @Override
    public void reset() throws IOException {
        InputStream inputStream = this.Sj;
        if (inputStream != null) {
            inputStream.reset();
        }
    }

    @Override
    public long skip(long j10) throws IOException {
        InputStream inputStream = this.Sj;
        if (inputStream != null) {
            return inputStream.skip(j10);
        }
        return 0L;
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        InputStream inputStream = this.Sj;
        if (inputStream != null) {
            return inputStream.read(bArr);
        }
        return 0;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        InputStream inputStream = this.Sj;
        if (inputStream != null) {
            return inputStream.read(bArr, i10, i11);
        }
        return 0;
    }
}
