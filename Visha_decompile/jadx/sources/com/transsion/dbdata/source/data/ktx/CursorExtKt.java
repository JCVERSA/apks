package com.transsion.dbdata.source.data.ktx;

import android.database.Cursor;
import defpackage.de5;
import defpackage.vmb;
import defpackage.xq8;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\u001a$\u0010\u0002\u001a\u0004\u0018\u0001H\u0003\"\u0006\b\u0000\u0010\u0003\u0018\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0080\b¢\u0006\u0002\u0010\u0007\u001a\u001b\u0010\b\u001a\u0004\u0018\u00010\u0001*\u00020\u00042\u0006\u0010\t\u001a\u00020\u0001H\u0000¢\u0006\u0002\u0010\n\u001a\u001b\u0010\u000b\u001a\u0004\u0018\u00010\f*\u00020\u00042\u0006\u0010\t\u001a\u00020\u0001H\u0000¢\u0006\u0002\u0010\r\u001a\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u0006*\u00020\u00042\u0006\u0010\t\u001a\u00020\u0001H\u0000\u001a\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u0006*\u00020\u00042\u0006\u0010\t\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"CURSOR_INVALIDATE_COLUMN_INDEX", "", "getColumnValueSafe", "T", "Landroid/database/Cursor;", "columnName", "", "(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Object;", "getIntSafe", "columnIndex", "(Landroid/database/Cursor;I)Ljava/lang/Integer;", "getLongSafe", "", "(Landroid/database/Cursor;I)Ljava/lang/Long;", "getStringSafe", "getStringSafe2", "dbdata_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CursorExtKt {
    private static final int CURSOR_INVALIDATE_COLUMN_INDEX = -1;

    public static final <T> T getColumnValueSafe(Cursor cursor, String str) {
        Object objM279constructorimpl;
        Object objValueOf;
        y45.j(cursor, "<this>");
        y45.j(str, "columnName");
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1) {
            vmb.i("Cursor", "getColumnValueSafe(columnName:" + str + ") columnIndex is invalidate");
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            y45.p(4, "T");
            de5 de5VarB = xq8.b(Object.class);
            if (y45.e(de5VarB, xq8.b(Integer.TYPE))) {
                objValueOf = Integer.valueOf(cursor.getInt(columnIndex));
                y45.p(2, "T");
            } else if (y45.e(de5VarB, xq8.b(Long.TYPE))) {
                objValueOf = Long.valueOf(cursor.getLong(columnIndex));
                y45.p(2, "T");
            } else if (y45.e(de5VarB, xq8.b(String.class))) {
                objValueOf = cursor.getString(columnIndex);
                y45.p(2, "T");
            } else if (y45.e(de5VarB, xq8.b(Short.TYPE))) {
                objValueOf = Short.valueOf(cursor.getShort(columnIndex));
                y45.p(2, "T");
            } else if (y45.e(de5VarB, xq8.b(Float.TYPE))) {
                objValueOf = Float.valueOf(cursor.getFloat(columnIndex));
                y45.p(2, "T");
            } else if (y45.e(de5VarB, xq8.b(Double.TYPE))) {
                objValueOf = Double.valueOf(cursor.getDouble(columnIndex));
                y45.p(2, "T");
            } else {
                objValueOf = null;
            }
            objM279constructorimpl = Result.m279constructorimpl(objValueOf);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            vmb.d("Cursor", "getColumnValueSafe error:", thM282exceptionOrNullimpl);
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            return null;
        }
        return (T) objM279constructorimpl;
    }

    public static final Integer getIntSafe(Cursor cursor, int i) {
        y45.j(cursor, "<this>");
        try {
            return Integer.valueOf(cursor.getInt(i));
        } catch (Exception e) {
            vmb.j("Cursor", "getIntSafe error:", e);
            return null;
        }
    }

    public static final Long getLongSafe(Cursor cursor, int i) {
        y45.j(cursor, "<this>");
        try {
            return Long.valueOf(cursor.getLong(i));
        } catch (Exception e) {
            vmb.j("Cursor", "getLongSafe error:", e);
            return null;
        }
    }

    public static final String getStringSafe(Cursor cursor, int i) {
        y45.j(cursor, "<this>");
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            vmb.j("Cursor", "getStringSafe error:", e);
            return null;
        }
    }

    public static final String getStringSafe2(Cursor cursor, int i) {
        y45.j(cursor, "<this>");
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            vmb.j("Cursor", "getStringSafe error:", e);
            return null;
        }
    }
}
