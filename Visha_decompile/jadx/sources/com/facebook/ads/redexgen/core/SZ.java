package com.facebook.ads.redexgen.core;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.AsyncTask;
import android.os.Looper;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public final class SZ {
    public static byte[] A04;
    public static final String A05;
    public static final Lock A06;
    public static final Lock A07;
    public static final ReentrantReadWriteLock A08;
    public SQLiteOpenHelper A00;
    public final C1609cu A01;
    public final C1607cs A03 = new C1607cs(this);
    public final C1608ct A02 = new C1608ct(this);

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 17);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A04 = new byte[]{-82, -53, -82, 109, SocketData.CLAZZ_TYPE_STRING, 109, SocketData.CLAZZ_TYPE_CODE, 85, 118, -120, 120, -102, -64, -52, -55, -57, -102, 127, -87, -82, -88, -83, 127, 94, SocketData.CLAZZ_TYPE_FILE_BLOCK, -121, SocketData.CLAZZ_TYPE_STRING, -121, -110, 94, -93, -46, -47, -93, 87, -122, -119, 123, 124, -119, 87, 121, -112, 87, 85, -120, 122, -119, 85, SocketData.CLAZZ_TYPE_ERROR_CODE, -60, -75, -78, -65, -78, SocketData.CLAZZ_TYPE_ERROR_CODE, 110, 116, -82, -94, 94, 110, -101, -99, -55, -25, -12, -12, -11, -6, -90, -23, -25, -14, -14, -90, -19, -21, -6, -54, -25, -6, -25, -24, -25, -7, -21, -90, -20, -8, -11, -13, -90, -6, -18, -21, -90, -37, -49, -90, -6, -18, -8, -21, -25, -22, -89, -112, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -119, SocketData.CLAZZ_TYPE_SEND_PACKAGE, SocketData.CLAZZ_TYPE_END_SOCKET, -111, 93, -79, -84, -88, -94, -85, -80, 107, -64, -69, -81, -84, -65, -80, SocketData.CLAZZ_TYPE_STRING, -29, -32, -13, -32, -31, -32, -14, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -112, -95, -112, -103, -97, -98, SocketData.CLAZZ_TYPE_CODE, -121, SocketData.CLAZZ_TYPE_CONNECT_CHECK, 125, -122, SocketData.CLAZZ_TYPE_STRING};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 3 out of bounds for length 3
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public final synchronized void A0J() {
        for (int i = 0; i < A0M().length; i++) {
        }
        if (this.A00 != null) {
            this.A00.close();
            this.A00 = null;
        }
    }

    static {
        A07();
        StringBuilder sbAppend = new StringBuilder().append(A05(107, 14, 44)).append(C1607cs.A03.A01);
        String strA05 = A05(58, 2, 113);
        StringBuilder sbAppend2 = sbAppend.append(strA05);
        String strA06 = A05(142, 6, 7);
        StringBuilder sbAppend3 = sbAppend2.append(strA06);
        String strA07 = A05(60, 1, 31);
        StringBuilder sbAppend4 = sbAppend3.append(strA07).append(C1607cs.A02.A01).append(strA05);
        String strA08 = A05(136, 6, 26);
        A05 = sbAppend4.append(strA08).append(strA07).append(C1608ct.A04.A01).append(strA05).append(strA08).append(strA07).append(C1608ct.A05.A01).append(strA05).append(strA08).append(strA07).append(C1608ct.A0A.A01).append(strA05).append(strA08).append(strA07).append(C1608ct.A08.A01).append(strA05).append(strA08).append(strA07).append(C1608ct.A07.A01).append(strA05).append(strA08).append(strA07).append(C1608ct.A06.A01).append(strA05).append(strA08).append(strA07).append(C1608ct.A03.A01).append(strA05).append(strA08).append(strA07).append(C1608ct.A02.A01).append(A05(11, 6, 105)).append(strA08).append(A05(17, 6, 78)).append(strA06).append(A05(30, 4, 114)).append(strA08).append(strA07).append(C1608ct.A09.A01).append(A05(0, 3, 125)).append(strA06).append(strA07).append(C1607cs.A03.A01).append(A05(34, 10, 38)).append(strA08).append(strA07).append(C1608ct.A08.A01).append(A05(7, 4, 36)).toString();
        A08 = new ReentrantReadWriteLock();
        A06 = A08.readLock();
        A07 = A08.writeLock();
    }

    public SZ(C1609cu c1609cu) {
        this.A01 = c1609cu;
    }

    private synchronized SQLiteDatabase A00() {
        if (this.A00 == null) {
            this.A00 = new C1227Sa(this.A01, this);
        }
        return this.A00.getWritableDatabase();
    }

    private synchronized SQLiteDatabase A01() {
        SQLiteException e = null;
        for (int i = 0; i < 10; i++) {
            try {
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException unused) {
                }
            }
        }
        this.A01.A08().AAy(A05(128, 8, 110), AbstractC1248Sv.A0v, new C1249Sw(e));
        throw e;
        return A00();
    }

    public final int A08(int i) {
        A07.lock();
        try {
            return A0E().delete(A05(136, 6, 26), C1608ct.A02.A01 + A05(3, 4, 60), new String[]{String.valueOf(i - 1)});
        } finally {
            A07.unlock();
        }
    }

    public final Cursor A09() {
        A06.lock();
        try {
            return this.A02.A0B();
        } finally {
            A06.unlock();
        }
    }

    public final Cursor A0A() {
        A06.lock();
        try {
            return this.A02.A0C();
        } finally {
            A06.unlock();
        }
    }

    public final Cursor A0B() {
        A06.lock();
        try {
            return this.A03.A0B();
        } finally {
            A06.unlock();
        }
    }

    public final Cursor A0C(int i) {
        A06.lock();
        try {
            return A0E().rawQuery(A05 + A05(23, 7, 45) + String.valueOf(i), null);
        } finally {
            A06.unlock();
        }
    }

    public final Cursor A0D(String str) {
        A06.lock();
        try {
            return this.A02.A0D(str);
        } finally {
            A06.unlock();
        }
    }

    public final SQLiteDatabase A0E() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return A01();
        }
        throw new IllegalStateException(A05(64, 43, 117));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Sc != com.facebook.ads.internal.database.AdDatabaseQuery<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Tg != com.facebook.ads.internal.eventstorage.AdEventStorageCallback<T> */
    public final <T> AsyncTask A0F(AbstractC1229Sc<T> abstractC1229Sc, AbstractC1259Tg<T> abstractC1259Tg) {
        return XR.A00(XU.A07, new SY(this.A01, abstractC1229Sc, abstractC1259Tg), new Void[0]);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Tg != com.facebook.ads.internal.eventstorage.AdEventStorageCallback<java.lang.String> */
    public final AsyncTask A0G(final String str, final int i, final String str2, final double d, final double d2, final String str3, final Map<String, String> data, AbstractC1259Tg<String> abstractC1259Tg) {
        return A0F(new AbstractC1606cr<String>() {
            public static byte[] A08;
            public static String[] A09 = {"ZKW0rplATEIsE5gjt8qXTQnY", "r6HJdeSoORQdJfGxA0AnZWlkU33wQIlK", "lLZOtDHAe6uwMhK1fYaqg", "CFnqFcdcZfU1FaRsph1ThokBMpi4uqZk", "TONJvFd", "LRRDDC4", "oqOd7Km", ExifInterface.LONGITUDE_EAST};

            public static String A01(int i2, int i3, int i4) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i2, i2 + i3);
                for (int i5 = 0; i5 < bArrCopyOfRange.length; i5++) {
                    bArrCopyOfRange[i5] = (byte) ((bArrCopyOfRange[i5] - i4) - 122);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A02() {
                byte[] bArr = {56, 53, 72, 53, 54, 53, 71, 57};
                if (A09[2].length() == 32) {
                    throw new RuntimeException();
                }
                A09[2] = "0lpDBp9tBU8jLddyd5eWZp";
                A08 = bArr;
            }

            static {
                A02();
            }

            @Override
            public final String A03() {
                String eventId = A01(0, 8, 90);
                this.A03.A01.A08().A9v(str2);
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                SZ.A07.lock();
                SQLiteDatabase sQLiteDatabaseA0E = null;
                try {
                    try {
                        sQLiteDatabaseA0E = this.A03.A0E();
                        sQLiteDatabaseA0E.beginTransaction();
                        String strA0E = this.A03.A02.A0E(this.A03.A03.A0C(str), i, str2, d, d2, str3, data);
                        sQLiteDatabaseA0E.setTransactionSuccessful();
                        if (sQLiteDatabaseA0E != null && sQLiteDatabaseA0E.isOpen()) {
                            try {
                                if (sQLiteDatabaseA0E.inTransaction()) {
                                    sQLiteDatabaseA0E.endTransaction();
                                }
                            } catch (Exception e) {
                                this.A03.A01.A08().AAy(eventId, AbstractC1248Sv.A0z, new C1249Sw(e));
                            }
                        }
                        SZ.A07.unlock();
                        return strA0E;
                    } catch (Exception e2) {
                        A01(EnumC1228Sb.A05);
                        this.A03.A01.A08().AAy(eventId, AbstractC1248Sv.A0y, new C1249Sw(e2));
                        if (sQLiteDatabaseA0E != null && sQLiteDatabaseA0E.isOpen()) {
                            try {
                                if (sQLiteDatabaseA0E.inTransaction()) {
                                    sQLiteDatabaseA0E.endTransaction();
                                }
                            } catch (Exception e3) {
                                this.A03.A01.A08().AAy(eventId, AbstractC1248Sv.A0z, new C1249Sw(e3));
                            }
                        }
                        SZ.A07.unlock();
                        return null;
                    }
                } catch (Throwable th) {
                    if (sQLiteDatabaseA0E != null) {
                        boolean zIsOpen = sQLiteDatabaseA0E.isOpen();
                        if (A09[5].length() != 7) {
                            throw new RuntimeException();
                        }
                        A09[2] = "rWG930h";
                        if (zIsOpen) {
                            try {
                                if (sQLiteDatabaseA0E.inTransaction()) {
                                    sQLiteDatabaseA0E.endTransaction();
                                }
                            } catch (Exception e4) {
                                this.A03.A01.A08().AAy(eventId, AbstractC1248Sv.A0z, new C1249Sw(e4));
                            }
                        }
                    }
                    SZ.A07.unlock();
                    throw th;
                }
            }
        }, abstractC1259Tg);
    }

    public final void A0H() {
        A07.lock();
        try {
            this.A02.A09();
            this.A03.A09();
        } finally {
            A07.unlock();
        }
    }

    public final void A0I() {
        A07.lock();
        try {
            this.A03.A0D(this.A01);
        } finally {
            A07.unlock();
        }
    }

    public final boolean A0K(String str) {
        A07.lock();
        try {
            return this.A02.A0F(str);
        } finally {
            A07.unlock();
        }
    }

    public final boolean A0L(String str) {
        boolean z;
        A07.lock();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(A05(121, 7, 90)).append(A05(136, 6, 26)).append(A05(44, 5, 36)).append(C1608ct.A02.A01).append(A05(61, 1, 32)).append(C1608ct.A02.A01).append(A05(56, 2, 50)).append(A05(49, 7, 92)).append(C1608ct.A04.A01).append(A05(62, 2, 77));
            A0E().execSQL(sb.toString(), new String[]{str});
            z = true;
        } catch (SQLiteException unused) {
            z = false;
        }
        A07.unlock();
        return z;
    }

    public final AbstractC1230Sd[] A0M() {
        return new AbstractC1230Sd[]{this.A03, this.A02};
    }
}
