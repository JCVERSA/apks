package com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Ym;
import com.bytedance.sdk.component.sP.Sj.Zq;
import com.bytedance.sdk.component.sP.Sj.sP;
import com.bytedance.sdk.component.sP.Sj.uvD;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;

public class b implements com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.a {

    private File f19572c;

    private File f19573d;

    private long f19574e;

    private RandomAccessFile f19578i;

    private final TKC f19579j;

    private volatile long f19570a = -2147483648L;

    private final Object f19571b = new Object();

    private volatile long f19575f = -1;

    private volatile boolean f19576g = false;

    private volatile boolean f19577h = false;

    public b(Context context, TKC tkc) {
        this.f19574e = 0L;
        this.f19578i = null;
        this.f19579j = tkc;
        try {
            this.f19572c = e6.b.d(tkc.sP(), tkc.sef());
            this.f19573d = e6.b.c(tkc.sP(), tkc.sef());
            if (d()) {
                this.f19578i = new RandomAccessFile(this.f19573d, CampaignEx.JSON_KEY_AD_R);
            } else {
                this.f19578i = new RandomAccessFile(this.f19572c, "rw");
            }
            if (d()) {
                return;
            }
            this.f19574e = this.f19572c.length();
            i();
        } catch (Throwable unused) {
            tkc.Fmk();
        }
    }

    private boolean d() {
        return this.f19573d.exists();
    }

    private long e() {
        return d() ? this.f19573d.length() : this.f19572c.length();
    }

