package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.media3.common.C;
import com.facebook.ads.redexgen.core.InterfaceC0877Ej;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.io.IOException;
import java.util.Arrays;

public final class HandlerC0876Ei<T extends InterfaceC0877Ej> extends Handler implements Runnable {
    public static byte[] A0C;
    public static String[] A0D = {"YmYVw2S8DUZhSIJBKV9mYTBB1tKcIZso", "NDdcnO0NsMMFHF2bezmvYcIUkVZ5OtU8", "8rmJYKaybwW0Gr1XfrD6wU0k3D4t0vPA", "YmCBBtrMVj6S7IBVYd0tuHNRqLOHp", "BNlgZVMbySVAlN8KpxiSIEQEMbKarpeH", "QLj0CyLyWcLoHh5we5tUZrDrecYjAsKC", "eBbXtTNPiPKoehNQThYFNgHDUWIcJfTE", "1Eh"};
    public boolean A00;
    public int A01;
    public InterfaceC0874Eg<T> A02;
    public C0875Eh A03;
    public IOException A04;
    public Thread A05;
    public boolean A06;
    public final int A07;
    public final long A08;
    public final T A09;
    public volatile boolean A0A;
    public final C2115lc A0B;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 58);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @MetaExoPlayerCustomization("Customized to support load retries")
    private void A02() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.A02.AE3(this.A09, jElapsedRealtime, jElapsedRealtime - this.A08, this.A01);
        this.A04 = null;
        this.A0B.A02.execute((Runnable) C3M.A01(this.A0B.A00));
    }

    public static void A04() {
        A0C = new byte[]{-122, -87, -101, -98, SocketData.CLAZZ_TYPE_FILE, -101, -83, -91, -99, -61, -62, -99, -76, -101, -77, -69, -67, -64, -57, 110, -77, -64, -64, -67, -64, 110, -70, -67, -81, -78, -73, -68, -75, 110, -63, -62, -64, -77, -81, -69, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -3, -12, 7, -1, -12, -14, 3, -12, -13, -81, -12, 1, 1, -2, 1, -81, -5, -2, -16, -13, -8, -3, -10, -81, 2, 3, 1, -12, -16, -4, 5, 30, 21, 40, 32, 21, 19, 36, 21, 20, -48, 21, 40, 19, 21, 32, 36, 25, 31, 30, -48, 24, 17, 30, 20, 28, 25, 30, 23, -48, 28, 31, 17, 20, -48, 19, 31, 29, 32, 28, 21, 36, 21, 20, -63, -38, -47, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -36, -47, -49, -32, -47, -48, SocketData.CLAZZ_TYPE_CODE, -47, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -49, -47, -36, -32, -43, -37, -38, SocketData.CLAZZ_TYPE_CODE, -40, -37, -51, -48, -43, -38, -45, SocketData.CLAZZ_TYPE_CODE, -33, -32, -34, -47, -51, -39, 25, 28, 14, 17, -25};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override
    @MetaExoPlayerCustomization("enableContinueLoadingLogging and currentLoadErrorAction saving are custom")
    public final void handleMessage(Message message) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        String[] strArr = A0D;
        if (strArr[3].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        A0D[6] = "QgUPNZuYIqR5G6UUc33KVEWLFVIzbhR6";
        try {
            if (this.A0A) {
                return;
            }
            if (message.what == 0) {
                A02();
                this.A00 = false;
                return;
            }
            if (message.what == 3) {
                throw ((Error) message.obj);
            }
            A03();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = jElapsedRealtime - this.A08;
            InterfaceC0874Eg interfaceC0874Eg = (InterfaceC0874Eg) C3M.A01(this.A02);
            if (this.A06) {
                interfaceC0874Eg.ADx(this.A09, jElapsedRealtime, j, false);
                return;
            }
            switch (message.what) {
                case 1:
                    try {
                        interfaceC0874Eg.ADz(this.A09, jElapsedRealtime, j);
                        return;
                    } catch (RuntimeException e) {
                        AnonymousClass44.A08(A01(0, 8, 0), A01(71, 44, 118), e);
                        this.A0B.A01 = new C0881En(e);
                        return;
                    }
                case 2:
                    this.A04 = (IOException) message.obj;
                    this.A01++;
                    C0875Eh c0875EhAE0 = interfaceC0874Eg.AE0(this.A09, jElapsedRealtime, j, this.A04, this.A01);
                    this.A03 = c0875EhAE0;
                    if (c0875EhAE0.A00 == 3) {
                        this.A0B.A01 = this.A04;
                        return;
                    } else {
                        if (c0875EhAE0.A00 != 2) {
                            if (c0875EhAE0.A00 == 1) {
                                this.A01 = 1;
                            }
                            this.A00 = true;
                            A06(c0875EhAE0.A01 != C.TIME_UNSET ? c0875EhAE0.A01 : A00());
                            return;
                        }
                        return;
                    }
                default:
                    return;
            }
            AbstractC1314Vl.A00(th, this);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }

    static {
        A04();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Eg != com.facebook.ads.androidx.media3.exoplayer.upstream.Loader$Callback<T extends com.facebook.ads.redexgen.X.Ej> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ei != com.facebook.ads.androidx.media3.exoplayer.upstream.Loader$LoadTask<T extends com.facebook.ads.redexgen.X.Ej> */
    public HandlerC0876Ei(C2115lc c2115lc, Looper looper, T loadable, InterfaceC0874Eg<T> interfaceC0874Eg, int i, long j) {
        super(looper);
        this.A0B = c2115lc;
        this.A09 = loadable;
        this.A02 = interfaceC0874Eg;
        this.A07 = i;
        this.A08 = j;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ei != com.facebook.ads.androidx.media3.exoplayer.upstream.Loader$LoadTask<T extends com.facebook.ads.redexgen.X.Ej> */
    @MetaExoPlayerCustomization("D36993743 Customized Hero Retry Delay Values")
    private long A00() {
        return AbstractC1889hY.A00(this.A01, 0);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ei != com.facebook.ads.androidx.media3.exoplayer.upstream.Loader$LoadTask<T extends com.facebook.ads.redexgen.X.Ej> */
    private void A03() {
        this.A0B.A00 = null;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ei != com.facebook.ads.androidx.media3.exoplayer.upstream.Loader$LoadTask<T extends com.facebook.ads.redexgen.X.Ej> */
    public final void A05(int i) throws IOException {
        if (this.A04 == null || this.A01 <= i) {
        } else {
            throw this.A04;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ei != com.facebook.ads.androidx.media3.exoplayer.upstream.Loader$LoadTask<T extends com.facebook.ads.redexgen.X.Ej> */
    public final void A06(long j) {
        C3M.A08(this.A0B.A00 == null);
        this.A0B.A00 = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            A02();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ei != com.facebook.ads.androidx.media3.exoplayer.upstream.Loader$LoadTask<T extends com.facebook.ads.redexgen.X.Ej> */
    public final void A07(boolean z) {
        this.A0A = z;
        this.A04 = null;
        if (hasMessages(0)) {
            this.A06 = true;
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            synchronized (this) {
                this.A06 = true;
                this.A09.A4j();
                Thread thread = this.A05;
                if (thread != null) {
                    thread.interrupt();
                }
            }
        }
        if (z) {
            A03();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            ((InterfaceC0874Eg) C3M.A01(this.A02)).ADx(this.A09, jElapsedRealtime, jElapsedRealtime - this.A08, true);
            this.A02 = null;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ei != com.facebook.ads.androidx.media3.exoplayer.upstream.Loader$LoadTask<T extends com.facebook.ads.redexgen.X.Ej> */
    @Override
    public final void run() throws Throwable {
        boolean z;
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            try {
                try {
                    try {
                        synchronized (this) {
                            z = !this.A06;
                            this.A05 = Thread.currentThread();
                        }
                        if (z) {
                            C4S.A02(A01(150, 5, 115) + this.A09.getClass().getSimpleName());
                            try {
                                this.A09.AAi();
                                C4S.A00();
                            } catch (Throwable th) {
                                C4S.A00();
                                throw th;
                            }
                        }
                        synchronized (this) {
                            this.A05 = null;
                            Thread.interrupted();
                        }
                        if (!this.A0A) {
                            sendEmptyMessage(1);
                        }
                    } catch (Throwable th2) {
                        AbstractC1314Vl.A00(th2, this);
                    }
                } catch (Error e) {
                    if (!this.A0A) {
                        AnonymousClass44.A08(A01(0, 8, 0), A01(40, 31, 85), e);
                        obtainMessage(3, e).sendToTarget();
                    }
                    throw e;
                }
            } catch (Exception e2) {
                if (!this.A0A) {
                    AnonymousClass44.A08(A01(0, 8, 0), A01(115, 35, 50), e2);
                    obtainMessage(2, new C0881En(e2)).sendToTarget();
                }
            }
        } catch (IOException e3) {
            if (!this.A0A) {
                obtainMessage(2, e3).sendToTarget();
            }
        } catch (OutOfMemoryError e4) {
            if (!this.A0A) {
                AnonymousClass44.A08(A01(0, 8, 0), A01(8, 32, 20), e4);
                obtainMessage(2, new C0881En(e4)).sendToTarget();
            }
        }
    }
}
