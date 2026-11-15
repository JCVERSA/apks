package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class yx4 implements Closeable {
    public final URL b;
    public volatile Future c;
    public xda d;

    public yx4(URL url) {
        this.b = url;
    }

    public static yx4 e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new yx4(new URL(str));
        } catch (MalformedURLException unused) {
            Log.w("FirebaseMessaging", "Not downloading image, bad URL: " + str);
            return null;
        }
    }

    public Bitmap b() throws IOException {
        if (Log.isLoggable("FirebaseMessaging", 4)) {
            Log.i("FirebaseMessaging", "Starting download of: " + this.b);
        }
        byte[] bArrD = d();
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrD, 0, bArrD.length);
        if (bitmapDecodeByteArray == null) {
            throw new IOException("Failed to decode image: " + this.b);
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Successfully downloaded image: " + this.b);
        }
        return bitmapDecodeByteArray;
    }

    @Override
    public void close() {
        this.c.cancel(true);
    }

    public final byte[] d() throws IOException {
        URLConnection uRLConnectionOpenConnection = this.b.openConnection();
        if (uRLConnectionOpenConnection.getContentLength() > 1048576) {
            throw new IOException("Content-Length exceeds max size of 1048576");
        }
        InputStream inputStream = uRLConnectionOpenConnection.getInputStream();
        try {
            byte[] bArrD = no0.d(no0.b(inputStream, 1048577L));
            if (inputStream != null) {
                inputStream.close();
            }
            if (Log.isLoggable("FirebaseMessaging", 2)) {
                Log.v("FirebaseMessaging", "Downloaded " + bArrD.length + " bytes from " + this.b);
            }
            if (bArrD.length <= 1048576) {
                return bArrD;
            }
            throw new IOException("Image exceeds max size of 1048576");
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public xda g() {
        return (xda) wd8.l(this.d);
    }

    public final void h(zda zdaVar) {
        try {
            zdaVar.c(b());
        } catch (Exception e) {
            zdaVar.b(e);
        }
    }

    public void k(ExecutorService executorService) {
        final zda zdaVar = new zda();
        this.c = executorService.submit(new Runnable() {
            @Override
            public final void run() {
                this.b.h(zdaVar);
            }
        });
        this.d = zdaVar.a();
    }
}
