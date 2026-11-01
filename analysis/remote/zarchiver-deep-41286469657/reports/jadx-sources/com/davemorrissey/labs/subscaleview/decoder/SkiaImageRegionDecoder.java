package com.davemorrissey.labs.subscaleview.decoder;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import h.d;
import java.io.InputStream;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import n0.e;

public class SkiaImageRegionDecoder implements d {

    public BitmapRegionDecoder f467a;

    public final ReentrantReadWriteLock f468b = new ReentrantReadWriteLock(true);

    public final Bitmap.Config f469c;

    public SkiaImageRegionDecoder() {
        Bitmap.Config preferredBitmapConfig = g.d.getPreferredBitmapConfig();
        if (preferredBitmapConfig != null) {
            this.f469c = preferredBitmapConfig;
        } else {
            this.f469c = Bitmap.Config.RGB_565;
        }
    }

    @Override
    public final synchronized void a() {
        this.f468b.writeLock().lock();
        try {
            this.f467a.recycle();
            this.f467a = null;
            this.f468b.writeLock().unlock();
        } catch (Throwable th) {
            this.f468b.writeLock().unlock();
            throw th;
        }
    }

    @Override
    public final synchronized boolean b() {
        BitmapRegionDecoder bitmapRegionDecoder;
        bitmapRegionDecoder = this.f467a;
        return (bitmapRegionDecoder == null || bitmapRegionDecoder.isRecycled()) ? false : true;
    }

    @Override
    public final Bitmap c(int i2, Rect rect) {
        e().lock();
        try {
            BitmapRegionDecoder bitmapRegionDecoder = this.f467a;
            if (bitmapRegionDecoder == null || bitmapRegionDecoder.isRecycled()) {
                throw new IllegalStateException("Cannot decode region after decoder has been recycled");
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = i2;
            options.inPreferredConfig = this.f469c;
            Bitmap bitmapDecodeRegion = this.f467a.decodeRegion(rect, options);
            if (bitmapDecodeRegion == null) {
                throw new RuntimeException("Skia image decoder returned null bitmap - image format may not be supported");
            }
            e().unlock();
            return bitmapDecodeRegion;
        } catch (Throwable th) {
            e().unlock();
            throw th;
        }
    }

    @Override
    public final Point d(Context context, g.a aVar) throws ErrnoException {
        ParcelFileDescriptor parcelFileDescriptor;
        if (aVar.f801d != null) {
            throw new RuntimeException(aVar.f801d);
        }
        String str = aVar.f799b;
        if (str != null) {
            this.f467a = BitmapRegionDecoder.newInstance(str, false);
        } else if (Build.VERSION.SDK_INT < 21 || (parcelFileDescriptor = aVar.f800c) == null) {
            try {
                InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(aVar.f798a);
                if (inputStreamOpenInputStream == null) {
                    throw new Exception("Content resolver returned null stream. Unable to initialise with uri.");
                }
                this.f467a = BitmapRegionDecoder.newInstance(inputStreamOpenInputStream, false);
                e.d(inputStreamOpenInputStream);
            } catch (Throwable th) {
                if (0 != 0) {
                    e.d(null);
                }
                throw th;
            }
        } else {
            Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
            this.f467a = BitmapRegionDecoder.newInstance(parcelFileDescriptor.getFileDescriptor(), false);
        }
        return new Point(this.f467a.getWidth(), this.f467a.getHeight());
    }

    public final Lock e() {
        int i2 = Build.VERSION.SDK_INT;
        ReentrantReadWriteLock reentrantReadWriteLock = this.f468b;
        return i2 < 21 ? reentrantReadWriteLock.writeLock() : reentrantReadWriteLock.readLock();
    }
}
