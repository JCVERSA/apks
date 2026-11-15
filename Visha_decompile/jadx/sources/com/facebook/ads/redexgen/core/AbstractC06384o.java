package com.facebook.ads.redexgen.core;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.hunantv.media.drm.IDrmSession;
import java.util.Arrays;
import okio.Utf8;

public abstract class AbstractC06384o {
    public static byte[] A00;
    public static String[] A01 = {"ftBSrscYCZrU1XGsUffOBJlxDQfDqofj", "6A6pNCV2uhgoYcLypb", "8GOV2FUSZps1pTbJ4je5MwftASUnZkM1", "4wRLkwVxN17llLy", "8LQiKKC5rqzUsPzG", "bVt1RMPFhi5Vk9jMxK8mGuGgg99xJtg4", "bUya0H86JSXRIIoahVHYTIdtcqgWtSBf", "i4ePvK4hrBrPNKxpSWALXVVM3"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 12 out of bounds for length 12
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static int A00(SQLiteDatabase sQLiteDatabase, int i, String str) throws C06354l {
        try {
            if (!AbstractC06244a.A19(sQLiteDatabase, A01(159, 17, 73))) {
                return -1;
            }
            Cursor cursorQuery = sQLiteDatabase.query(A01(159, 17, 73), new String[]{A01(244, 7, 93)}, A01(183, 32, 22), A05(i, str), null, null, null);
            try {
                if (cursorQuery.getCount() == 0) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return -1;
                }
                cursorQuery.moveToNext();
                int i2 = cursorQuery.getInt(0);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return i2;
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
            throw new C06354l(e);
        } catch (SQLException e) {
            throw new C06354l(e);
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 17);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{53, 36, 51, 55, 34, 51, 86, 34, 55, 52, 58, 51, 86, Utf8.REPLACEMENT_BYTE, 48, 86, 56, 57, 34, 86, 51, 46, Utf8.REPLACEMENT_BYTE, 37, 34, 37, 86, 51, 14, 25, 38, 26, 23, 15, 19, 4, 32, 19, 4, 5, 31, 25, 24, 5, 86, 94, 16, 19, 23, 2, 3, 4, 19, 86, Utf8.REPLACEMENT_BYTE, 56, 34, 51, 49, 51, 36, 86, 56, 57, 34, 86, 56, 35, 58, 58, 90, 31, 24, 5, 2, 23, 24, 21, 19, 41, 3, 31, 18, 86, 34, 51, 46, 34, 86, 56, 57, 34, 86, 56, 35, 58, 58, 90, 0, 19, 4, 5, 31, 25, 24, 86, Utf8.REPLACEMENT_BYTE, 56, 34, 51, 49, 51, 36, 86, 56, 57, 34, 86, 56, 35, 58, 58, 90, 38, 36, Utf8.REPLACEMENT_BYTE, 59, 55, 36, 47, 86, 61, 51, 47, 86, 94, 16, 19, 23, 2, 3, 4, 19, 90, 86, 31, 24, 5, 2, 23, 24, 21, 19, 41, 3, 31, 18, 95, 95, 29, 32, 55, 8, 52, 57, 33, 61, 42, 14, 61, 42, 43, 49, 55, 54, 43, 103, 100, 96, 117, 116, 115, 100, 97, 98, 102, 115, 114, 117, 98, 39, 58, 39, 56, 39, 70, 73, 67, 39, 110, 105, 116, 115, 102, 105, 100, 98, 88, 114, 110, 99, 39, 58, 39, 56, 64, 72, 72, 64, 9, 66, 95, 72, 9, 67, 70, 83, 70, 69, 70, 84, 66, 9, 14, 19, 20, 1, 14, 3, 5, Utf8.REPLACEMENT_BYTE, 21, 9, 4, 58, 41, 62, Utf8.REPLACEMENT_BYTE, 37, 35, 34};
        String[] strArr = A01;
        if (strArr[6].charAt(14) == strArr[5].charAt(14)) {
            throw new RuntimeException();
        }
        A01[7] = "SNjSmBwt36dpbjCWXjm4KdaDp";
    }

    static {
        A02();
        C2T.A03(A01(IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR, 17, 54));
    }

    public static void A03(SQLiteDatabase sQLiteDatabase, int i, String str) throws C06354l {
        String strA01 = A01(159, 17, 73);
        try {
            if (!AbstractC06244a.A19(sQLiteDatabase, strA01)) {
                return;
            }
            sQLiteDatabase.delete(strA01, A01(183, 32, 22), A05(i, str));
        } catch (SQLException e) {
            throw new C06354l(e);
        }
    }

    public static void A04(SQLiteDatabase sQLiteDatabase, int i, String str, int i2) throws C06354l {
        try {
            sQLiteDatabase.execSQL(A01(0, 159, 103));
            ContentValues contentValues = new ContentValues();
            contentValues.put(A01(176, 7, 16), Integer.valueOf(i));
            contentValues.put(A01(232, 12, 113), str);
            contentValues.put(A01(244, 7, 93), Integer.valueOf(i2));
            sQLiteDatabase.replaceOrThrow(A01(159, 17, 73), null, contentValues);
        } catch (SQLException e) {
            throw new C06354l(e);
        }
    }

    public static String[] A05(int i, String str) {
        return new String[]{Integer.toString(i), str};
    }
}
