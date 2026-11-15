package b4;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteProgram;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteStatement;
import java.util.Arrays;
import java.util.Locale;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import y3.e;

public abstract class c implements e {

    public static final a f15508d = new a(null);

    private final SQLiteDatabase f15509a;

    private final String f15510b;

    private boolean f15511c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean b(String str) {
            String string = StringsKt.n1(str).toString();
            if (string.length() < 3) {
                return false;
            }
            String strSubstring = string.substring(0, 3);
            Intrinsics.g(strSubstring, "substring(...)");
            String upperCase = strSubstring.toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
            int iHashCode = upperCase.hashCode();
            if (iHashCode != 79487) {
                if (iHashCode != 81978) {
                    if (iHashCode != 85954 || !upperCase.equals("WIT")) {
                        return false;
                    }
                } else if (!upperCase.equals("SEL")) {
                    return false;
                }
            } else if (!upperCase.equals("PRA")) {
                return false;
            }
            return true;
        }

        public final c a(SQLiteDatabase db2, String sql) {
            Intrinsics.h(db2, "db");
            Intrinsics.h(sql, "sql");
            return b(sql) ? new C0133c(db2, sql) : new b(db2, sql);
        }

        private a() {
        }
    }

    static final class C0133c extends c {

        public static final a f15513k = new a(null);

        private int[] f15514e;

        private long[] f15515f;

        private double[] f15516g;

        private String[] f15517h;

        private byte[][] f15518i;

        private Cursor f15519j;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0133c(SQLiteDatabase db2, String sql) {
            super(db2, sql, null);
            Intrinsics.h(db2, "db");
            Intrinsics.h(sql, "sql");
            this.f15514e = new int[0];
            this.f15515f = new long[0];
            this.f15516g = new double[0];
            this.f15517h = new String[0];
            this.f15518i = new byte[0][];
        }

        private final void m(SQLiteProgram sQLiteProgram) {
            int length = this.f15514e.length;
            for (int i10 = 1; i10 < length; i10++) {
                int i11 = this.f15514e[i10];
                if (i11 == 1) {
                    sQLiteProgram.bindLong(i10, this.f15515f[i10]);
                } else if (i11 == 2) {
                    sQLiteProgram.bindDouble(i10, this.f15516g[i10]);
                } else if (i11 == 3) {
                    sQLiteProgram.bindString(i10, this.f15517h[i10]);
                } else if (i11 == 4) {
                    sQLiteProgram.bindBlob(i10, this.f15518i[i10]);
                } else if (i11 == 5) {
                    sQLiteProgram.bindNull(i10);
                }
            }
        }

        private final void n(int i10, int i11) {
            int i12 = i11 + 1;
            int[] iArr = this.f15514e;
            if (iArr.length < i12) {
                int[] iArrCopyOf = Arrays.copyOf(iArr, i12);
                Intrinsics.g(iArrCopyOf, "copyOf(...)");
                this.f15514e = iArrCopyOf;
            }
            if (i10 == 1) {
                long[] jArr = this.f15515f;
                if (jArr.length < i12) {
                    long[] jArrCopyOf = Arrays.copyOf(jArr, i12);
                    Intrinsics.g(jArrCopyOf, "copyOf(...)");
                    this.f15515f = jArrCopyOf;
                    return;
                }
                return;
            }
            if (i10 == 2) {
                double[] dArr = this.f15516g;
                if (dArr.length < i12) {
                    double[] dArrCopyOf = Arrays.copyOf(dArr, i12);
                    Intrinsics.g(dArrCopyOf, "copyOf(...)");
                    this.f15516g = dArrCopyOf;
                    return;
                }
                return;
            }
            if (i10 == 3) {
                String[] strArr = this.f15517h;
                if (strArr.length < i12) {
                    Object[] objArrCopyOf = Arrays.copyOf(strArr, i12);
                    Intrinsics.g(objArrCopyOf, "copyOf(...)");
                    this.f15517h = (String[]) objArrCopyOf;
                    return;
                }
                return;
            }
            if (i10 != 4) {
                return;
            }
            byte[][] bArr = this.f15518i;
            if (bArr.length < i12) {
                Object[] objArrCopyOf2 = Arrays.copyOf(bArr, i12);
                Intrinsics.g(objArrCopyOf2, "copyOf(...)");
                this.f15518i = (byte[][]) objArrCopyOf2;
            }
        }

        private final void o() {
            if (this.f15519j == null) {
                this.f15519j = d().rawQueryWithFactory(new SQLiteDatabase.CursorFactory() {
                    @Override
                    public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                        return c.C0133c.p(this.f15520a, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
                    }
                }, h(), new String[0], null);
            }
        }

        public static final Cursor p(C0133c c0133c, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            Intrinsics.e(sQLiteQuery);
            c0133c.m(sQLiteQuery);
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }

        private final void q(Cursor cursor, int i10) {
            if (i10 < 0 || i10 >= cursor.getColumnCount()) {
                y3.a.b(25, "column index out of range");
                throw new KotlinNothingValueException();
            }
        }

        private final Cursor r() {
            Cursor cursor = this.f15519j;
            if (cursor != null) {
                return cursor;
            }
            y3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override
        public boolean C0() {
            k();
            o();
            Cursor cursor = this.f15519j;
            if (cursor != null) {
                return cursor.moveToNext();
            }
            throw new IllegalStateException("Required value was null.");
        }

        @Override
        public void a(int i10, double d10) {
            k();
            n(2, i10);
            this.f15514e[i10] = 2;
            this.f15516g[i10] = d10;
        }

        @Override
        public void c(int i10, long j10) {
            k();
            n(1, i10);
            this.f15514e[i10] = 1;
            this.f15515f[i10] = j10;
        }

        @Override
        public void close() {
            if (!isClosed()) {
                reset();
            }
            j(true);
        }

        @Override
        public void g(int i10) {
            k();
            n(5, i10);
            this.f15514e[i10] = 5;
        }

        @Override
        public int getColumnCount() {
            k();
            o();
            Cursor cursor = this.f15519j;
            if (cursor != null) {
                return cursor.getColumnCount();
            }
            return 0;
        }

        @Override
        public String getColumnName(int i10) {
            k();
            o();
            Cursor cursor = this.f15519j;
            if (cursor == null) {
                throw new IllegalStateException("Required value was null.");
            }
            q(cursor, i10);
            String columnName = cursor.getColumnName(i10);
            Intrinsics.g(columnName, "getColumnName(...)");
            return columnName;
        }

        @Override
        public double getDouble(int i10) {
            k();
            Cursor cursorR = r();
            q(cursorR, i10);
            return cursorR.getDouble(i10);
        }

        @Override
        public long getLong(int i10) {
            k();
            Cursor cursorR = r();
            q(cursorR, i10);
            return cursorR.getLong(i10);
        }

        @Override
        public void i(int i10, String value) {
            Intrinsics.h(value, "value");
            k();
            n(3, i10);
            this.f15514e[i10] = 3;
            this.f15517h[i10] = value;
        }

        @Override
        public boolean isNull(int i10) {
            k();
            Cursor cursorR = r();
            q(cursorR, i10);
            return cursorR.isNull(i10);
        }

        @Override
        public String q0(int i10) {
            k();
            Cursor cursorR = r();
            q(cursorR, i10);
            String string = cursorR.getString(i10);
            Intrinsics.g(string, "getString(...)");
            return string;
        }

        @Override
        public void reset() {
            k();
            Cursor cursor = this.f15519j;
            if (cursor != null) {
                cursor.close();
            }
            this.f15519j = null;
        }
    }

    public c(SQLiteDatabase sQLiteDatabase, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(sQLiteDatabase, str);
    }

    protected final SQLiteDatabase d() {
        return this.f15509a;
    }

    @Override
    public boolean getBoolean(int i10) {
        return y3.d.a(this, i10);
    }

    protected final String h() {
        return this.f15510b;
    }

    protected final boolean isClosed() {
        return this.f15511c;
    }

    protected final void j(boolean z10) {
        this.f15511c = z10;
    }

    protected final void k() {
        if (this.f15511c) {
            y3.a.b(21, "statement is closed");
            throw new KotlinNothingValueException();
        }
    }

    private c(SQLiteDatabase sQLiteDatabase, String str) {
        this.f15509a = sQLiteDatabase;
        this.f15510b = str;
    }

    private static final class b extends c {

        private final SQLiteStatement f15512e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(SQLiteDatabase db2, String sql) {
            super(db2, sql, null);
            Intrinsics.h(db2, "db");
            Intrinsics.h(sql, "sql");
            SQLiteStatement sQLiteStatementCompileStatement = db2.compileStatement(sql);
            Intrinsics.g(sQLiteStatementCompileStatement, "compileStatement(...)");
            this.f15512e = sQLiteStatementCompileStatement;
        }

        @Override
        public boolean C0() {
            k();
            this.f15512e.execute();
            return false;
        }

        @Override
        public void a(int i10, double d10) {
            k();
            this.f15512e.bindDouble(i10, d10);
        }

        @Override
        public void c(int i10, long j10) {
            k();
            this.f15512e.bindLong(i10, j10);
        }

        @Override
        public void close() {
            this.f15512e.close();
            j(true);
        }

        @Override
        public void g(int i10) {
            k();
            this.f15512e.bindNull(i10);
        }

        @Override
        public int getColumnCount() {
            k();
            return 0;
        }

        @Override
        public String getColumnName(int i10) {
            k();
            y3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override
        public double getDouble(int i10) {
            k();
            y3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override
        public long getLong(int i10) {
            k();
            y3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override
        public void i(int i10, String value) {
            Intrinsics.h(value, "value");
            k();
            this.f15512e.bindString(i10, value);
        }

        @Override
        public boolean isNull(int i10) {
            k();
            y3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override
        public String q0(int i10) {
            k();
            y3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override
        public void reset() {
        }
    }
}
