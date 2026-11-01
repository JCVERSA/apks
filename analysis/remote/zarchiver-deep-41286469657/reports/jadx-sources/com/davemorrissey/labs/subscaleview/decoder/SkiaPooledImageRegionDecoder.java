package com.davemorrissey.labs.subscaleview.decoder;

import a0.b;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.OsConstants;
import h.d;
import java.io.File;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import n0.e;

public class SkiaPooledImageRegionDecoder implements d {

    public final Bitmap.Config f472c;

    public Context f473d;

    public g.a f474e;

    public a f470a = new a();

    public final ReentrantReadWriteLock f471b = new ReentrantReadWriteLock(true);

    public long f475f = Long.MAX_VALUE;

    public final Point f476g = new Point(0, 0);

    public final AtomicBoolean f477h = new AtomicBoolean(false);

    public static class a {

        public final Semaphore f478a = new Semaphore(0, true);

        public final ConcurrentHashMap f479b = new ConcurrentHashMap();

        public static void a(a aVar) {
            synchronized (aVar) {
                while (!aVar.f479b.isEmpty()) {
                    BitmapRegionDecoder bitmapRegionDecoderD = aVar.d();
                    bitmapRegionDecoderD.recycle();
                    aVar.f479b.remove(bitmapRegionDecoderD);
                }
            }
        }

        public static void b(a aVar, BitmapRegionDecoder bitmapRegionDecoder) {
            boolean z2;
            synchronized (aVar) {
                Iterator it = aVar.f479b.entrySet().iterator();
                while (true) {
                    if (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        if (bitmapRegionDecoder == entry.getKey()) {
                            if (((Boolean) entry.getValue()).booleanValue()) {
                                entry.setValue(Boolean.FALSE);
                                z2 = true;
                                break;
                            }
                        }
                    }
                    z2 = false;
                    break;
                }
            }
            if (z2) {
                aVar.f478a.release();
            }
        }

        public static boolean c(a aVar) {
            boolean zIsEmpty;
            synchronized (aVar) {
                zIsEmpty = aVar.f479b.isEmpty();
            }
            return zIsEmpty;
        }

        public final BitmapRegionDecoder d() {
            this.f478a.acquireUninterruptibly();
            synchronized (this) {
                for (Map.Entry entry : this.f479b.entrySet()) {
                    if (!((Boolean) entry.getValue()).booleanValue()) {
                        entry.setValue(Boolean.TRUE);
                        return (BitmapRegionDecoder) entry.getKey();
                    }
                }
                return null;
            }
        }
    }

    public SkiaPooledImageRegionDecoder() {
        Bitmap.Config preferredBitmapConfig = g.d.getPreferredBitmapConfig();
        if (preferredBitmapConfig != null) {
            this.f472c = preferredBitmapConfig;
        } else {
            this.f472c = Bitmap.Config.RGB_565;
        }
    }

    @Override
    public final synchronized void a() {
        this.f471b.writeLock().lock();
        try {
            a aVar = this.f470a;
            if (aVar != null) {
                a.a(aVar);
                this.f470a = null;
                this.f473d = null;
                this.f474e = null;
            }
            this.f471b.writeLock().unlock();
        } catch (Throwable th) {
            this.f471b.writeLock().unlock();
            throw th;
        }
    }

    @Override
    public final synchronized boolean b() {
        a aVar;
        aVar = this.f470a;
        return (aVar == null || a.c(aVar)) ? false : true;
    }

