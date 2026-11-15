package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

public final class ContentDataSource extends f {

    private final ContentResolver f26461e;

    private Uri f26462f;

    private AssetFileDescriptor f26463g;

    private FileInputStream f26464h;

    private long f26465i;

    private boolean f26466j;

    public static class ContentDataSourceException extends DataSourceException {
        @Deprecated
        public ContentDataSourceException(IOException iOException) {
            this(iOException, 2000);
        }

        public ContentDataSourceException(@Nullable IOException iOException, int i10) {
            super(iOException, i10);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f26461e = context.getContentResolver();
    }

    @Override
    public long a(n nVar) throws ContentDataSourceException {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            Uri uri = nVar.f26665a;
            this.f26462f = uri;
            j(nVar);
            if ("content".equals(nVar.f26665a.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                assetFileDescriptorOpenAssetFileDescriptor = this.f26461e.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = this.f26461e.openAssetFileDescriptor(uri, CampaignEx.JSON_KEY_AD_R);
            }
            this.f26463g = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new ContentDataSourceException(new IOException("Could not open file descriptor for: " + uri), 2000);
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.f26464h = fileInputStream;
            if (length != -1 && nVar.f26671g > length) {
                throw new ContentDataSourceException(null, 2008);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(nVar.f26671g + startOffset) - startOffset;
            if (jSkip != nVar.f26671g) {
                throw new ContentDataSourceException(null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.f26465i = -1L;
                } else {
                    long jPosition = size - channel.position();
                    this.f26465i = jPosition;
                    if (jPosition < 0) {
                        throw new ContentDataSourceException(null, 2008);
                    }
                }
            } else {
                long j10 = length - jSkip;
                this.f26465i = j10;
                if (j10 < 0) {
                    throw new ContentDataSourceException(null, 2008);
                }
            }
            long jMin = nVar.f26672h;
            if (jMin != -1) {
                long j11 = this.f26465i;
                if (j11 != -1) {
                    jMin = Math.min(j11, jMin);
                }
                this.f26465i = jMin;
            }
            this.f26466j = true;
            k(nVar);
            long j12 = nVar.f26672h;
            return j12 != -1 ? j12 : this.f26465i;
        } catch (ContentDataSourceException e10) {
            throw e10;
        } catch (IOException e11) {
            throw new ContentDataSourceException(e11, e11 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() {
        this.f26462f = null;
        try {
            FileInputStream fileInputStream = this.f26464h;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            this.f26464h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.f26463g;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.f26463g = null;
                    if (this.f26466j) {
                        this.f26466j = false;
                        i();
                    }
                } catch (IOException e10) {
                    throw new ContentDataSourceException(e10, 2000);
                }
            } catch (Throwable th2) {
                this.f26463g = null;
                if (this.f26466j) {
                    this.f26466j = false;
                    i();
                }
                throw th2;
            }
        } catch (IOException e11) {
            throw new ContentDataSourceException(e11, 2000);
        }
    }

    @Override
    public Uri getUri() {
        return this.f26462f;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws ContentDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f26465i;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new ContentDataSourceException(e10, 2000);
            }
        }
        int i12 = ((FileInputStream) p0.j(this.f26464h)).read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        long j11 = this.f26465i;
        if (j11 != -1) {
            this.f26465i = j11 - ((long) i12);
        }
        h(i12);
        return i12;
    }
}
