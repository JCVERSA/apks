package defpackage;

import android.database.Cursor;
import kotlin.Result;
import kotlin.c;

public abstract class sm1 {
    public static final int a(Cursor cursor, int i, int i2) {
        Object objM279constructorimpl;
        y45.j(cursor, "<this>");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(Integer.valueOf(cursor.getInt(i)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Integer numValueOf = Integer.valueOf(i2);
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = numValueOf;
        }
        return ((Number) objM279constructorimpl).intValue();
    }

    public static final long b(Cursor cursor, int i, long j) {
        Object objM279constructorimpl;
        y45.j(cursor, "<this>");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(Long.valueOf(cursor.getLong(i)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Long lValueOf = Long.valueOf(j);
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = lValueOf;
        }
        return ((Number) objM279constructorimpl).longValue();
    }

    public static final String c(Cursor cursor, int i, String str) {
        Object objM279constructorimpl;
        y45.j(cursor, "<this>");
        y45.j(str, "defaultValue");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(cursor.getString(i));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Object obj = str;
        if (!Result.m285isFailureimpl(objM279constructorimpl)) {
            obj = objM279constructorimpl;
        }
        return (String) obj;
    }
}
