package com.yandex.mobile.ads.impl;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.transsion.livecaption.constant.ICode;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

public final class ds extends jk {
    private final ContentResolver e;

    @Nullable
    private Uri f;

    @Nullable
    private AssetFileDescriptor g;

    @Nullable
    private FileInputStream h;
    private long i;
    private boolean j;

    public static class a extends uv {
        public a(@Nullable IOException iOException, int i) {
            super(iOException, i);
        }
    }

    public ds(Context context) {
        super(false);
        this.e = context.getContentResolver();
    }

    @Override
    public final long a(xv xvVar) throws a {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            Uri uri = xvVar.a;
            this.f = uri;
            b(xvVar);
            if (ICode.CALL.CALL_KEY_CONTENT.equals(xvVar.a.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                assetFileDescriptorOpenAssetFileDescriptor = this.e.openTypedAssetFileDescriptor(uri, SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE, bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = this.e.openAssetFileDescriptor(uri, "r");
            }
            this.g = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new a(new IOException("Could not open file descriptor for: " + uri), 2000);
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.h = fileInputStream;
            if (length != -1 && xvVar.f > length) {
                throw new a(null, 2008);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(xvVar.f + startOffset) - startOffset;
            if (jSkip != xvVar.f) {
                throw new a(null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.i = -1L;
                } else {
                    long jPosition = size - channel.position();
                    this.i = jPosition;
                    if (jPosition < 0) {
                        throw new a(null, 2008);
                    }
                }
            } else {
                long j = length - jSkip;
                this.i = j;
                if (j < 0) {
                    throw new a(null, 2008);
                }
            }
            long jMin = xvVar.g;
            if (jMin != -1) {
                long j2 = this.i;
                if (j2 != -1) {
                    jMin = Math.min(j2, jMin);
                }
                this.i = jMin;
            }
            this.j = true;
            c(xvVar);
            long j3 = xvVar.g;
            return j3 != -1 ? j3 : this.i;
        } catch (a e) {
            throw e;
        } catch (IOException e2) {
            throw new a(e2, e2 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void close() throws a {
        this.f = null;
        try {
            FileInputStream fileInputStream = this.h;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            this.h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.g;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.g = null;
                    if (this.j) {
                        this.j = false;
                        e();
                    }
                } catch (IOException e) {
                    throw new a(e, 2000);
                }
            } catch (Throwable th) {
                this.g = null;
                if (this.j) {
                    this.j = false;
                    e();
                }
                throw th;
            }
        } catch (IOException e2) {
            throw new a(e2, 2000);
        }
    }

    @Override
    @Nullable
    public final Uri getUri() {
        return this.f;
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.i;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new a(e, 2000);
            }
        }
        FileInputStream fileInputStream = this.h;
        int i3 = f92.a;
        int i4 = fileInputStream.read(bArr, i, i2);
        if (i4 == -1) {
            return -1;
        }
        long j2 = this.i;
        if (j2 != -1) {
            this.i = j2 - ((long) i4);
        }
        c(i4);
        return i4;
    }
}
