package androidx.room.driver;

import android.database.Cursor;
import java.io.IOException;
import java.util.Arrays;
import java.util.Locale;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import y3.e;
import z3.f;
import z3.g;
import z3.h;

public abstract class d implements e {

    public static final a f14328d = new a(null);

    private final z3.d f14329a;

    private final String f14330b;

    private boolean f14331c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int c(String str) {
            int i10;
            int length = str.length() - 2;
            if (length < 0) {
                return -1;
            }
            int iN0 = 0;
            while (iN0 < length) {
                char cCharAt = str.charAt(iN0);
                if (Intrinsics.j(cCharAt, 32) > 0) {
                    if (cCharAt == '-') {
                        if (str.charAt(iN0 + 1) != '-') {
                            return iN0;
                        }
                        iN0 = StringsKt.n0(str, '\n', iN0 + 2, false, 4, null);
                        if (iN0 < 0) {
                            return -1;
                        }
                    } else {
                        if (cCharAt != '/') {
                            return iN0;
                        }
                        int iN1 = iN0 + 1;
                        if (str.charAt(iN1) != '*') {
                            return iN0;
                        }
                        do {
                            iN1 = StringsKt.n0(str, '*', iN1 + 1, false, 4, null);
                            if (iN1 >= 0) {
                                i10 = iN1 + 1;
                                if (i10 >= length) {
                                    break;
                                }
                            } else {
                                return -1;
                            }
                        } while (str.charAt(i10) != '/');
                        iN0 = iN1 + 2;
                    }
                }
                iN0++;
            }
            return -1;
        }

        private final boolean d(String str) {
            int iHashCode = str.hashCode();
            return iHashCode == 79487 ? str.equals("PRA") : !(iHashCode == 81978 ? !str.equals("SEL") : !(iHashCode == 85954 && str.equals("WIT")));
        }

        public final d a(z3.d db2, String sql) {
            Intrinsics.h(db2, "db");
            Intrinsics.h(sql, "sql");
            String upperCase = StringsKt.n1(sql).toString().toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
            String strB = b(upperCase);
            if (strB == null) {
                return new c(db2, sql);
            }
            return d(strB) ? new b(db2, sql) : new c(db2, sql);
        }

        public final String b(String sql) {
            Intrinsics.h(sql, "sql");
            int iC = c(sql);
            if (iC < 0 || iC > sql.length()) {
                return null;
            }
            String strSubstring = sql.substring(iC, Math.min(iC + 3, sql.length()));
            Intrinsics.g(strSubstring, "substring(...)");
            return strSubstring;
        }