    public void p() {
        synchronized (this.f19571b) {
            if (d()) {
                this.f19579j.Fmk();
                this.f19579j.sef();
                return;
            }
            try {
                if (!this.f19572c.renameTo(this.f19573d)) {
                    throw new IOException("Error renaming file " + this.f19572c + " to " + this.f19573d + " for completion!");
                }
                RandomAccessFile randomAccessFile = this.f19578i;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f19578i = new RandomAccessFile(this.f19573d, "rw");
                this.f19579j.sef();
                this.f19579j.Fmk();
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
    }

    @Override
    public long TKC() {
        if (d()) {
            this.f19570a = this.f19573d.length();
        } else {
            synchronized (this.f19571b) {
                int i10 = 0;
                while (this.f19570a == -2147483648L) {
                    try {
                        i10 += 15;
                        try {
                            this.f19571b.wait(5L);
                            if (i10 > 20000) {
                                return -1L;
                            }
                        } catch (InterruptedException unused) {
                            throw new IOException("total length InterruptException");
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
        return this.f19570a;
    }

    @Override
    public int a(long j10, byte[] bArr, int i10, int i11) throws IOException {
        try {
            if (j10 == this.f19570a) {
                return -1;
            }
            int i12 = 0;
            int i13 = 0;
            while (!this.f19576g) {
                synchronized (this.f19571b) {
                    try {
                        if (j10 < e()) {
                            this.f19578i.seek(j10);
                            i13 = this.f19578i.read(bArr, i10, i11);
                        } else {
                            i12 += 33;
                            this.f19571b.wait(33L);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (i13 > 0) {
                    return i13;
                }
                if (i12 >= 20000) {
                    throw new SocketTimeoutException();
                }
            }
            return -1;
        } catch (Throwable th3) {
            if (th3 instanceof IOException) {
                throw th3;
            }
            throw new IOException();
        }
    }

    public void i() {
        Ym.Sj sjSP = v5.b.a() != null ? v5.b.a().sP() : new Ym.Sj("v_cache");
        long jUvD = this.f19579j.uvD();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        sjSP.Sj(jUvD, timeUnit).sP(this.f19579j.dNu(), timeUnit).TKC(this.f19579j.TzV(), timeUnit);
        Ym ymSj = sjSP.Sj();
        this.f19579j.sef();
        ymSj.Sj(new Fmk.Sj().Sj("RANGE", "bytes=" + this.f19574e + "-").sP(this.f19579j.Fmk()).Sj().Sj("videoLoadWhenPlaying").Sj(9).sP()).Sj(new a());
    }

    @Override
    public void sP() {
        try {
            if (!this.f19576g) {
                this.f19578i.close();
            }
            File file = this.f19572c;
            if (file != null) {
                file.setLastModified(System.currentTimeMillis());
            }
            File file2 = this.f19573d;
            if (file2 != null) {
                file2.setLastModified(System.currentTimeMillis());
            }
        } catch (Throwable unused) {
        }
        this.f19576g = true;
    }

    class a implements com.bytedance.sdk.component.sP.Sj.TKC {
        a() {
        }

        @Override
        public void Sj(sP sPVar, IOException iOException) {
            b.this.f19577h = false;
            b.this.f19570a = -1L;
        }

        /* JADX WARN: Code duplicated, block: B:76:0x0190 A[Catch: all -> 0x01b7, TryCatch #0 {all -> 0x01b7, blocks: (B:74:0x018b, B:76:0x0190, B:77:0x0193, B:79:0x019e, B:81:0x01b2), top: B:90:0x018b }] */
        @Override
        public void Sj(sP sPVar, Zq zq2) {
            uvD uvdVS;
            InputStream inputStream;
            long length;
            long j10;
            if (zq2 != null) {
                InputStream inputStreamTKC = null;
                try {
                    b.this.f19577h = zq2.EjP();
                    if (!b.this.f19577h) {
                        b.this.f19577h = false;
                        b bVar = b.this;
                        bVar.f19570a = bVar.f19575f;
                        uvdVS = null;
                    } else {
                        uvdVS = zq2.vS();
                        try {
                            if (b.this.f19577h && uvdVS != null) {
                                b.this.f19570a = uvdVS.Sj() + b.this.f19574e;
                                inputStreamTKC = uvdVS.TKC();
                            }
                            inputStream = inputStreamTKC;
                            if (inputStream == null) {
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Throwable unused) {
                                        return;
                                    }
                                }
                                if (uvdVS != null) {
                                    uvdVS.close();
                                }
                                zq2.close();
                                if (b.this.f19577h && b.this.f19572c.length() == b.this.f19570a) {
                                    b.this.p();
                                    return;
                                }
                                return;
                            }
                            try {
                                byte[] bArr = new byte[8192];
                                long j11 = b.this.f19574e;
                                int i10 = 0;
                                long j12 = 0;
                                while (true) {
                                    int i11 = inputStream.read(bArr, i10, 8192 - i10);
                                    if (i11 == -1) {
                                        break;
                                    }
                                    i10 += i11;
                                    j12 += (long) i11;
                                    boolean z10 = j12 % PlaybackStateCompat.ACTION_PLAY_FROM_URI == 0 || j12 == b.this.f19570a - b.this.f19574e;
                                    long unused2 = b.this.f19570a;
                                    long unused3 = b.this.f19574e;
                                    b.this.f19579j.sef();
                                    b.this.f19579j.Fmk();
                                    if (z10) {
                                        synchronized (b.this.f19571b) {
                                            e6.b.b(b.this.f19578i, bArr, Long.valueOf(j11).intValue(), i10, b.this.f19579j.sef());
                                        }
                                        j11 += (long) i10;
                                        i10 = 0;
                                    }
                                }
                                long unused4 = b.this.f19574e;
                                long unused5 = b.this.f19570a;
                                long unused6 = b.this.f19570a;
                                long unused7 = b.this.f19574e;
                                b.this.f19579j.Fmk();
                                inputStreamTKC = inputStream;
                            } catch (Throwable unused8) {
                                try {
                                    b.this.f19577h = false;
                                    b bVar2 = b.this;
                                    bVar2.f19570a = bVar2.f19575f;
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable unused9) {
                                            return;
                                        }
                                    }
                                    if (uvdVS != null) {
                                        uvdVS.close();
                                    }
                                    zq2.close();
                                    if (b.this.f19577h) {
                                        if (length == j10) {
                                            return;
                                        } else {
                                            return;
                                        }
                                    }
                                    return;
                                } finally {
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                            if (uvdVS != null) {
                                                uvdVS.close();
                                            }
                                            zq2.close();
                                            if (b.this.f19577h && b.this.f19572c.length() == b.this.f19570a) {
                                                b.this.p();
                                            }
                                        } catch (Throwable unused10) {
                                        }
                                    } else {
                                        if (uvdVS != null) {
                                            uvdVS.close();
                                        }
                                        zq2.close();
                                        if (b.this.f19577h) {
                                            b.this.p();
                                        }
                                    }
                                }
                            }
                        } catch (Throwable unused11) {
                            inputStream = null;
                        }
                    }
                    if (inputStreamTKC != null) {
                        try {
                            inputStreamTKC.close();
                        } catch (Throwable unused12) {
                            return;
                        }
                    }
                    if (uvdVS != null) {
                        uvdVS.close();
                    }
                    zq2.close();
                    if (b.this.f19577h && b.this.f19572c.length() == b.this.f19570a) {
                        b.this.p();
                    }
                } catch (Throwable unused13) {
                    uvdVS = null;
                    inputStream = null;
                }
            } else {
                b.this.f19577h = false;
                b bVar3 = b.this;
                bVar3.f19570a = bVar3.f19575f;
            }
        }
    }
}
