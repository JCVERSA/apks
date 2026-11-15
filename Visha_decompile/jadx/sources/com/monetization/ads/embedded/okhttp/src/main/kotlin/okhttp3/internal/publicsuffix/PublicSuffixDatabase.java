package com.monetization.ads.embedded.okhttp.src.main.kotlin.okhttp3.internal.publicsuffix;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.alibaba.android.arouter.utils.Consts;
import com.lzy.okgo.cookie.SerializableCookie;
import com.yandex.mobile.ads.impl.g92;
import com.yandex.mobile.ads.impl.rh1;
import defpackage.i81;
import defpackage.j1a;
import defpackage.ly0;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.sequences.SequencesKt___SequencesKt;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/monetization/ads/embedded/okhttp/src/main/kotlin/okhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", MethodDecl.initName, "()V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class PublicSuffixDatabase {
    private static final byte[] e = {42};
    private static final List<String> f = x71.e("*");
    private static final PublicSuffixDatabase g = new PublicSuffixDatabase();
    public static final int h = 0;
    private final AtomicBoolean a = new AtomicBoolean(false);
    private final CountDownLatch b = new CountDownLatch(1);
    private byte[] c;
    private byte[] d;

    public static final class a {
        public a(int i) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:37:0x0079  */
        public static final String a(byte[] bArr, byte[][] bArr2, int i) {
            int i2;
            boolean z;
            int i3;
            int i4;
            int i5 = -1;
            int i6 = PublicSuffixDatabase.h;
            int length = bArr.length;
            int i7 = 0;
            while (i7 < length) {
                int i8 = (i7 + length) / 2;
                while (i8 > i5 && bArr[i8] != 10) {
                    i8 += i5;
                }
                int i9 = i8 + 1;
                int i10 = 1;
                while (true) {
                    i2 = i9 + i10;
                    if (bArr[i2] == 10) {
                        break;
                    }
                    i10++;
                }
                int i11 = i2 - i9;
                int i12 = i;
                boolean z2 = false;
                int i13 = 0;
                int i14 = 0;
                while (true) {
                    if (z2) {
                        i3 = 46;
                        z = false;
                    } else {
                        byte b = bArr2[i12][i13];
                        byte[] bArr3 = g92.a;
                        int i15 = b & 255;
                        z = z2;
                        i3 = i15;
                    }
                    byte b2 = bArr[i9 + i14];
                    byte[] bArr4 = g92.a;
                    i4 = i3 - (b2 & 255);
                    if (i4 != 0) {
                        break;
                    }
                    i14++;
                    i13++;
                    if (i14 == i11) {
                        break;
                    }
                    if (bArr2[i12].length != i13) {
                        z2 = z;
                    } else {
                        if (i12 == bArr2.length - 1) {
                            break;
                        }
                        i12++;
                        z2 = true;
                        i13 = -1;
                    }
                }
                if (i4 >= 0) {
                    if (i4 <= 0) {
                        int i16 = i11 - i14;
                        int length2 = bArr2[i12].length - i13;
                        int length3 = bArr2.length;
                        for (int i17 = i12 + 1; i17 < length3; i17++) {
                            length2 += bArr2[i17].length;
                        }
                        if (length2 < i16) {
                            length = i8;
                        } else if (length2 <= i16) {
                            Charset charset = StandardCharsets.UTF_8;
                            y45.i(charset, "UTF_8");
                            return new String(bArr, i9, i11, charset);
                        }
                    }
                    i7 = i2 + 1;
                } else {
                    length = i8;
                }
                i5 = -1;
            }
            return null;
        }

        private a() {
        }
    }

    private final void b() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(okhttp3.internal.publicsuffix.PublicSuffixDatabase.PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        BufferedSource bufferedSourceBuffer = Okio.buffer(new GzipSource(Okio.source(resourceAsStream)));
        try {
            byte[] byteArray = bufferedSourceBuffer.readByteArray(bufferedSourceBuffer.readInt());
            byte[] byteArray2 = bufferedSourceBuffer.readByteArray(bufferedSourceBuffer.readInt());
            zfb zfbVar = zfb.a;
            ly0.a(bufferedSourceBuffer, null);
            synchronized (this) {
                y45.g(byteArray);
                this.c = byteArray;
                y45.g(byteArray2);
                this.d = byteArray2;
            }
            this.b.countDown();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ly0.a(bufferedSourceBuffer, th);
                throw th2;
            }
        }
    }

    public final String a(String str) {
        int size;
        int size2;
        y45.j(str, SerializableCookie.DOMAIN);
        String unicode = IDN.toUnicode(str);
        y45.g(unicode);
        List<String> listN0 = j1a.N0(unicode, new char[]{'.'}, false, 0, 6, null);
        if (y45.e(i81.A0(listN0), "")) {
            listN0 = i81.g0(listN0, 1);
        }
        List<String> listA = a(listN0);
        if (listN0.size() == listA.size() && listA.get(0).charAt(0) != '!') {
            return null;
        }
        if (listA.get(0).charAt(0) == '!') {
            size = listN0.size();
            size2 = listA.size();
        } else {
            size = listN0.size();
            size2 = listA.size() + 1;
        }
        int i = size - size2;
        List listN1 = j1a.N0(str, new char[]{'.'}, false, 0, 6, null);
        if (y45.e(i81.A0(listN1), "")) {
            listN1 = i81.g0(listN1, 1);
        }
        return SequencesKt___SequencesKt.P(SequencesKt___SequencesKt.E(i81.b0(listN1), i), Consts.DOT, null, null, 0, null, null, 62, null);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0030  */
    private final List<String> a(List<String> list) {
        String str;
        String strA;
        String str2;
        List<String> listK;
        List<String> listK2;
        if (this.a.get() || !this.a.compareAndSet(false, true)) {
            try {
                this.b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            boolean z = false;
            while (true) {
                try {
                    try {
                        b();
                        break;
                    } catch (InterruptedIOException unused2) {
                        Thread.interrupted();
                        z = true;
                    } catch (IOException e2) {
                        int i = rh1.c;
                        rh1.a.getClass();
                        rh1.a(5, "Failed to read public suffix list", e2);
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                    }
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
        if (this.c != null) {
            int size = list.size();
            byte[][] bArr = new byte[size][];
            for (int i2 = 0; i2 < size; i2++) {
                String str3 = list.get(i2);
                Charset charset = StandardCharsets.UTF_8;
                y45.i(charset, "UTF_8");
                byte[] bytes = str3.getBytes(charset);
                y45.i(bytes, "getBytes(...)");
                bArr[i2] = bytes;
            }
            int i3 = 0;
            while (true) {
                str = null;
                if (i3 >= size) {
                    strA = null;
                    break;
                }
                byte[] bArr2 = this.c;
                if (bArr2 == null) {
                    y45.B("publicSuffixListBytes");
                    bArr2 = null;
                }
                strA = a.a(bArr2, bArr, i3);
                if (strA != null) {
                    break;
                }
                i3++;
            }
            if (size <= 1) {
                str2 = null;
                break;
            }
            byte[][] bArr3 = (byte[][]) bArr.clone();
            int length = bArr3.length - 1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    str2 = null;
                    break;
                }
                bArr3[i4] = e;
                byte[] bArr4 = this.c;
                if (bArr4 == null) {
                    y45.B("publicSuffixListBytes");
                    bArr4 = null;
                }
                String strA2 = a.a(bArr4, bArr3, i4);
                if (strA2 != null) {
                    str2 = strA2;
                    break;
                }
                i4++;
            }
            if (str2 != null) {
                int i5 = size - 1;
                for (int i6 = 0; i6 < i5; i6++) {
                    byte[] bArr5 = this.d;
                    if (bArr5 == null) {
                        y45.B("publicSuffixExceptionListBytes");
                        bArr5 = null;
                    }
                    String strA3 = a.a(bArr5, bArr, i6);
                    if (strA3 != null) {
                        str = strA3;
                        break;
                    }
                }
            }
            if (str != null) {
                return j1a.N0("!" + str, new char[]{'.'}, false, 0, 6, null);
            }
            if (strA == null && str2 == null) {
                return f;
            }
            if (strA == null || (listK = j1a.N0(strA, new char[]{'.'}, false, 0, 6, null)) == null) {
                listK = y71.k();
            }
            if (str2 == null || (listK2 = j1a.N0(str2, new char[]{'.'}, false, 0, 6, null)) == null) {
                listK2 = y71.k();
            }
            return listK.size() > listK2.size() ? listK : listK2;
        }
        throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
    }
}