        private a() {
        }
    }

    private static final class b extends d {

        public static final a f14332k = new a(null);

        private int[] f14333e;

        private long[] f14334f;

        private double[] f14335g;

        private String[] f14336h;

        private byte[][] f14337i;

        private Cursor f14338j;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public static final class C0110b implements g {
            C0110b() {
            }

            @Override
            public void b(f statement) {
                Intrinsics.h(statement, "statement");
                int length = b.this.f14333e.length;
                for (int i10 = 1; i10 < length; i10++) {
                    int i11 = b.this.f14333e[i10];
                    if (i11 == 1) {
                        statement.c(i10, b.this.f14334f[i10]);
                    } else if (i11 == 2) {
                        statement.a(i10, b.this.f14335g[i10]);
                    } else if (i11 == 3) {
                        String str = b.this.f14336h[i10];
                        Intrinsics.e(str);
                        statement.V(i10, str);
                    } else if (i11 == 4) {
                        byte[] bArr = b.this.f14337i[i10];
                        Intrinsics.e(bArr);
                        statement.k0(i10, bArr);
                    } else if (i11 == 5) {
                        statement.g(i10);
                    }
                }
            }

            @Override
            public String d() {
                return b.this.h();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(z3.d db2, String sql) {
            super(db2, sql, null);
            Intrinsics.h(db2, "db");
            Intrinsics.h(sql, "sql");
            this.f14333e = new int[0];
            this.f14334f = new long[0];
            this.f14335g = new double[0];
            this.f14336h = new String[0];
            this.f14337i = new byte[0][];
        }

        private final void r(int i10, int i11) {
            int i12 = i11 + 1;
            int[] iArr = this.f14333e;
            if (iArr.length < i12) {
                int[] iArrCopyOf = Arrays.copyOf(iArr, i12);
                Intrinsics.g(iArrCopyOf, "copyOf(...)");
                this.f14333e = iArrCopyOf;
            }
            if (i10 == 1) {
                long[] jArr = this.f14334f;
                if (jArr.length < i12) {
                    long[] jArrCopyOf = Arrays.copyOf(jArr, i12);
                    Intrinsics.g(jArrCopyOf, "copyOf(...)");
                    this.f14334f = jArrCopyOf;
                    return;
                }
                return;
            }
            if (i10 == 2) {
                double[] dArr = this.f14335g;
                if (dArr.length < i12) {
                    double[] dArrCopyOf = Arrays.copyOf(dArr, i12);
                    Intrinsics.g(dArrCopyOf, "copyOf(...)");
                    this.f14335g = dArrCopyOf;
                    return;
                }
                return;
            }
            if (i10 == 3) {
                String[] strArr = this.f14336h;
                if (strArr.length < i12) {
                    Object[] objArrCopyOf = Arrays.copyOf(strArr, i12);
                    Intrinsics.g(objArrCopyOf, "copyOf(...)");
                    this.f14336h = (String[]) objArrCopyOf;
                    return;
                }
                return;
            }
            if (i10 != 4) {
                return;
            }
            byte[][] bArr = this.f14337i;
            if (bArr.length < i12) {
                Object[] objArrCopyOf2 = Arrays.copyOf(bArr, i12);
                Intrinsics.g(objArrCopyOf2, "copyOf(...)");
                this.f14337i = (byte[][]) objArrCopyOf2;
            }
        }

        private final void s() {
            if (this.f14338j == null) {
                this.f14338j = d().b0(new C0110b());
            }
        }

        private final void t(Cursor cursor, int i10) {
            if (i10 < 0 || i10 >= cursor.getColumnCount()) {
                y3.a.b(25, "column index out of range");
                throw new KotlinNothingValueException();
            }
        }

        private final Cursor u() {
            Cursor cursor = this.f14338j;
            if (cursor != null) {
                return cursor;
            }
            y3.a.b(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override
        public boolean C0() {
            k();
            s();
            Cursor cursor = this.f14338j;
            if (cursor != null) {
                return cursor.moveToNext();
            }
            throw new IllegalStateException("Required value was null.");
        }

        @Override
        public void a(int i10, double d10) {
            k();
            r(2, i10);
            this.f14333e[i10] = 2;
            this.f14335g[i10] = d10;
        }

        @Override
        public void c(int i10, long j10) {
            k();
            r(1, i10);
            this.f14333e[i10] = 1;
            this.f14334f[i10] = j10;
        }

        @Override
        public void close() {
            if (!isClosed()) {
                q();
                reset();
            }
            j(true);
        }

        @Override
        public void g(int i10) {
            k();
            r(5, i10);
            this.f14333e[i10] = 5;
        }

        @Override
        public int getColumnCount() {
            k();
            s();
            Cursor cursor = this.f14338j;
            if (cursor != null) {
                return cursor.getColumnCount();
            }
            return 0;
        }

        @Override
        public String getColumnName(int i10) {
            k();
            s();
            Cursor cursor = this.f14338j;
            if (cursor == null) {
                throw new IllegalStateException("Required value was null.");
            }
            t(cursor, i10);
            String columnName = cursor.getColumnName(i10);
            Intrinsics.g(columnName, "getColumnName(...)");
            return columnName;
        }

        @Override
        public double getDouble(int i10) {
            k();
            Cursor cursorU = u();
            t(cursorU, i10);
            return cursorU.getDouble(i10);
        }

        @Override
        public long getLong(int i10) {
            k();
            Cursor cursorU = u();
            t(cursorU, i10);
            return cursorU.getLong(i10);
        }

        @Override
        public void i(int i10, String value) {
            Intrinsics.h(value, "value");
            k();
            r(3, i10);
            this.f14333e[i10] = 3;
            this.f14336h[i10] = value;
        }

        @Override
        public boolean isNull(int i10) {
            k();
            Cursor cursorU = u();
            t(cursorU, i10);
            return cursorU.isNull(i10);
        }

        public void q() {
            k();
            this.f14333e = new int[0];
            this.f14334f = new long[0];
            this.f14335g = new double[0];
            this.f14336h = new String[0];
            this.f14337i = new byte[0][];
        }

        @Override
        public String q0(int i10) {
            k();
            Cursor cursorU = u();
            t(cursorU, i10);
            String string = cursorU.getString(i10);
            Intrinsics.g(string, "getString(...)");
            return string;
        }

        @Override
        public void reset() {
            k();
            Cursor cursor = this.f14338j;
            if (cursor != null) {
                cursor.close();
            }
            this.f14338j = null;
        }
    }

    public d(z3.d dVar, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar, str);
    }

    protected final z3.d d() {
        return this.f14329a;
    }

    @Override
    public boolean getBoolean(int i10) {
        return y3.d.a(this, i10);
    }

    protected final String h() {
        return this.f14330b;
    }

    protected final boolean isClosed() {
        return this.f14331c;
    }

    protected final void j(boolean z10) {
        this.f14331c = z10;
    }

    protected final void k() {
        if (this.f14331c) {
            y3.a.b(21, "statement is closed");
            throw new KotlinNothingValueException();
        }
    }

    private d(z3.d dVar, String str) {
        this.f14329a = dVar;
        this.f14330b = str;
    }

    private static final class c extends d {

        private final h f14340e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(z3.d db2, String sql) {
            super(db2, sql, null);
            Intrinsics.h(db2, "db");
            Intrinsics.h(sql, "sql");
            this.f14340e = db2.Y(sql);
        }

        @Override
        public boolean C0() {
            k();
            this.f14340e.execute();
            return false;
        }

        @Override
        public void a(int i10, double d10) {
            k();
            this.f14340e.a(i10, d10);
        }

        @Override
        public void c(int i10, long j10) {
            k();
            this.f14340e.c(i10, j10);
        }

        @Override
        public void close() throws IOException {
            this.f14340e.close();
            j(true);
        }

        @Override
        public void g(int i10) {
            k();
            this.f14340e.g(i10);
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
            this.f14340e.V(i10, value);
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
