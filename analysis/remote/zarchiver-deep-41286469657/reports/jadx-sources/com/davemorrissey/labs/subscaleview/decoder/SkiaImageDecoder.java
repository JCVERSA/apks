package com.davemorrissey.labs.subscaleview.decoder;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.OsConstants;
import g.d;
import h.c;
import java.io.InputStream;
import n0.e;

public class SkiaImageDecoder implements c {

    public final Bitmap.Config f466a;

    public SkiaImageDecoder() {
        Bitmap.Config preferredBitmapConfig = d.getPreferredBitmapConfig();
        if (preferredBitmapConfig != null) {
            this.f466a = preferredBitmapConfig;
        } else {
            this.f466a = Bitmap.Config.RGB_565;
        }
    }

    @Override
    public final Bitmap a(Context context, g.a aVar) throws Throwable {
        Throwable th;
        Bitmap bitmapDecodeFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = this.f466a;
        if (aVar.f801d != null) {
            throw new RuntimeException(aVar.f801d);
        }
        String str = aVar.f799b;
        if (str != null) {
            bitmapDecodeFileDescriptor = BitmapFactory.decodeFile(str, options);
        } else {
            InputStream inputStream = null;
            if (Build.VERSION.SDK_INT < 21 || (parcelFileDescriptor = aVar.f800c) == null) {
                try {
                    InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(aVar.f798a);
                    try {
                        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                        if (inputStreamOpenInputStream != null) {
                            e.d(inputStreamOpenInputStream);
                        }
                        bitmapDecodeFileDescriptor = bitmapDecodeStream;
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = inputStreamOpenInputStream;
                        if (inputStream == null) {
                            throw th;
                        }
                        e.d(inputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } else {
                Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
            }
        }
        if (bitmapDecodeFileDescriptor != null) {
            return bitmapDecodeFileDescriptor;
        }
        throw new RuntimeException("Skia image region decoder returned null bitmap - image format may not be supported");
    }
}
