package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzga;
import com.transsion.livecaption.constant.ICode;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

public final class m7i extends p4i {
    public final ContentResolver e;
    public Uri f;
    public AssetFileDescriptor g;
    public FileInputStream h;
    public long i;
    public boolean j;

    public m7i(Context context) {
        super(false);
        this.e = context.getContentResolver();
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) throws zzga {
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
                throw new zzga(e, 2000);
            }
        }
        FileInputStream fileInputStream = this.h;
        int i3 = kfh.a;
        int i4 = fileInputStream.read(bArr, i, i2);
        if (i4 == -1) {
            return -1;
        }
        long j2 = this.i;
        if (j2 != -1) {
            this.i = j2 - ((long) i4);
        }
        zzg(i4);
        return i4;
    }

    @Override
    public final long j(cfi cfiVar) throws zzga {
        int i;
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        long jPosition;
        try {
            try {
                Uri uriNormalizeScheme = cfiVar.a.normalizeScheme();
                this.f = uriNormalizeScheme;
                l(cfiVar);
                if (ICode.CALL.CALL_KEY_CONTENT.equals(uriNormalizeScheme.getScheme())) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                    assetFileDescriptorOpenAssetFileDescriptor = this.e.openTypedAssetFileDescriptor(uriNormalizeScheme, SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE, bundle);
                } else {
                    assetFileDescriptorOpenAssetFileDescriptor = this.e.openAssetFileDescriptor(uriNormalizeScheme, "r");
                }
                this.g = assetFileDescriptorOpenAssetFileDescriptor;
                if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                    i = 2000;
                    try {
                        throw new zzga(new IOException("Could not open file descriptor for: " + String.valueOf(uriNormalizeScheme)), 2000);
                    } catch (IOException e) {
                        e = e;
                        if (true == (e instanceof FileNotFoundException)) {
                            i = 2005;
                        }
                        throw new zzga(e, i);
                    }
                }
                long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
                this.h = fileInputStream;
                if (length != -1 && cfiVar.e > length) {
                    throw new zzga(null, 2008);
                }
                long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
                long j = cfiVar.e;
                long jSkip = fileInputStream.skip(startOffset + j) - startOffset;
                if (jSkip != j) {
                    throw new zzga(null, 2008);
                }
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size == 0) {
                        this.i = -1L;
                        jPosition = -1;
                    } else {
                        jPosition = size - channel.position();
                        this.i = jPosition;
                        if (jPosition < 0) {
                            throw new zzga(null, 2008);
                        }
                    }
                } else {
                    jPosition = length - jSkip;
                    this.i = jPosition;
                    if (jPosition < 0) {
                        throw new zzga(null, 2008);
                    }
                }
                long j2 = cfiVar.f;
                if (j2 != -1) {
                    this.i = jPosition == -1 ? j2 : Math.min(jPosition, j2);
                }
                this.j = true;
                m(cfiVar);
                return j2 != -1 ? j2 : this.i;
            } catch (IOException e2) {
                e = e2;
                i = 2000;
            }
        } catch (zzga e3) {
            throw e3;
        }
    }

    @Override
    public final Uri zzc() {
        return this.f;
    }

    @Override
    public final void zzd() {
        this.f = null;
        try {
            try {
                try {
                    FileInputStream fileInputStream = this.h;
                    if (fileInputStream != null) {
                        fileInputStream.close();
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
                        throw new zzga(e, 2000);
                    }
                } catch (IOException e2) {
                    throw new zzga(e2, 2000);
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
                    throw new zzga(e3, 2000);
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
