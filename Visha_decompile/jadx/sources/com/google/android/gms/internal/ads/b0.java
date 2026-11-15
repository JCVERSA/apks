package com.google.android.gms.internal.ads;

import defpackage.fqe;
import defpackage.ooe;
import defpackage.rpe;
import defpackage.tpe;
import defpackage.vpe;
import defpackage.wqe;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.mozilla.classfile.ByteCode;

public abstract class b0 {
    public static boolean a = false;
    public static MessageDigest b;
    public static final Object c = new Object();
    public static final Object d = new Object();
    public static final CountDownLatch e = new CountDownLatch(1);

    public static rpe a(byte[] bArr, String str) {
        Vector vectorC = c(bArr, 255);
        if (vectorC == null || vectorC.isEmpty()) {
            return null;
        }
        rpe rpeVarB0 = a0.b0();
        int size = vectorC.size();
        for (int i = 0; i < size; i++) {
            rpeVarB0.v(zzgwn.zzv(h((byte[]) vectorC.get(i), str, false), 0, 256));
        }
        byte[] bArrF = f(bArr);
        zzgwn zzgwnVar = zzgwn.zzb;
        rpeVarB0.w(zzgwn.zzv(bArrF, 0, bArrF.length));
        return rpeVarB0;
    }

    public static String b(byte[] bArr, String str) {
        rpe rpeVarA = a(bArr, str);
        return vpe.a(rpeVarA == null ? h(g(4096).l(), str, true) : ((a0) rpeVarA.q()).l(), true);
    }

    public static Vector c(byte[] bArr, int i) {
        int length = bArr.length;
        if (length <= 0) {
            return null;
        }
        int i2 = length + ByteCode.IMPDEP1;
        Vector vector = new Vector();
        for (int i3 = 0; i3 < i2 / 255; i3++) {
            int i4 = i3 * 255;
            try {
                int length2 = bArr.length;
                if (length2 - i4 > 255) {
                    length2 = i4 + 255;
                }
                vector.add(Arrays.copyOfRange(bArr, i4, length2));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    public static void e() {
        synchronized (d) {
            try {
                if (!a) {
                    a = true;
                    new Thread(new zzatu(null)).start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static byte[] f(byte[] bArr) {
        byte[] bArrDigest;
        MessageDigest messageDigest;
        synchronized (c) {
            try {
                e();
                MessageDigest messageDigest2 = null;
                try {
                    if (e.await(2L, TimeUnit.SECONDS) && (messageDigest = b) != null) {
                        messageDigest2 = messageDigest;
                    }
                } catch (InterruptedException unused) {
                }
                if (messageDigest2 == null) {
                    throw new NoSuchAlgorithmException("Cannot compute hash");
                }
                messageDigest2.reset();
                messageDigest2.update(bArr);
                bArrDigest = b.digest();
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrDigest;
    }

    public static t g(int i) {
        ooe ooeVarB0 = t.B0();
        ooeVarB0.w(4096L);
        return (t) ooeVarB0.q();
    }

    public static byte[] h(byte[] bArr, String str, boolean z) {
        byte[] bArrArray;
        int length = bArr.length;
        int i = true != z ? 255 : 239;
        if (length > i) {
            bArr = g(4096).l();
        }
        int i2 = i + 1;
        int length2 = bArr.length;
        byte b2 = (byte) length2;
        if (length2 < i) {
            byte[] bArr2 = new byte[i - length2];
            new SecureRandom().nextBytes(bArr2);
            bArrArray = ByteBuffer.allocate(i2).put(b2).put(bArr).put(bArr2).array();
        } else {
            bArrArray = ByteBuffer.allocate(i2).put(b2).put(bArr).array();
        }
        if (z) {
            bArrArray = ByteBuffer.allocate(256).put(f(bArrArray)).put(bArrArray).array();
        }
        byte[] bArr3 = new byte[256];
        fqe[] fqeVarArr = new wqe().G2;
        int length3 = fqeVarArr.length;
        for (int i3 = 0; i3 < 12; i3++) {
            fqeVarArr[i3].a(bArrArray, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new tpe(str.getBytes("UTF-8")).a(bArr3);
        }
        return bArr3;
    }
}
