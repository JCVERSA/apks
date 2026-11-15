package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.datasource.RawResourceDataSource;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

public final class sn1 extends jk {
    private final Resources e;
    private final String f;

    @Nullable
    private Uri g;

    @Nullable
    private AssetFileDescriptor h;

    @Nullable
    private FileInputStream i;
    private long j;
    private boolean k;

    public static class a extends uv {
        public a(int i, @Nullable String str, @Nullable Exception exc) {
            super(i, str, exc);
        }
    }

    public sn1(Context context) {
        super(false);
        this.e = context.getResources();
        this.f = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i) {
        return Uri.parse("rawresource:///" + i);
    }

    /* JADX WARN: Code duplicated, block: B:86:0x00a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override
    public final long a(xv xvVar) throws a {
        int identifier;
        String str;
        Uri uri = xvVar.a;
        this.g = uri;
        if (TextUtils.equals(RawResourceDataSource.RAW_RESOURCE_SCHEME, uri.getScheme())) {
            try {
                String lastPathSegment = uri.getLastPathSegment();
                lastPathSegment.getClass();
                identifier = Integer.parseInt(lastPathSegment);
            } catch (NumberFormatException unused) {
                throw new a(1004, "Resource identifier must be an integer.", null);
            }
        } else {
            if (TextUtils.equals("android.resource", uri.getScheme()) && uri.getPathSegments().size() == 1) {
                String lastPathSegment2 = uri.getLastPathSegment();
                lastPathSegment2.getClass();
                if (lastPathSegment2.matches("\\d+")) {
                    String lastPathSegment3 = uri.getLastPathSegment();
                    lastPathSegment3.getClass();
                    identifier = Integer.parseInt(lastPathSegment3);
                }
            }
            if (!TextUtils.equals("android.resource", uri.getScheme())) {
                throw new a(1004, "URI must either use scheme rawresource or android.resource", null);
            }
            String path = uri.getPath();
            path.getClass();
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            String host = uri.getHost();
            StringBuilder sb = new StringBuilder();
            if (TextUtils.isEmpty(host)) {
                str = "";
            } else {
                str = host + StringUtils.PROCESS_POSTFIX_DELIMITER;
            }
            sb.append(str);
            sb.append(path);
            identifier = this.e.getIdentifier(sb.toString(), "raw", this.f);
            if (identifier == 0) {
                throw new a(2005, "Resource not found.", null);
            }
        }
        b(xvVar);
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.e.openRawResourceFd(identifier);
            this.h = assetFileDescriptorOpenRawResourceFd;
            if (assetFileDescriptorOpenRawResourceFd == null) {
                throw new a(2000, "Resource is compressed: " + uri, null);
            }
            long length = assetFileDescriptorOpenRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
            this.i = fileInputStream;
            if (length != -1) {
                try {
                    if (xvVar.f > length) {
                        throw new a(2008, null, null);
                    }
                } catch (a e) {
                    throw e;
                } catch (IOException e2) {
                    throw new a(2000, null, e2);
                }
            }
            long startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
            long jSkip = fileInputStream.skip(xvVar.f + startOffset) - startOffset;
            if (jSkip != xvVar.f) {
                throw new a(2008, null, null);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.j = -1L;
                } else {
                    long size = channel.size() - channel.position();
                    this.j = size;
                    if (size < 0) {
                        throw new a(2008, null, null);
                    }
                }
            } else {
                long j = length - jSkip;
                this.j = j;
                if (j < 0) {
                    throw new uv(2008);
                }
            }
            long jMin = xvVar.g;
            if (jMin != -1) {
                long j2 = this.j;
                if (j2 != -1) {
                    jMin = Math.min(j2, jMin);
                }
                this.j = jMin;
            }
            this.k = true;
            c(xvVar);
            long j3 = xvVar.g;
            return j3 != -1 ? j3 : this.j;
        } catch (Resources.NotFoundException e3) {
            throw new a(2005, null, e3);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void close() throws a {
        this.g = null;
        try {
            FileInputStream fileInputStream = this.i;
            if (fileInputStream != null) {
                fileInputStream.close();
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
                        e();
                    }
                } catch (IOException e) {
                    throw new a(2000, null, e);
                }
            } catch (Throwable th) {
                this.h = null;
                if (this.k) {
                    this.k = false;
                    e();
                }
                throw th;
            }
        } catch (IOException e2) {
            throw new a(2000, null, e2);
        }
    }

    @Override
    @Nullable
    public final Uri getUri() {
        return this.g;
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws a {
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
                throw new a(2000, null, e);
            }
        }
        FileInputStream fileInputStream = this.i;
        int i3 = f92.a;
        int i4 = fileInputStream.read(bArr, i, i2);
        if (i4 == -1) {
            if (this.j == -1) {
                return -1;
            }
            throw new a(2000, "End of stream reached having not read sufficient data.", new EOFException());
        }
        long j2 = this.j;
        if (j2 != -1) {
            this.j = j2 - ((long) i4);
        }
        c(i4);
        return i4;
    }
}
