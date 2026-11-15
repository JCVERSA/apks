package com.facebook.ads.redexgen.core;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.mozilla.classfile.ByteCode;

@MetaExoPlayerCustomization(type = {"NON_FINAL"}, value = "D54147219: For usage in Hero Simple Cache")
public final class C1068Lt {
    public static byte[] A02;
    public static final String[] A03;
    public String A00;
    public final InterfaceC06364m A01;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{-91, -123, -53, -66, -54, -62, 125, -79, -94, -75, -79, 125, -83, -81, -90, -86, -98, -81, -74, 125, -88, -94, -74, 125, -85, -84, -79, 125, -85, -78, -87, -87, -119, -55, -62, -53, -60, -47, -59, 125, -90, -85, -79, -94, -92, -94, -81, 125, -85, -84, -79, 125, -85, -78, -87, -87, -119, -55, -66, -48, -47, -68, -47, -52, -46, -64, -59, -68, -47, -58, -54, -62, -48, -47, -66, -54, -51, 125, -90, -85, -79, -94, -92, -94, -81, 125, -85, -84, -79, 125, -85, -78, -87, -87, -122, -98, -83, -96, -100, -81, -96, 123, -81, -100, -99, -89, -96, 123, -25, -11, -14, -13, -61, -9, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -27, -17, -24, -61, -20, -23, -61, -24, -5, -20, -10, -9, -10, -61, 127, -78, -87, SocketData.CLAZZ_TYPE_FILE_BLOCK, -90, -101, -77, -97, -84, 125, -101, -99, -94, -97, SocketData.CLAZZ_TYPE_END_SOCKET, -93, -90, -97, -121, -97, -82, -101, -98, -101, -82, -101, 13, 2, 20, 21, 0, 21, 16, 22, 4, 9, 0, 21, 10, 14, 6, 20, 21, 2, 14, 17, -24, -31, -22, -29, -16, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -89, -102, -90, -98, -96, -109, -97, -105, 82, 111, 82, 113};
    }

    static {
        A03();
        A03 = new String[]{A01(181, 4, 13), A01(ByteCode.DRETURN, 6, 80), A01(155, 20, 117)};
    }

    public C1068Lt(InterfaceC06364m interfaceC06364m) {
        this.A01 = interfaceC06364m;
    }

    private Cursor A00() {
        C3M.A01(this.A00);
        return this.A01.getReadableDatabase().query(this.A00, A03, null, null, null, null, null);
    }

    public static String A02(String str) {
        return A01(129, 26, 14) + str;
    }

    public static void A04(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL(A01(108, 21, 119) + str);
    }

    public final Map<String, C1067Ls> A05() throws C06354l {
        try {
            Cursor cursorA00 = A00();
            try {
                HashMap map = new HashMap(cursorA00.getCount());
                while (cursorA00.moveToNext()) {
                    map.put((String) C3M.A01(cursorA00.getString(0)), new C1067Ls(cursorA00.getLong(1), cursorA00.getLong(2)));
                }
                if (cursorA00 != null) {
                    cursorA00.close();
                }
                return map;
            } catch (Throwable th) {
                if (cursorA00 != null) {
                    try {
                        cursorA00.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (SQLException e) {
            throw new C06354l(e);
        }
    }

    public final void A06(long j) throws C06354l {
        try {
            String hexString = Long.toHexString(j);
            String hexUid = A02(hexString);
            this.A00 = hexUid;
            if (AbstractC06384o.A00(this.A01.getReadableDatabase(), 2, hexString) != 1) {
                SQLiteDatabase writableDatabase = this.A01.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    AbstractC06384o.A04(writableDatabase, 2, hexString, 1);
                    String hexUid2 = this.A00;
                    A04(writableDatabase, hexUid2);
                    StringBuilder sb = new StringBuilder();
                    String hexUid3 = A01(95, 13, 47);
                    StringBuilder sbAppend = sb.append(hexUid3);
                    String hexUid4 = this.A00;
                    StringBuilder sbAppend2 = sbAppend.append(hexUid4);
                    String hexUid5 = A01(0, 1, 89);
                    StringBuilder sbAppend3 = sbAppend2.append(hexUid5);
                    String hexUid6 = A01(1, 94, 49);
                    writableDatabase.execSQL(sbAppend3.append(hexUid6).toString());
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            }
        } catch (SQLException e) {
            throw new C06354l(e);
        }
    }

    public final void A07(String str) throws C06354l {
        C3M.A01(this.A00);
        try {
            this.A01.getWritableDatabase().delete(this.A00, A01(185, 8, 6), new String[]{str});
        } catch (SQLException e) {
            throw new C06354l(e);
        }
    }

    public final void A08(String str, long j, long j2) throws C06354l {
        C3M.A01(this.A00);
        try {
            SQLiteDatabase writableDatabase = this.A01.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put(A01(181, 4, 13), str);
            contentValues.put(A01(ByteCode.DRETURN, 6, 80), Long.valueOf(j));
            contentValues.put(A01(155, 20, 117), Long.valueOf(j2));
            writableDatabase.replaceOrThrow(this.A00, null, contentValues);
        } catch (SQLException e) {
            throw new C06354l(e);
        }
    }

    public final void A09(Set<String> set) throws C06354l {
        C3M.A01(this.A00);
        try {
            SQLiteDatabase writableDatabase = this.A01.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                Iterator<String> it = set.iterator();
                while (it.hasNext()) {
                    writableDatabase.delete(this.A00, A01(185, 8, 6), new String[]{it.next()});
                }
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e) {
            throw new C06354l(e);
        }
    }
}