    @Override
    public final Bitmap c(int i2, Rect rect) {
        b.e(rect);
        Thread.currentThread().getName();
        int iWidth = rect.width();
        Point point = this.f476g;
        if ((iWidth < point.x || rect.height() < point.y) && this.f477h.compareAndSet(false, true) && this.f475f < Long.MAX_VALUE) {
            new com.davemorrissey.labs.subscaleview.decoder.a(this).start();
        }
        ReentrantReadWriteLock reentrantReadWriteLock = this.f471b;
        reentrantReadWriteLock.readLock().lock();
        try {
            a aVar = this.f470a;
            if (aVar != null) {
                BitmapRegionDecoder bitmapRegionDecoderD = aVar.d();
                if (bitmapRegionDecoderD != null) {
                    try {
                        if (!bitmapRegionDecoderD.isRecycled()) {
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inSampleSize = i2;
                            options.inPreferredConfig = this.f472c;
                            Bitmap bitmapDecodeRegion = bitmapRegionDecoderD.decodeRegion(rect, options);
                            if (bitmapDecodeRegion == null) {
                                throw new RuntimeException("Skia image decoder returned null bitmap - image format may not be supported");
                            }
                            a.b(this.f470a, bitmapRegionDecoderD);
                            reentrantReadWriteLock.readLock().unlock();
                            return bitmapDecodeRegion;
                        }
                    } catch (Throwable th) {
                        a.b(this.f470a, bitmapRegionDecoderD);
                        throw th;
                    }
                }
                if (bitmapRegionDecoderD != null) {
                    a.b(this.f470a, bitmapRegionDecoderD);
                }
            }
            throw new IllegalStateException("Cannot decode region after decoder has been recycled");
        } catch (Throwable th2) {
            reentrantReadWriteLock.readLock().unlock();
            throw th2;
        }
    }

    @Override
    public final Point d(Context context, g.a aVar) {
        this.f473d = context;
        this.f474e = aVar;
        e();
        return this.f476g;
    }

    public final void e() {
        BitmapRegionDecoder bitmapRegionDecoderNewInstance;
        ParcelFileDescriptor parcelFileDescriptor;
        g.a aVar = this.f474e;
        if (aVar.f801d != null) {
            throw new RuntimeException(this.f474e.f801d);
        }
        String str = aVar.f799b;
        long length = Long.MAX_VALUE;
        if (str != null) {
            bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(str, false);
            try {
                File file = new File(this.f474e.f799b);
                if (file.exists()) {
                    length = file.length();
                }
            } catch (Exception unused) {
            }
        } else if (Build.VERSION.SDK_INT < 21 || (parcelFileDescriptor = aVar.f800c) == null) {
            InputStream inputStreamOpenInputStream = null;
            try {
                ContentResolver contentResolver = this.f473d.getContentResolver();
                inputStreamOpenInputStream = contentResolver.openInputStream(this.f474e.f798a);
                BitmapRegionDecoder bitmapRegionDecoderNewInstance2 = BitmapRegionDecoder.newInstance(inputStreamOpenInputStream, false);
                try {
                    AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(this.f474e.f798a, "r");
                    if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                        length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
                        assetFileDescriptorOpenAssetFileDescriptor.close();
                    }
                } catch (Exception unused2) {
                }
                if (inputStreamOpenInputStream != null) {
                    e.d(inputStreamOpenInputStream);
                }
                bitmapRegionDecoderNewInstance = bitmapRegionDecoderNewInstance2;
            } catch (Throwable th) {
                if (inputStreamOpenInputStream != null) {
                    e.d(inputStreamOpenInputStream);
                }
                throw th;
            }
        } else {
            Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
            bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(parcelFileDescriptor.getFileDescriptor(), false);
            length = this.f474e.f802e;
        }
        this.f475f = length;
        this.f476g.set(bitmapRegionDecoderNewInstance.getWidth(), bitmapRegionDecoderNewInstance.getHeight());
        this.f471b.writeLock().lock();
        try {
            a aVar2 = this.f470a;
            if (aVar2 != null) {
                synchronized (aVar2) {
                    aVar2.f479b.put(bitmapRegionDecoderNewInstance, Boolean.FALSE);
                    aVar2.f478a.release();
                }
            }
            this.f471b.writeLock().unlock();
        } catch (Throwable th2) {
            this.f471b.writeLock().unlock();
            throw th2;
        }
    }
}
