package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import androidx.webkit.ProxyConfig;
import com.transsion.livecaption.constant.ICode;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;

public class df0 extends AsyncTask {
    public final Context a;
    public Uri b;
    public Uri c;
    public final int d;
    public final int e;
    public final cf0 f;

    public df0(Context context, Uri uri, Uri uri2, int i, int i2, cf0 cf0Var) {
        this.a = context;
        this.b = uri;
        this.c = uri2;
        this.d = i;
        this.e = i2;
        this.f = cf0Var;
    }

    public final boolean a(Bitmap bitmap, BitmapFactory.Options options) {
        if ((bitmap != null ? bitmap.getByteCount() : 0) <= 104857600) {
            return false;
        }
        options.inSampleSize *= 2;
        return true;
    }

    public final void b(Uri uri, Uri uri2) throws Throwable {
        InputStream inputStreamOpenInputStream;
        Log.d("BitmapWorkerTask", "copyFile");
        if (uri2 == null) {
            throw new NullPointerException("Output Uri is null - cannot copy image");
        }
        FileOutputStream fileOutputStream = null;
        try {
            inputStreamOpenInputStream = this.a.getContentResolver().openInputStream(uri);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(new File(uri2.getPath()));
                try {
                    if (inputStreamOpenInputStream == null) {
                        throw new NullPointerException("InputStream for given input Uri is null");
                    }
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = inputStreamOpenInputStream.read(bArr);
                        if (i <= 0) {
                            ef0.c(fileOutputStream2);
                            ef0.c(inputStreamOpenInputStream);
                            this.b = this.c;
                            return;
                        }
                        fileOutputStream2.write(bArr, 0, i);
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    ef0.c(fileOutputStream);
                    ef0.c(inputStreamOpenInputStream);
                    this.b = this.c;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamOpenInputStream = null;
        }
    }

    @Override
    public a doInBackground(Void... voidArr) {
        if (this.b == null) {
            return new a(new NullPointerException("Input Uri cannot be null"));
        }
        try {
            f();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inSampleSize = ef0.a(options, this.d, this.e);
            boolean z = false;
            options.inJustDecodeBounds = false;
            Bitmap bitmapDecodeStream = null;
            while (!z) {
                try {
                    InputStream inputStreamOpenInputStream = this.a.getContentResolver().openInputStream(this.b);
                    try {
                        bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                        if (options.outWidth == -1 || options.outHeight == -1) {
                            return new a(new IllegalArgumentException("Bounds for bitmap could not be retrieved from the Uri: [" + this.b + "]"));
                        }
                        ef0.c(inputStreamOpenInputStream);
                        if (!a(bitmapDecodeStream, options)) {
                            z = true;
                        }
                    } finally {
                        ef0.c(inputStreamOpenInputStream);
                    }
                } catch (IOException e) {
                    Log.e("BitmapWorkerTask", "doInBackground: ImageDecoder.createSource: ", e);
                    return new a(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + this.b + "]", e));
                } catch (OutOfMemoryError e2) {
                    Log.e("BitmapWorkerTask", "doInBackground: BitmapFactory.decodeFileDescriptor: ", e2);
                    options.inSampleSize *= 2;
                }
            }
            if (bitmapDecodeStream == null) {
                return new a(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + this.b + "]"));
            }
            int iG = ef0.g(this.a, this.b);
            int iE = ef0.e(iG);
            int iF = ef0.f(iG);
            nf3 nf3Var = new nf3(iG, iE, iF);
            Matrix matrix = new Matrix();
            if (iE != 0) {
                matrix.preRotate(iE);
            }
            if (iF != 1) {
                matrix.postScale(iF, 1.0f);
            }
            return !matrix.isIdentity() ? new a(ef0.h(bitmapDecodeStream, matrix), nf3Var) : new a(bitmapDecodeStream, nf3Var);
        } catch (IOException | NullPointerException e3) {
            return new a(e3);
        }
    }

    public final void d(Uri uri, Uri uri2) throws Throwable {
        Closeable closeable;
        Response response;
        Log.d("BitmapWorkerTask", "downloadFile");
        if (uri2 == null) {
            throw new NullPointerException("Output Uri is null - cannot download image");
        }
        OkHttpClient okHttpClientA = heb.b.a();
        BufferedSource bufferedSource = null;
        try {
            Response responseExecute = okHttpClientA.newCall(new Request.Builder().url(uri.toString()).build()).execute();
            try {
                BufferedSource bufferedSourceSource = responseExecute.body().source();
                try {
                    OutputStream outputStreamOpenOutputStream = this.a.getContentResolver().openOutputStream(uri2);
                    if (outputStreamOpenOutputStream == null) {
                        throw new NullPointerException("OutputStream for given output Uri is null");
                    }
                    Sink sink = Okio.sink(outputStreamOpenOutputStream);
                    bufferedSourceSource.readAll(sink);
                    ef0.c(bufferedSourceSource);
                    ef0.c(sink);
                    ef0.c(responseExecute.body());
                    okHttpClientA.dispatcher().cancelAll();
                    this.b = this.c;
                } catch (Throwable th) {
                    th = th;
                    response = responseExecute;
                    closeable = null;
                    bufferedSource = bufferedSourceSource;
                    ef0.c(bufferedSource);
                    ef0.c(closeable);
                    if (response != null) {
                        ef0.c(response.body());
                    }
                    okHttpClientA.dispatcher().cancelAll();
                    this.b = this.c;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                response = responseExecute;
                closeable = null;
            }
        } catch (Throwable th3) {
            th = th3;
            closeable = null;
            response = null;
        }
    }

    @Override
    public void onPostExecute(a aVar) {
        Exception exc = aVar.c;
        if (exc != null) {
            this.f.a(exc);
            return;
        }
        cf0 cf0Var = this.f;
        Bitmap bitmap = aVar.a;
        nf3 nf3Var = aVar.b;
        String path = this.b.getPath();
        Uri uri = this.c;
        cf0Var.b(bitmap, nf3Var, path, uri == null ? null : uri.getPath());
    }

    public final void f() {
        String scheme = this.b.getScheme();
        Log.d("BitmapWorkerTask", "Uri scheme: " + scheme);
        if (ProxyConfig.MATCH_HTTP.equals(scheme) || ProxyConfig.MATCH_HTTPS.equals(scheme)) {
            try {
                d(this.b, this.c);
                return;
            } catch (IOException | NullPointerException e) {
                Log.e("BitmapWorkerTask", "Downloading failed", e);
                throw e;
            }
        }
        if (ICode.CALL.CALL_KEY_CONTENT.equals(scheme)) {
            try {
                b(this.b, this.c);
                return;
            } catch (IOException | NullPointerException e2) {
                Log.e("BitmapWorkerTask", "Copying failed", e2);
                throw e2;
            }
        }
        if ("file".equals(scheme)) {
            return;
        }
        Log.e("BitmapWorkerTask", "Invalid Uri scheme " + scheme);
        throw new IllegalArgumentException("Invalid Uri scheme" + scheme);
    }

    public static class a {
        public Bitmap a;
        public nf3 b;
        public Exception c;

        public a(Bitmap bitmap, nf3 nf3Var) {
            this.a = bitmap;
            this.b = nf3Var;
        }

        public a(Exception exc) {
            this.c = exc;
        }
    }
}
