package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.datasource.RawResourceDataSource;
import com.google.android.gms.internal.ads.zzgf;
import com.google.android.gms.internal.ads.zzhb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.util.List;

public final class vvi extends p4i {
    public final Context e;
    public cfi f;
    public AssetFileDescriptor g;
    public InputStream h;
    public long i;
    public boolean j;

    public vvi(Context context) {
        super(false);
        this.e = context.getApplicationContext();
    }

    public static int n(String str) throws zzhb {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new zzhb("Resource identifier must be an integer.", null, 1004);
        }
    }

    public static AssetFileDescriptor o(Context context, cfi cfiVar) throws zzhb {
        Resources resourcesForApplication;
        int identifier;
        Uri uriNormalizeScheme = cfiVar.a.normalizeScheme();
        if (TextUtils.equals(RawResourceDataSource.RAW_RESOURCE_SCHEME, uriNormalizeScheme.getScheme())) {
            resourcesForApplication = context.getResources();
            List<String> pathSegments = uriNormalizeScheme.getPathSegments();
            if (pathSegments.size() != 1) {
                throw new zzhb("rawresource:// URI must have exactly one path element, found " + pathSegments.size());
            }
            identifier = n(pathSegments.get(0));
        } else {
            if (!TextUtils.equals("android.resource", uriNormalizeScheme.getScheme())) {
                throw new zzhb("Unsupported URI scheme (" + uriNormalizeScheme.getScheme() + "). Only android.resource is supported.", null, 1004);
            }
            String path = uriNormalizeScheme.getPath();
            path.getClass();
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            String packageName = TextUtils.isEmpty(uriNormalizeScheme.getHost()) ? context.getPackageName() : uriNormalizeScheme.getHost();
            if (packageName.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(packageName);
                } catch (PackageManager.NameNotFoundException e) {
                    throw new zzhb("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e, 2005);
                }
            }
            if (path.matches("\\d+")) {
                identifier = n(path);
            } else {
                identifier = resourcesForApplication.getIdentifier(packageName + StringUtils.PROCESS_POSTFIX_DELIMITER + path, "raw", null);
                if (identifier == 0) {
                    throw new zzhb("Resource not found.", null, 2005);
                }
            }
        }
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = resourcesForApplication.openRawResourceFd(identifier);
            if (assetFileDescriptorOpenRawResourceFd != null) {
                return assetFileDescriptorOpenRawResourceFd;
            }
            throw new zzhb("Resource is compressed: ".concat(String.valueOf(uriNormalizeScheme)), null, 2000);
        } catch (Resources.NotFoundException e2) {
            throw new zzhb(null, e2, 2005);
        }
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) throws zzhb {
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
                throw new zzhb(null, e, 2000);
            }
        }
        InputStream inputStream = this.h;
        int i3 = kfh.a;
        int i4 = inputStream.read(bArr, i, i2);
        if (i4 == -1) {
            if (this.i == -1) {
                return -1;
            }
            throw new zzhb("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j2 = this.i;
        if (j2 != -1) {
            this.i = j2 - ((long) i4);
        }
        zzg(i4);
        return i4;
    }

    @Override
    public final long j(cfi cfiVar) throws zzhb {
        long size;
        this.f = cfiVar;
        l(cfiVar);
        AssetFileDescriptor assetFileDescriptorO = o(this.e, cfiVar);
        this.g = assetFileDescriptorO;
        long length = assetFileDescriptorO.getLength();
        FileInputStream fileInputStream = new FileInputStream(this.g.getFileDescriptor());
        this.h = fileInputStream;
        if (length != -1) {
            try {
                if (cfiVar.e > length) {
                    throw new zzhb(null, null, 2008);
                }
            } catch (zzhb e) {
                throw e;
            } catch (IOException e2) {
                throw new zzhb(null, e2, 2000);
            }
        }
        long startOffset = this.g.getStartOffset();
        long j = cfiVar.e;
        long jSkip = fileInputStream.skip(startOffset + j) - startOffset;
        if (jSkip != j) {
            throw new zzhb(null, null, 2008);
        }
        if (length == -1) {
            FileChannel channel = fileInputStream.getChannel();
            if (channel.size() == 0) {
                this.i = -1L;
                size = -1;
            } else {
                size = channel.size() - channel.position();
                this.i = size;
                if (size < 0) {
                    throw new zzhb(null, null, 2008);
                }
            }
        } else {
            size = length - jSkip;
            this.i = size;
            if (size < 0) {
                throw new zzgf(2008);
            }
        }
        long j2 = cfiVar.f;
        if (j2 != -1) {
            this.i = size == -1 ? j2 : Math.min(size, j2);
        }
        this.j = true;
        m(cfiVar);
        return j2 != -1 ? j2 : this.i;
    }

    @Override
    public final Uri zzc() {
        cfi cfiVar = this.f;
        if (cfiVar != null) {
            return cfiVar.a;
        }
        return null;
    }

    @Override
    public final void zzd() {
        this.f = null;
        try {
            try {
                try {
                    InputStream inputStream = this.h;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    this.h = null;
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.g = null;
                        if (this.j) {
                            this.j = false;
                            k();
                        }
                    } catch (IOException e) {
                        throw new zzhb(null, e, 2000);
                    }
                } catch (IOException e2) {
                    throw new zzhb(null, e2, 2000);
                }
            } catch (Throwable th) {
                this.h = null;
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.g = null;
                    if (this.j) {
                        this.j = false;
                        k();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new zzhb(null, e3, 2000);
                }
            }
        } catch (Throwable th2) {
            this.g = null;
            if (this.j) {
                this.j = false;
                k();
            }
            throw th2;
        }
    }
}
