package androidx.media3.datasource;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.util.List;
import w1.h;

public final class RawResourceDataSource extends w1.a {

    private final Context f10391e;

    private h f10392f;

    private AssetFileDescriptor f10393g;

    private InputStream f10394h;

    private long f10395i;

    private boolean f10396j;

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
        this.f10391e = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i10) {
        return Uri.parse("rawresource:///" + i10);
    }

    private static AssetFileDescriptor h(Context context, h hVar) throws RawResourceDataSourceException {
        Resources resourcesForApplication;
        int identifier;
        Uri uriNormalizeScheme = hVar.f74097a.normalizeScheme();
        if (TextUtils.equals(com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource.RAW_RESOURCE_SCHEME, uriNormalizeScheme.getScheme())) {
            resourcesForApplication = context.getResources();
            List<String> pathSegments = uriNormalizeScheme.getPathSegments();
            if (pathSegments.size() != 1) {
                throw new RawResourceDataSourceException("rawresource:// URI must have exactly one path element, found " + pathSegments.size());
            }
            identifier = i(pathSegments.get(0));
        } else {
            if (!TextUtils.equals("android.resource", uriNormalizeScheme.getScheme())) {
                throw new RawResourceDataSourceException("Unsupported URI scheme (" + uriNormalizeScheme.getScheme() + "). Only android.resource is supported.", null, 1004);
            }
            String strSubstring = (String) androidx.media3.common.util.a.e(uriNormalizeScheme.getPath());
            if (strSubstring.startsWith("/")) {
                strSubstring = strSubstring.substring(1);
            }
            String packageName = TextUtils.isEmpty(uriNormalizeScheme.getHost()) ? context.getPackageName() : uriNormalizeScheme.getHost();
            if (packageName.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(packageName);
                } catch (PackageManager.NameNotFoundException e10) {
                    throw new RawResourceDataSourceException("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e10, 2005);
                }
            }
            if (strSubstring.matches("\\d+")) {
                identifier = i(strSubstring);
            } else {
                identifier = resourcesForApplication.getIdentifier(packageName + ":" + strSubstring, "raw", null);
                if (identifier == 0) {
                    throw new RawResourceDataSourceException("Resource not found.", null, 2005);
                }
            }
        }
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = resourcesForApplication.openRawResourceFd(identifier);
            if (assetFileDescriptorOpenRawResourceFd != null) {
                return assetFileDescriptorOpenRawResourceFd;
            }
            throw new RawResourceDataSourceException("Resource is compressed: " + uriNormalizeScheme, null, 2000);
        } catch (Resources.NotFoundException e11) {
            throw new RawResourceDataSourceException(null, e11, 2005);
        }
    }

    private static int i(String str) throws RawResourceDataSourceException {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new RawResourceDataSourceException("Resource identifier must be an integer.", null, 1004);
        }
    }

    @Override
    public long a(h hVar) throws RawResourceDataSourceException {
        this.f10392f = hVar;
        f(hVar);
        AssetFileDescriptor assetFileDescriptorH = h(this.f10391e, hVar);
        this.f10393g = assetFileDescriptorH;
        long length = assetFileDescriptorH.getLength();
        FileInputStream fileInputStream = new FileInputStream(this.f10393g.getFileDescriptor());
        this.f10394h = fileInputStream;
        if (length != -1) {
            try {
                if (hVar.f74103g > length) {
                    throw new RawResourceDataSourceException(null, null, 2008);
                }
            } catch (RawResourceDataSourceException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RawResourceDataSourceException(null, e11, 2000);
            }
        }
        long startOffset = this.f10393g.getStartOffset();
        long jSkip = fileInputStream.skip(hVar.f74103g + startOffset) - startOffset;
        if (jSkip != hVar.f74103g) {
            throw new RawResourceDataSourceException(null, null, 2008);
        }
        if (length == -1) {
            FileChannel channel = fileInputStream.getChannel();
            if (channel.size() == 0) {
                this.f10395i = -1L;
            } else {
                long size = channel.size() - channel.position();
                this.f10395i = size;
                if (size < 0) {
                    throw new RawResourceDataSourceException(null, null, 2008);
                }
            }
        } else {
            long j10 = length - jSkip;
            this.f10395i = j10;
            if (j10 < 0) {
                throw new DataSourceException(2008);
            }
        }
        long jMin = hVar.f74104h;
        if (jMin != -1) {
            long j11 = this.f10395i;
            if (j11 != -1) {
                jMin = Math.min(j11, jMin);
            }
            this.f10395i = jMin;
        }
        this.f10396j = true;
        g(hVar);
        long j12 = hVar.f74104h;
        return j12 != -1 ? j12 : this.f10395i;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() {
        this.f10392f = null;
        try {
            InputStream inputStream = this.f10394h;
            if (inputStream != null) {
                inputStream.close();
            }
            this.f10394h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.f10393g;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.f10393g = null;
                    if (this.f10396j) {
                        this.f10396j = false;
                        e();
                    }
                } catch (IOException e10) {
                    throw new RawResourceDataSourceException(null, e10, 2000);
                }
            } catch (Throwable th2) {
                this.f10393g = null;
                if (this.f10396j) {
                    this.f10396j = false;
                    e();
                }
                throw th2;
            }
        } catch (IOException e11) {
            throw new RawResourceDataSourceException(null, e11, 2000);
        }
    }

    @Override
    public Uri getUri() {
        h hVar = this.f10392f;
        if (hVar != null) {
            return hVar.f74097a;
        }
        return null;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws RawResourceDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f10395i;
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
        int i12 = ((InputStream) a1.i(this.f10394h)).read(bArr, i10, i11);
        if (i12 == -1) {
            if (this.f10395i == -1) {
                return -1;
            }
            throw new RawResourceDataSourceException("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j11 = this.f10395i;
        if (j11 != -1) {
            this.f10395i = j11 - ((long) i12);
        }
        d(i12);
        return i12;
    }
}
