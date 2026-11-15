package defpackage;

import com.google.android.gms.internal.ads.i0;
import com.google.android.gms.internal.ads.zzgwn;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

public final class zxh {
    public final i0 a;
    public final File b;
    public final File c;
    public final File d;
    public byte[] e;

    public zxh(i0 i0Var, File file, File file2, File file3) {
        this.a = i0Var;
        this.b = file;
        this.c = file3;
        this.d = file2;
    }

    public final i0 a() {
        return this.a;
    }

    public final File b() {
        return this.c;
    }

    public final File c() {
        return this.b;
    }

    public final boolean d(long j) {
        return this.a.c0() - (System.currentTimeMillis() / 1000) < 3600;
    }

    public final byte[] e() throws Throwable {
        FileInputStream fileInputStream;
        byte[] bArrZzA;
        FileInputStream fileInputStream2 = null;
        if (this.e == null) {
            try {
                fileInputStream = new FileInputStream(this.d);
                try {
                    zzgwn zzgwnVar = zzgwn.zzb;
                    ArrayList arrayList = new ArrayList();
                    int iMin = 256;
                    while (true) {
                        byte[] bArr = new byte[iMin];
                        int i = 0;
                        while (i < iMin) {
                            int i2 = fileInputStream.read(bArr, i, iMin - i);
                            if (i2 == -1) {
                                break;
                            }
                            i += i2;
                        }
                        zzgwn zzgwnVarZzv = i == 0 ? null : zzgwn.zzv(bArr, 0, i);
                        if (zzgwnVarZzv == null) {
                            break;
                        }
                        arrayList.add(zzgwnVarZzv);
                        iMin = Math.min(iMin + iMin, 8192);
                    }
                    bArrZzA = zzgwn.zzu(arrayList).zzA();
                    pv4.a(fileInputStream);
                } catch (IOException unused) {
                    pv4.a(fileInputStream);
                    bArrZzA = null;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    pv4.a(fileInputStream2);
                    throw th;
                }
            } catch (IOException unused2) {
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
            this.e = bArrZzA;
        }
        byte[] bArr2 = this.e;
        if (bArr2 == null) {
            return null;
        }
        return Arrays.copyOf(bArr2, bArr2.length);
    }
}
