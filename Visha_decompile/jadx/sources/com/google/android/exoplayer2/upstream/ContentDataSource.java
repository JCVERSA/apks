package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.transsion.livecaption.constant.ICode;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import defpackage.blb;
import defpackage.u90;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

public final class ContentDataSource extends u90 {
    public final ContentResolver e;
    public Uri f;
    public AssetFileDescriptor g;
    public FileInputStream h;
    public long i;
    public boolean j;

    public static class ContentDataSourceException extends DataSourceException {
        @Deprecated
        public ContentDataSourceException(IOException iOException) {
            this(iOException, 2000);
        }

        public ContentDataSourceException(@Nullable IOException iOException, int i) {
            super(iOException, i);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.e = context.getContentResolver();
    }

    @Override
    public long a(b bVar) throws ContentDataSourceException {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            Uri uri = bVar.a;
            this.f = uri;
            e(bVar);
            if (ICode.CALL.CALL_KEY_CONTENT.equals(bVar.a.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                assetFileDescriptorOpenAssetFileDescriptor = this.e.openTypedAssetFileDescriptor(uri, SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE, bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = this.e.openAssetFileDescriptor(uri, "r");
            }
            this.g = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new ContentDataSourceException(new IOException("Could not open file descriptor for: " + uri), 2000);
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.h = fileInputStream;
            if (length != -1 && bVar.g > length) {
                throw new ContentDataSourceException(null, 2008);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(bVar.g + startOffset) - startOffset;
            if (jSkip != bVar.g) {
                throw new ContentDataSourceException(null, 2008);
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
                        throw new ContentDataSourceException(null, 2008);
                    }
                }
            } else {
                long j = length - jSkip;
                this.i = j;
                if (j < 0) {
                    throw new ContentDataSourceException(null, 2008);
                }
            }
            long jMin = bVar.h;
            if (jMin != -1) {
                long j2 = this.i;
                if (j2 != -1) {
                    jMin = Math.min(j2, jMin);
                }
                this.i = jMin;
            }
            this.j = true;
            f(bVar);
            long j3 = bVar.h;
            return j3 != -1 ? j3 : this.i;
        } catch (ContentDataSourceException e) {
            throw e;
        } catch (IOException e2) {
            throw new ContentDataSourceException(e2, e2 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() {
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
                        d();
                    }
                } catch (IOException e) {
                    throw new ContentDataSourceException(e, 2000);
                }
            } catch (Throwable th) {
                this.g = null;
                if (this.j) {
                    this.j = false;
                    d();
                }
                throw th;
            }
        } catch (IOException e2) {
            throw new ContentDataSourceException(e2, 2000);
        }
    }

    @Override
    public Uri getUri() {
        return this.f;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws ContentDataSourceException {
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
                throw new ContentDataSourceException(e, 2000);
            }
        }
        int i3 = ((FileInputStream) blb.j(this.h)).read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        long j2 = this.i;
        if (j2 != -1) {
            this.i = j2 - ((long) i3);
        }
        c(i3);
        return i3;
    }
}
