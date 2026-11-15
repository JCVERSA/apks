package androidx.media3.datasource;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import w1.h;

public final class ContentDataSource extends w1.a {

    private final ContentResolver f10378e;

    private Uri f10379f;

    private AssetFileDescriptor f10380g;

    private FileInputStream f10381h;

    private long f10382i;

    private boolean f10383j;

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
        this.f10378e = context.getContentResolver();
    }

    @Override
    public long a(h hVar) throws ContentDataSourceException {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            Uri uriNormalizeScheme = hVar.f74097a.normalizeScheme();
            this.f10379f = uriNormalizeScheme;
            f(hVar);
            if ("content".equals(uriNormalizeScheme.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                assetFileDescriptorOpenAssetFileDescriptor = this.f10378e.openTypedAssetFileDescriptor(uriNormalizeScheme, "*/*", bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = this.f10378e.openAssetFileDescriptor(uriNormalizeScheme, CampaignEx.JSON_KEY_AD_R);
            }
            this.f10380g = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new ContentDataSourceException(new IOException("Could not open file descriptor for: " + uriNormalizeScheme), 2000);
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.f10381h = fileInputStream;
            if (length != -1 && hVar.f74103g > length) {
                throw new ContentDataSourceException(null, 2008);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(hVar.f74103g + startOffset) - startOffset;
            if (jSkip != hVar.f74103g) {
                throw new ContentDataSourceException(null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.f10382i = -1L;
                } else {
                    long jPosition = size - channel.position();
                    this.f10382i = jPosition;
                    if (jPosition < 0) {
                        throw new ContentDataSourceException(null, 2008);
                    }
                }
            } else {
                long j10 = length - jSkip;
                this.f10382i = j10;
                if (j10 < 0) {
                    throw new ContentDataSourceException(null, 2008);
                }
            }
            long jMin = hVar.f74104h;
            if (jMin != -1) {
                long j11 = this.f10382i;
                if (j11 != -1) {
                    jMin = Math.min(j11, jMin);
                }
                this.f10382i = jMin;
            }
            this.f10383j = true;
            g(hVar);
            long j12 = hVar.f74104h;
            return j12 != -1 ? j12 : this.f10382i;
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
        this.f10379f = null;
        try {
            FileInputStream fileInputStream = this.f10381h;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            this.f10381h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.f10380g;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.f10380g = null;
                    if (this.f10383j) {
                        this.f10383j = false;
                        e();
                    }
                } catch (IOException e10) {
                    throw new ContentDataSourceException(e10, 2000);
                }
            } catch (Throwable th2) {
                this.f10380g = null;
                if (this.f10383j) {
                    this.f10383j = false;
                    e();
                }
                throw th2;
            }
        } catch (IOException e11) {
            throw new ContentDataSourceException(e11, 2000);
        }
    }

    @Override
    public Uri getUri() {
        return this.f10379f;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws ContentDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f10382i;
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
        int i12 = ((FileInputStream) a1.i(this.f10381h)).read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        long j11 = this.f10382i;
        if (j11 != -1) {
            this.f10382i = j11 - ((long) i12);
        }
        d(i12);
        return i12;
    }
}
