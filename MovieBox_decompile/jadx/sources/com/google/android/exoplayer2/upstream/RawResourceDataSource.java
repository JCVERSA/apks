package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

public final class RawResourceDataSource extends f {

    private final Resources f26481e;

    private final String f26482f;

    private Uri f26483g;

    private AssetFileDescriptor f26484h;

    private InputStream f26485i;

    private long f26486j;

    private boolean f26487k;

    public static class RawResourceDataSourceException extends DataSourceException {
        @Deprecated
        public RawResourceDataSourceException(String str) {
            super(str, null, 2000);
        }

        @Deprecated
        public RawResourceDataSourceException(Throwable th2) {
            super(th2, 2000);
        }

        public RawResourceDataSourceException(@Nullable String str, @Nullable Throwable th2, int i10) {
            super(str, th2, i10);
        }
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.f26481e = context.getResources();
        this.f26482f = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i10) {
        return Uri.parse("rawresource:///" + i10);
    }

    @Override
    public long a(n nVar) throws RawResourceDataSourceException {
        int identifier;
        String str;
        Uri uri = nVar.f26665a;
        this.f26483g = uri;
        if (TextUtils.equals(com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource.RAW_RESOURCE_SCHEME, uri.getScheme()) || (TextUtils.equals("android.resource", uri.getScheme()) && uri.getPathSegments().size() == 1 && ((String) com.google.android.exoplayer2.util.a.e(uri.getLastPathSegment())).matches("\\d+"))) {
            try {
                identifier = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.", null, 1004);
            }
        } else {
            if (!TextUtils.equals("android.resource", uri.getScheme())) {
                throw new RawResourceDataSourceException("URI must either use scheme rawresource or android.resource", null, 1004);
            }
            String strSubstring = (String) com.google.android.exoplayer2.util.a.e(uri.getPath());
            if (strSubstring.startsWith("/")) {
                strSubstring = strSubstring.substring(1);
            }
            String host = uri.getHost();
            StringBuilder sb2 = new StringBuilder();
            if (TextUtils.isEmpty(host)) {
                str = "";
            } else {
                str = host + ":";
            }
            sb2.append(str);
            sb2.append(strSubstring);
            identifier = this.f26481e.getIdentifier(sb2.toString(), "raw", this.f26482f);
            if (identifier == 0) {
                throw new RawResourceDataSourceException("Resource not found.", null, 2005);
            }
        }
        j(nVar);
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.f26481e.openRawResourceFd(identifier);
            this.f26484h = assetFileDescriptorOpenRawResourceFd;
            if (assetFileDescriptorOpenRawResourceFd == null) {
                throw new RawResourceDataSourceException("Resource is compressed: " + uri, null, 2000);
            }
            long length = assetFileDescriptorOpenRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
            this.f26485i = fileInputStream;
            if (length != -1) {
                try {
                    if (nVar.f26671g > length) {
                        throw new RawResourceDataSourceException(null, null, 2008);
                    }
                } catch (RawResourceDataSourceException e10) {
                    throw e10;
                } catch (IOException e11) {
                    throw new RawResourceDataSourceException(null, e11, 2000);
                }
            }
            long startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
            long jSkip = fileInputStream.skip(nVar.f26671g + startOffset) - startOffset;
            if (jSkip != nVar.f26671g) {
                throw new RawResourceDataSourceException(null, null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.f26486j = -1L;
                } else {
                    long size = channel.size() - channel.position();
                    this.f26486j = size;
                    if (size < 0) {
                        throw new RawResourceDataSourceException(null, null, 2008);
                    }
                }
            } else {
                long j10 = length - jSkip;
                this.f26486j = j10;
                if (j10 < 0) {
                    throw new DataSourceException(2008);
                }
            }
            long jMin = nVar.f26672h;
            if (jMin != -1) {
                long j11 = this.f26486j;
                if (j11 != -1) {
                    jMin = Math.min(j11, jMin);
                }
                this.f26486j = jMin;
            }
            this.f26487k = true;
            k(nVar);
            long j12 = nVar.f26672h;
            return j12 != -1 ? j12 : this.f26486j;
        } catch (Resources.NotFoundException e12) {
            throw new RawResourceDataSourceException(null, e12, 2005);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() {
        this.f26483g = null;
        try {
            InputStream inputStream = this.f26485i;
            if (inputStream != null) {
                inputStream.close();
            }
            this.f26485i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.f26484h;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.f26484h = null;
                    if (this.f26487k) {
                        this.f26487k = false;
                        i();
                    }
                } catch (IOException e10) {
                    throw new RawResourceDataSourceException(null, e10, 2000);
                }
            } catch (Throwable th2) {
                this.f26484h = null;
                if (this.f26487k) {
                    this.f26487k = false;
                    i();
                }
                throw th2;
            }
        } catch (IOException e11) {
            throw new RawResourceDataSourceException(null, e11, 2000);
        }
    }

    @Override
    public Uri getUri() {
        return this.f26483g;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws RawResourceDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f26486j;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new RawResourceDataSourceException(null, e10, 2000);
            }
        }
        int i12 = ((InputStream) p0.j(this.f26485i)).read(bArr, i10, i11);
        if (i12 == -1) {
            if (this.f26486j == -1) {
                return -1;
            }
            throw new RawResourceDataSourceException("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j11 = this.f26486j;
        if (j11 != -1) {
            this.f26486j = j11 - ((long) i12);
        }
        h(i12);
        return i12;
    }
}
