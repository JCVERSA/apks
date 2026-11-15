package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import defpackage.blb;
import defpackage.u90;
import defpackage.zi;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

public final class RawResourceDataSource extends u90 {
    public final Resources e;
    public final String f;
    public Uri g;
    public AssetFileDescriptor h;
    public InputStream i;
    public long j;
    public boolean k;

    public static class RawResourceDataSourceException extends DataSourceException {
        @Deprecated
        public RawResourceDataSourceException(String str) {
            super(str, null, 2000);
        }

        @Deprecated
        public RawResourceDataSourceException(Throwable th) {
            super(th, 2000);
        }

        public RawResourceDataSourceException(@Nullable String str, @Nullable Throwable th, int i) {
            super(str, th, i);
        }
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.e = context.getResources();
        this.f = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i) {
        return Uri.parse("rawresource:///" + i);
    }

    @Override
    public long a(b bVar) throws RawResourceDataSourceException {
        int identifier;
        String str;
        Uri uri = bVar.a;
        this.g = uri;
        if (TextUtils.equals(androidx.media3.datasource.RawResourceDataSource.RAW_RESOURCE_SCHEME, uri.getScheme()) || (TextUtils.equals("android.resource", uri.getScheme()) && uri.getPathSegments().size() == 1 && ((String) zi.e(uri.getLastPathSegment())).matches("\\d+"))) {
            try {
                identifier = Integer.parseInt((String) zi.e(uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.", null, 1004);
            }
        } else {
            if (!TextUtils.equals("android.resource", uri.getScheme())) {
                throw new RawResourceDataSourceException("URI must either use scheme rawresource or android.resource", null, 1004);
            }
            String strSubstring = (String) zi.e(uri.getPath());
            if (strSubstring.startsWith("/")) {
                strSubstring = strSubstring.substring(1);
            }
            String host = uri.getHost();
            StringBuilder sb = new StringBuilder();
            if (TextUtils.isEmpty(host)) {
                str = "";
            } else {
                str = host + StringUtils.PROCESS_POSTFIX_DELIMITER;
            }
            sb.append(str);
            sb.append(strSubstring);
            identifier = this.e.getIdentifier(sb.toString(), "raw", this.f);
            if (identifier == 0) {
                throw new RawResourceDataSourceException("Resource not found.", null, 2005);
            }
        }
        e(bVar);
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.e.openRawResourceFd(identifier);
            this.h = assetFileDescriptorOpenRawResourceFd;
            if (assetFileDescriptorOpenRawResourceFd == null) {
                throw new RawResourceDataSourceException("Resource is compressed: " + uri, null, 2000);
            }
            long length = assetFileDescriptorOpenRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
            this.i = fileInputStream;
            if (length != -1) {
                try {
                    if (bVar.g > length) {
                        throw new RawResourceDataSourceException(null, null, 2008);
                    }
                } catch (RawResourceDataSourceException e) {
                    throw e;
                } catch (IOException e2) {
                    throw new RawResourceDataSourceException(null, e2, 2000);
                }
            }
            long startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
            long jSkip = fileInputStream.skip(bVar.g + startOffset) - startOffset;
            if (jSkip != bVar.g) {
                throw new RawResourceDataSourceException(null, null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.j = -1L;
                } else {
                    long size = channel.size() - channel.position();
                    this.j = size;
                    if (size < 0) {
                        throw new RawResourceDataSourceException(null, null, 2008);
                    }
                }
            } else {
                long j = length - jSkip;
                this.j = j;
                if (j < 0) {
                    throw new DataSourceException(2008);
                }
            }
            long jMin = bVar.h;
            if (jMin != -1) {
                long j2 = this.j;
                if (j2 != -1) {
                    jMin = Math.min(j2, jMin);
                }
                this.j = jMin;
            }
            this.k = true;
            f(bVar);
            long j3 = bVar.h;
            return j3 != -1 ? j3 : this.j;
        } catch (Resources.NotFoundException e3) {
            throw new RawResourceDataSourceException(null, e3, 2005);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() {
        this.g = null;
        try {
            InputStream inputStream = this.i;
            if (inputStream != null) {
                inputStream.close();
            }
            this.i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.h;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.h = null;
                    if (this.k) {
                        this.k = false;
                        d();
                    }
                } catch (IOException e) {
                    throw new RawResourceDataSourceException(null, e, 2000);
                }
            } catch (Throwable th) {
                this.h = null;
                if (this.k) {
                    this.k = false;
                    d();
                }
                throw th;
            }
        } catch (IOException e2) {
            throw new RawResourceDataSourceException(null, e2, 2000);
        }
    }

    @Override
    public Uri getUri() {
        return this.g;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws RawResourceDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.j;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new RawResourceDataSourceException(null, e, 2000);
            }
        }
        int i3 = ((InputStream) blb.j(this.i)).read(bArr, i, i2);
        if (i3 == -1) {
            if (this.j == -1) {
                return -1;
            }
            throw new RawResourceDataSourceException("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j2 = this.j;
        if (j2 != -1) {
            this.j = j2 - ((long) i3);
        }
        c(i3);
        return i3;
    }
}
