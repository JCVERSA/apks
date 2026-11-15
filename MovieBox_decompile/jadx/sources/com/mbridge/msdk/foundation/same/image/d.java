package com.mbridge.msdk.foundation.same.image;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.download.core.DownloadRequest;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import java.io.File;
import java.util.concurrent.ThreadPoolExecutor;

public class d {

    private final ThreadPoolExecutor f34568a;

    private final Handler f34569b;

    private final String f34570c;

    class a implements Runnable {

        final String f34571a;

        final com.mbridge.msdk.foundation.same.image.c f34572b;

        class RunnableC0462a implements Runnable {
            RunnableC0462a() {
            }

            @Override
            public void run() {
                a aVar = a.this;
                aVar.f34572b.onFailedLoad("create download request error", aVar.f34571a);
            }
        }

        a(String str, g gVar, com.mbridge.msdk.foundation.same.image.c cVar) {
            this.f34571a = str;
            this.f34572b = cVar;
        }

        @Override
        public void run() {
            DownloadRequest downloadRequestA = d.this.a(m0.d(this.f34571a), this.f34571a, null, this.f34572b);
            if (downloadRequestA != null) {
                downloadRequestA.start();
                return;
            }
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonImageLoaderRefactor", "createDownloadRequest error");
            }
            if (this.f34572b == null) {
                return;
            }
            d.this.f34569b.post(new RunnableC0462a());
        }
    }

    private static final class b {

        private static final d f34575a = new d(null);
    }

    private static final class c implements OnDownloadStateListener<Object> {

        private final ThreadPoolExecutor f34576a;

        private final Handler f34577b;

        private final String f34578c;

        private final String f34579d;

        private final String f34580e;

        private final com.mbridge.msdk.foundation.same.image.c f34581f;

        class a implements Runnable {
            a() {
            }

            @Override
            public void run() {
                c.this.a();
            }
        }

        class b implements Runnable {

            final String f34583a;

            b(String str) {
                this.f34583a = str;
            }

            @Override
            public void run() {
                try {
                    c.this.f34581f.onFailedLoad(c.this.f34580e, this.f34583a);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("CommonImageLoaderRefactor", "callbackForFailed error", e10);
                    }
                }
            }
        }

        class RunnableC0463c implements Runnable {

            final Bitmap f34585a;

            RunnableC0463c(Bitmap bitmap) {
                this.f34585a = bitmap;
            }

            @Override
            public void run() {
                try {
                    c.this.f34581f.onSuccessLoad(this.f34585a, c.this.f34580e);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("CommonImageLoaderRefactor", "callbackForSuccess error", e10);
                    }
                }
            }
        }

        public c(Handler handler, ThreadPoolExecutor threadPoolExecutor, String str, String str2, String str3, g gVar, com.mbridge.msdk.foundation.same.image.c cVar) {
            this.f34577b = handler;
            this.f34576a = threadPoolExecutor;
            this.f34580e = str;
            this.f34578c = str2;
            this.f34579d = str3;
            this.f34581f = cVar;
        }

        @Override
        public void onCancelDownload(DownloadMessage<Object> downloadMessage) {
        }

        @Override
        public void onDownloadComplete(DownloadMessage<Object> downloadMessage) {
            b();
            this.f34576a.execute(new a());
        }

        @Override
        public void onDownloadError(DownloadMessage<Object> downloadMessage, DownloadError downloadError) {
            if (MBridgeConstans.DEBUG) {
                o0.a("CommonImageLoaderRefactor", "onDownloadError imageUrl = " + downloadError.getException().getLocalizedMessage());
            }
            a(downloadError.getException().getLocalizedMessage());
        }

        @Override
        public void onDownloadStart(DownloadMessage<Object> downloadMessage) {
        }

        public void a() {
            if (this.f34581f == null) {
                return;
            }
            try {
                Bitmap bitmapB = d.b(this.f34578c + this.f34579d);
                if (bitmapB == null) {
                    a("bitmap decode failed");
                    return;
                }
                Bitmap bitmapA = a(bitmapB, null);
                if (bitmapA == null) {
                    a("bitmap transformation failed");
                } else {
                    a(bitmapA);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.a("CommonImageLoaderRefactor", "onDownloadComplete decodeBitmap error = " + e10.getLocalizedMessage());
                }
                a("bitmap decode failed");
            }
        }

        private void b() {
            File file;
            if (MBridgeConstans.DEBUG) {
                o0.a("CommonImageLoaderRefactor", "onDownloadComplete imageUrl = " + this.f34580e + " imagePath = " + this.f34578c + this.f34579d);
                try {
                    file = new File(this.f34578c + this.f34579d);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("CommonImageLoaderRefactor", "onDownloadComplete error", e10);
                    }
                    file = null;
                }
                if (file == null || !file.isFile() || !file.exists()) {
                    o0.b("CommonImageLoaderRefactor", "onDownloadComplete file not exist");
                    return;
                }
                o0.a("CommonImageLoaderRefactor", "onDownloadComplete file size = " + file.length());
            }
        }

        private void a(String str) {
            if (this.f34581f == null) {
                return;
            }
            this.f34577b.post(new b(str));
        }

        private Bitmap a(Bitmap bitmap, g gVar) {
            if (gVar == null) {
                return bitmap;
            }
            try {
                return gVar.a(bitmap);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonImageLoaderRefactor", "handlerImageTransformation error", e10);
                }
                return bitmap;
            }
        }

        private void a(Bitmap bitmap) {
            if (this.f34581f == null) {
                return;
            }
            this.f34577b.post(new RunnableC0463c(bitmap));
        }
    }

    d(a aVar) {
        this();
    }

    public static Bitmap b(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inDither = true;
        return BitmapFactory.decodeFile(str, options);
    }

    public Bitmap c(String str) {
        if (MBridgeConstans.DEBUG) {
            o0.a("CommonImageLoaderRefactor", "getImageBitmapByUrl imageUrl = " + str);
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = this.f34570c + m0.d(str);
        File file = new File(str2);
        if (file.isFile() && file.exists()) {
            try {
                return b(str2);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonImageLoaderRefactor", "getImageBitmapByUrl error", e10);
                }
            }
        }
        return null;
    }

    public boolean d(String str) {
        File file;
        if (MBridgeConstans.DEBUG) {
            o0.a("CommonImageLoaderRefactor", "isImageFileExists imageUrl = " + str);
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            try {
                file = new File(this.f34570c + m0.d(str));
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonImageLoaderRefactor", "isImageFileExists error", e10);
                }
                file = null;
            }
            return file != null && file.isFile() && file.exists();
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonImageLoaderRefactor", "isImageFileExists error", e11);
            }
            return false;
        }
    }

    private d() {
        this.f34569b = new Handler(Looper.getMainLooper());
        this.f34570c = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_IMG) + File.separator;
        this.f34568a = f.b();
    }

    public static d a() {
        return b.f34575a;
    }

    private Runnable a(String str, g gVar, com.mbridge.msdk.foundation.same.image.c cVar) {
        return new a(str, gVar, cVar);
    }

    public DownloadRequest<?> a(String str, String str2, g gVar, com.mbridge.msdk.foundation.same.image.c cVar) {
        try {
            return MBDownloadManager.getInstance().download(new DownloadMessage<>(new Object(), str2, str, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_IMAGE)).withReadTimeout(com.mbridge.msdk.foundation.same.a.f34517u).withConnectTimeout(com.mbridge.msdk.foundation.same.a.f34516t).withWriteTimeout(com.mbridge.msdk.foundation.same.a.f34515s).withDownloadPriority(DownloadPriority.LOW).withHttpRetryCounter(1).withDirectoryPathInternal(this.f34570c).withDownloadStateListener(new c(this.f34569b, this.f34568a, str2, this.f34570c, str, gVar, cVar)).with("download_scene", "download_image").withProgressStateListener(null).withTimeout(60000L).with("do_us_fi_re", Boolean.FALSE.toString()).build();
        } catch (Exception e10) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            o0.b("CommonImageLoaderRefactor", "createDownloadRequest error", e10);
            return null;
        }
    }

    public void b(String str, g gVar, com.mbridge.msdk.foundation.same.image.c cVar) {
        try {
            this.f34568a.execute(a(str, gVar, cVar));
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonImageLoaderRefactor", "loadImage error", e10);
            }
        }
    }
}
