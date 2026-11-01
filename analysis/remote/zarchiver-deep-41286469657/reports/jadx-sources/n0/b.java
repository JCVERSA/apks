package n0;

import android.content.ContentResolver;
import android.net.Uri;
import android.provider.DocumentsContract;
import java.io.IOException;
import java.io.OutputStream;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.io.SAF;

public final class b extends OutputStream {

    public final OutputStream f1233a;

    public final Uri f1234b;

    public final Uri f1235c;

    public final String f1236d;

    public final boolean f1237e;

    public final Object f1238f = new Object();

    public volatile boolean f1239g = false;

    public b(OutputStream outputStream, Uri uri, Uri uri2, String str, boolean z2) {
        this.f1233a = outputStream;
        this.f1234b = uri;
        this.f1235c = uri2;
        this.f1236d = str;
        this.f1237e = z2;
    }

    @Override
    public final void close() throws IOException {
        synchronized (this.f1238f) {
            if (this.f1239g) {
                return;
            }
            this.f1239g = true;
            this.f1233a.close();
            Uri uriK = SAF.k(0, this.f1236d);
            ContentResolver contentResolverA = ZApp.a();
            try {
                try {
                    if (this.f1237e) {
                        DocumentsContract.deleteDocument(contentResolverA, SAF.k(0, this.f1236d + '/' + a0.c.y(this.f1234b.getPath())));
                    }
                    DocumentsContract.moveDocument(contentResolverA, this.f1234b, this.f1235c, uriK);
                } catch (IllegalStateException e2) {
                    String message = e2.getMessage();
                    if (message == null || !message.contains("Already exists")) {
                        return;
                    }
                    DocumentsContract.deleteDocument(contentResolverA, SAF.k(0, this.f1236d + '/' + a0.c.y(this.f1234b.getPath())));
                    DocumentsContract.moveDocument(contentResolverA, this.f1234b, this.f1235c, uriK);
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void finalize() throws IOException {
        close();
    }

    @Override
    public final void flush() throws IOException {
        this.f1233a.flush();
    }

    @Override
    public final void write(int i2) throws IOException {
        this.f1233a.write(i2);
    }

    @Override
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        this.f1233a.write(bArr, i2, i3);
    }
}
