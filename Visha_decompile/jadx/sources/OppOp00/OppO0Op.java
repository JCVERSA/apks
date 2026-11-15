package OppOp00;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import defpackage.lk7;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import okhttp3.OkHttpClient;
import okhttp3.Request;

public class OppO0Op implements Runnable {
    public final Bitmap OppO00p;
    public final String OppO0O0;
    public final String OppO0OO;
    public final a.InterfaceC0003a OppO0Op;

    public class OppO00p implements Runnable {
        public OppO00p() {
        }

        @Override
        public void run() {
            OppO0Op oppO0Op = OppO0Op.this;
            a.InterfaceC0003a interfaceC0003a = oppO0Op.OppO0Op;
            if (interfaceC0003a != null) {
                interfaceC0003a.F(oppO0Op.OppO0OO);
            }
        }
    }

    public OppO0Op(Bitmap bitmap, String str, String str2, a.InterfaceC0003a interfaceC0003a) {
        this.OppO00p = bitmap;
        this.OppO0O0 = str;
        this.OppO0OO = str2;
        this.OppO0Op = interfaceC0003a;
    }

    @Override
    public void run() {
        Bitmap bitmapDecodeStream = this.OppO00p;
        if (bitmapDecodeStream == null) {
            try {
                bitmapDecodeStream = BitmapFactory.decodeStream(new OkHttpClient().newCall(new Request.Builder().url(this.OppO0O0).build()).execute().body().byteStream());
            } catch (IOException e) {
                e.printStackTrace();
                bitmapDecodeStream = null;
            }
        }
        if (bitmapDecodeStream != null) {
            String str = this.OppO0OO;
            synchronized (a.class) {
                try {
                    File file = new File(str);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        if (bitmapDecodeStream.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream)) {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        }
                        Log.d("com.palm.id.log", "saveBitmapPng " + file.getName() + " success");
                        lk7.a.a.a.post(new OppO00p());
                    } catch (FileNotFoundException e2) {
                        e2.printStackTrace();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
