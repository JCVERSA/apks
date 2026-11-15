package defpackage;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

public final class cne extends FilterInputStream {
    public final HttpURLConnection b;

    /* JADX WARN: Illegal instructions before constructor call */
    public cne(HttpURLConnection httpURLConnection) {
        InputStream errorStream;
        try {
            errorStream = httpURLConnection.getInputStream();
        } catch (IOException unused) {
            errorStream = httpURLConnection.getErrorStream();
        }
        super(errorStream);
        this.b = httpURLConnection;
    }

    @Override
    public final void close() throws IOException {
        super.close();
        this.b.disconnect();
    }
}
