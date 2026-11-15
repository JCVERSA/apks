package com.facebook.ads.redexgen.core;

import android.media.MediaCodec;
import android.os.SystemClock;
import android.util.Log;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class AU {
    public static byte[] A03;
    public boolean A00 = false;
    public final ConcurrentLinkedQueue<AS> A01 = new ConcurrentLinkedQueue<>();
    public final AV A02;

    static {
        A05();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 52);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{-89, -38, -59, -57, -46, -42, -53, -47, -48, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -39, -54, -57, -48, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -42, -44, -37, -53, -48, -55, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -42, -47, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -53, -48, -43, -42, -61, -48, -42, -53, -61, -42, -57, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -121, -43, -100, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -121, -43, -72, -48, -49, -44, -52, -82, -38, -49, -48, -50, -69, -38, -38, -41, -70, -37, -33, -44, -40, -44, -27, -48, -49, -59, -46, -46, -49, -46, SocketData.CLAZZ_TYPE_ERROR_CODE, -41, -56, -55, -52, -59, SocketData.CLAZZ_TYPE_ERROR_CODE, -46, -59, -52, -59, -63, -45, -59, SocketData.CLAZZ_TYPE_ERROR_CODE, -61, -49, -60, -59, -61, SocketData.CLAZZ_TYPE_ERROR_CODE, -58, -46, -49, -51, SocketData.CLAZZ_TYPE_ERROR_CODE, -45, -59, -44, SocketData.CLAZZ_TYPE_ERROR_CODE, -58, -55, -50, -63, -52, -52, -39, -102, SocketData.CLAZZ_TYPE_END_SOCKET, -123, -45, -40, -27, -27, -30, -27, -96, -22, -37, -36, -33, -40, -96, -27, -40, -33, -40, -44, -26, -40, -96, -42, -30, -41, -40, -42, -96, -39, -27, -30, -32, -96, -26, -40, -25, -83, -109, -104, -26, -34, -15, -24, -23, -27, -38, -14, -34, -21, -85, -89, -38, -17, -86, -89, -20, -21, -36, -89, -67, -38, -17, -86, -35, -58, -34, -35, -30, -38, -68, -24, -35, -34, -36, -70, -35, -38, -23, -19, -34, -21};
    }

    public AU(AV av) {
        this.A02 = av;
    }

    public AO A02(boolean z, C1907hv c1907hv, EnumC1904hq enumC1904hq, String str) throws Exception {
        Set<AO> set;
        if (this.A02.A0I(z, c1907hv) && AV.A0G(str, c1907hv)) {
            synchronized (this.A02.A04) {
                set = this.A02.A04.get(str);
            }
            if (set != null) {
                synchronized (set) {
                    if (!set.isEmpty()) {
                        this.A02.A00--;
                        Iterator<AO> it = set.iterator();
                        AO ret = it.next();
                        it.remove();
                        this.A02.A03().A0A(z, str, enumC1904hq, ret.hashCode());
                        return ret;
                    }
                }
            }
        }
        try {
            C1902ho c1902hoA05 = this.A02.A03().A05(z, str, enumC1904hq);
            AO aoA03 = A03(z, str);
            this.A02.A03().A06(c1902hoA05, aoA03.hashCode());
            return aoA03;
        } catch (Exception e) {
            throw new MediaCodecInitializationException(str, e);
        }
    }

    public AO A03(boolean z, String str) throws Exception {
        String strA04 = A04(150, 41, 69);
        if (z && AV.A0E(str)) {
            try {
                return (AO) Class.forName(strA04).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Exception e) {
                Log.w(A04(43, 23, 55), String.format(A04(0, 43, 46), strA04, e.getMessage()));
            }
        }
        return new C2179mf(MediaCodec.createByCodecName(str));
    }

    public void A0B(EnumC1904hq enumC1904hq) {
        String strA04;
        String str;
        AV av;
        Set<AO> set;
        for (AS as : this.A01) {
            try {
                try {
                    if (!as.A05) {
                        A08(as.A01, enumC1904hq, Boolean.valueOf(as.A04), as.A00);
                    } else {
                        try {
                            try {
                                this.A02.A05 = SystemClock.elapsedRealtime();
                                as.A00.reset();
                                av = this.A02;
                            } catch (Throwable th) {
                                this.A02.A05 = -1L;
                                throw th;
                            }
                        } catch (IllegalStateException unused) {
                            A09(as.A02, as.A00);
                            av = this.A02;
                        }
                        av.A05 = -1L;
                        if (as.A03) {
                            synchronized (this.A02.A04) {
                                set = this.A02.A04.get(as.A02);
                            }
                            if (set != null) {
                                synchronized (set) {
                                    set.add(as.A00);
                                    this.A02.A00++;
                                }
                            }
                        }
                    }
                    try {
                        synchronized (this.A01) {
                            try {
                                this.A01.remove(as);
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    } catch (Exception e) {
                        strA04 = A04(43, 23, 55);
                        str = String.format(A04(66, 46, 44), e.getMessage());
                        Log.w(strA04, str);
                    }
                } catch (Exception e2) {
                    Log.w(A04(43, 23, 55), String.format(A04(112, 38, 63), e2.getMessage()));
                    try {
                        synchronized (this.A01) {
                            try {
                                this.A01.remove(as);
                            } catch (Throwable th3) {
                                throw th3;
                            }
                        }
                    } catch (Exception e3) {
                        strA04 = A04(43, 23, 55);
                        str = String.format(A04(66, 46, 44), e3.getMessage());
                        Log.w(strA04, str);
                    }
                }
            } catch (Throwable th4) {
                try {
                    synchronized (this.A01) {
                        this.A01.remove(as);
                        throw th4;
                    }
                } catch (Exception e4) {
                    Log.w(A04(43, 23, 55), String.format(A04(66, 46, 44), e4.getMessage()));
                }
            }
        }
    }

    private void A08(C1907hv c1907hv, EnumC1904hq enumC1904hq, Boolean bool, AO ao) {
        try {
            if (!c1907hv.A0Q || (!bool.booleanValue() && !c1907hv.A0P)) {
                ao.stop();
            }
        } finally {
            this.A02.A03().A08(enumC1904hq, ao.hashCode());
            ao.AGr();
            this.A02.A03().A07(enumC1904hq, ao.hashCode());
        }
    }

    private void A09(String str, AO ao) {
        Set<AO> set;
        synchronized (this.A02.A04) {
            set = this.A02.A04.get(str);
        }
        if (set != null) {
            synchronized (set) {
                if (set.remove(ao)) {
                    this.A02.A00--;
                }
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00e0 */
    /* JADX WARN: Code duplicated, block: B:106:0x0120 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:89:0x0108  */
    /* JADX WARN: Code duplicated, block: B:91:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void A0A(boolean z, C1907hv c1907hv, final EnumC1904hq enumC1904hq, String str, AO ao) throws Throwable {
        AS as;
        boolean z2 = false;
        if (this.A02.A0I(z, c1907hv) && AV.A0G(str, c1907hv)) {
            if (c1907hv.A0K && !this.A00) {
                this.A00 = true;
                Executors.newSingleThreadScheduledExecutor().scheduleAtFixedRate(new Runnable() {
                    @Override
                    public final void run() {
                        this.A00.A0B(enumC1904hq);
                    }
                }, 5L, Math.max(1000, c1907hv.A06), TimeUnit.MILLISECONDS);
            }
            boolean z3 = true;
            Set<AO> setA06 = null;
            if (this.A02.A00 < c1907hv.A05) {
                synchronized (this.A02.A04) {
                    setA06 = this.A02.A04.get(str);
                    if (setA06 == null) {
                        setA06 = this.A02.A06();
                        this.A02.A04.put(str, setA06);
                    }
                }
                synchronized (setA06) {
                    if (setA06.contains(ao)) {
                        z3 = false;
                    } else if (((z && c1907hv.A0M) || (!z && c1907hv.A0L)) && setA06.size() < c1907hv.A04) {
                        z2 = true;
                        z3 = false;
                    }
                }
            }
            if (!z3) {
                long j = -1;
                try {
                    try {
                        try {
                            if (!c1907hv.A0K) {
                                try {
                                    this.A02.A05 = SystemClock.elapsedRealtime();
                                    ao.reset();
                                    if (z2 && setA06 != null) {
                                        synchronized (setA06) {
                                            try {
                                                setA06.add(ao);
                                                this.A02.A00++;
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (!c1907hv.A0K) {
                                        this.A02.A05 = j;
                                    }
                                    throw th;
                                }
                            } else {
                                try {
                                    AS as2 = new AS(ao, c1907hv, str, z, z2, true);
                                    synchronized (this.A01) {
                                        try {
                                            this.A01.add(as2);
                                        } catch (Throwable th3) {
                                            th = th3;
                                            while (true) {
                                                throw th;
                                            }
                                        }
                                    }
                                } catch (IllegalStateException unused) {
                                    j = -1;
                                    A09(str, ao);
                                    if (!c1907hv.A0K) {
                                        this.A02.A05 = j;
                                    }
                                    if (!c1907hv.A0K) {
                                        A08(c1907hv, enumC1904hq, Boolean.valueOf(z), ao);
                                        return;
                                    }
                                    as = new AS(ao, c1907hv, str, z, false, false);
                                    synchronized (this.A01) {
                                        this.A01.add(as);
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    j = -1;
                                    if (!c1907hv.A0K) {
                                        this.A02.A05 = j;
                                    }
                                    throw th;
                                }
                            }
                            if (c1907hv.A0K) {
                                return;
                            }
                            this.A02.A05 = -1L;
                            return;
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (IllegalStateException unused2) {
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }
        }
        if (!c1907hv.A0K) {
            A08(c1907hv, enumC1904hq, Boolean.valueOf(z), ao);
            return;
        }
        as = new AS(ao, c1907hv, str, z, false, false);
        synchronized (this.A01) {
            this.A01.add(as);
        }
    }
}
