package androidx.room.support;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.PropertyReference1Impl;

public final class AutoClosingRoomOpenHelper implements z3.e, androidx.room.d {

    private final z3.e f14407a;

    private final AutoCloser f14408b;

    private final AutoClosingSupportSQLiteDatabase f14409c;

    public static final class AutoClosingSupportSQLiteDatabase implements z3.d {

        private final AutoCloser f14410a;

        public AutoClosingSupportSQLiteDatabase(AutoCloser autoCloser) {
            Intrinsics.h(autoCloser, "autoCloser");
            this.f14410a = autoCloser;
        }

        public static final Unit l(int i10, z3.d db2) {
            Intrinsics.h(db2, "db");
            db2.U(i10);
            return Unit.f64096a;
        }

        public static final Unit m(String str, z3.d db2) {
            Intrinsics.h(db2, "db");
            db2.E(str);
            return Unit.f64096a;
        }

        public static final Unit n(String str, Object[] objArr, z3.d db2) {
            Intrinsics.h(db2, "db");
            db2.J(str, objArr);
            return Unit.f64096a;
        }

        public static final long o(String str, int i10, ContentValues contentValues, z3.d db2) {
            Intrinsics.h(db2, "db");
            return db2.n0(str, i10, contentValues);
        }

        public static final Object q(z3.d it) {
            Intrinsics.h(it, "it");
            return null;
        }

        public static final int r(String str, int i10, ContentValues contentValues, String str2, Object[] objArr, z3.d db2) {
            Intrinsics.h(db2, "db");
            return db2.i0(str, i10, contentValues, str2, objArr);
        }

        @Override
        public void A() {
            try {
                this.f14410a.j().A();
            } catch (Throwable th2) {
                this.f14410a.g();
                throw th2;
            }
        }

        @Override
        public List D() {
            return (List) this.f14410a.h(new PropertyReference1Impl() {
                @Override
                public Object get(Object obj) {
                    return ((z3.d) obj).D();
                }
            });
        }

        @Override
        public void E(final String sql) {
            Intrinsics.h(sql, "sql");
            this.f14410a.h(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.m(sql, (z3.d) obj);
                }
            });
        }

        @Override
        public void I() {
            z3.d dVarI = this.f14410a.i();
            Intrinsics.e(dVarI);
            dVarI.I();
        }

        @Override
        public void J(final String sql, final Object[] bindArgs) {
            Intrinsics.h(sql, "sql");
            Intrinsics.h(bindArgs, "bindArgs");
            this.f14410a.h(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.n(sql, bindArgs, (z3.d) obj);
                }
            });
        }

        @Override
        public void K() {
            try {
                this.f14410a.j().K();
            } catch (Throwable th2) {
                this.f14410a.g();
                throw th2;
            }
        }

        @Override
        public void L() {
            try {
                z3.d dVarI = this.f14410a.i();
                Intrinsics.e(dVarI);
                dVarI.L();
            } finally {
                this.f14410a.g();
            }
        }

        @Override
        public void U(final int i10) {
            this.f14410a.h(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.l(i10, (z3.d) obj);
                }
            });
        }

        @Override
        public z3.h Y(String sql) {
            Intrinsics.h(sql, "sql");
            return new a(sql, this.f14410a);
        }

        @Override
        public Cursor a0(z3.g query, CancellationSignal cancellationSignal) {
            Intrinsics.h(query, "query");
            try {
                return new b(this.f14410a.j().a0(query, cancellationSignal), this.f14410a);
            } catch (Throwable th2) {
                this.f14410a.g();
                throw th2;
            }
        }

        @Override
        public Cursor b0(z3.g query) {
            Intrinsics.h(query, "query");
            try {
                return new b(this.f14410a.j().b0(query), this.f14410a);
            } catch (Throwable th2) {
                this.f14410a.g();
                throw th2;
            }
        }

        @Override
        public void c0() {
            z3.c.a(this);
        }

        @Override
        public void close() {
            this.f14410a.f();
        }

        @Override
        public String getPath() {
            return (String) this.f14410a.h(new PropertyReference1Impl() {
                @Override
                public Object get(Object obj) {
                    return ((z3.d) obj).getPath();
                }
            });
        }

        @Override
        public int getVersion() {
            return ((Number) this.f14410a.h(new MutablePropertyReference1Impl() {
                @Override
                public Object get(Object obj) {
                    return Integer.valueOf(((z3.d) obj).getVersion());
                }

                @Override
                public void set(Object obj, Object obj2) {
                    ((z3.d) obj).U(((Number) obj2).intValue());
                }
            })).intValue();
        }

        @Override
        public int i0(final String table, final int i10, final ContentValues values, final String str, final Object[] objArr) {
            Intrinsics.h(table, "table");
            Intrinsics.h(values, "values");
            return ((Number) this.f14410a.h(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return Integer.valueOf(AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.r(table, i10, values, str, objArr, (z3.d) obj));
                }
            })).intValue();
        }

        @Override
        public boolean isOpen() {
            z3.d dVarI = this.f14410a.i();
            if (dVarI != null) {
                return dVarI.isOpen();
            }
            return false;
        }

        @Override
        public Cursor m0(String query) {
            Intrinsics.h(query, "query");
            try {
                return new b(this.f14410a.j().m0(query), this.f14410a);
            } catch (Throwable th2) {
                this.f14410a.g();
                throw th2;
            }
        }

        @Override
        public long n0(final String table, final int i10, final ContentValues values) {
            Intrinsics.h(table, "table");
            Intrinsics.h(values, "values");
            return ((Number) this.f14410a.h(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return Long.valueOf(AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.o(table, i10, values, (z3.d) obj));
                }
            })).longValue();
        }

        public final void p() {
            this.f14410a.h(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.q((z3.d) obj);
                }
            });
        }

        @Override
        public boolean v0() {
            if (this.f14410a.i() == null) {
                return false;
            }
            return ((Boolean) this.f14410a.h(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1.INSTANCE)).booleanValue();
        }

        @Override
        public boolean z0() {
            return ((Boolean) this.f14410a.h(new PropertyReference1Impl() {
                @Override
                public Object get(Object obj) {
                    return Boolean.valueOf(((z3.d) obj).z0());
                }
            })).booleanValue();
        }
    }

    static final class a implements z3.h {

        public static final C0113a f14411h = new C0113a(null);

        private final String f14412a;

        private final AutoCloser f14413b;

        private int[] f14414c;

        private long[] f14415d;

        private double[] f14416e;

        private String[] f14417f;

        private byte[][] f14418g;

        public static final class C0113a {
            public C0113a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0113a() {
            }
        }

        public a(String sql, AutoCloser autoCloser) {
            Intrinsics.h(sql, "sql");
            Intrinsics.h(autoCloser, "autoCloser");
            this.f14412a = sql;
            this.f14413b = autoCloser;
            this.f14414c = new int[0];
            this.f14415d = new long[0];
            this.f14416e = new double[0];
            this.f14417f = new String[0];
            this.f14418g = new byte[0][];
        }

        private final void j(z3.f fVar) {
            int length = this.f14414c.length;
            for (int i10 = 1; i10 < length; i10++) {
                int i11 = this.f14414c[i10];
                if (i11 == 1) {
                    fVar.c(i10, this.f14415d[i10]);
                } else if (i11 == 2) {
                    fVar.a(i10, this.f14416e[i10]);
                } else if (i11 == 3) {
                    String str = this.f14417f[i10];
                    Intrinsics.e(str);
                    fVar.V(i10, str);
                } else if (i11 == 4) {
                    byte[] bArr = this.f14418g[i10];
                    Intrinsics.e(bArr);
                    fVar.k0(i10, bArr);
                } else if (i11 == 5) {
                    fVar.g(i10);
                }
            }
        }

        private final void l(int i10, int i11) {
            int i12 = i11 + 1;
            int[] iArr = this.f14414c;
            if (iArr.length < i12) {
                int[] iArrCopyOf = Arrays.copyOf(iArr, i12);
                Intrinsics.g(iArrCopyOf, "copyOf(...)");
                this.f14414c = iArrCopyOf;
            }
            if (i10 == 1) {
                long[] jArr = this.f14415d;
                if (jArr.length < i12) {
                    long[] jArrCopyOf = Arrays.copyOf(jArr, i12);
                    Intrinsics.g(jArrCopyOf, "copyOf(...)");
                    this.f14415d = jArrCopyOf;
                    return;
                }
                return;
            }
            if (i10 == 2) {
                double[] dArr = this.f14416e;
                if (dArr.length < i12) {
                    double[] dArrCopyOf = Arrays.copyOf(dArr, i12);
                    Intrinsics.g(dArrCopyOf, "copyOf(...)");
                    this.f14416e = dArrCopyOf;
                    return;
                }
                return;
            }
            if (i10 == 3) {
                String[] strArr = this.f14417f;
                if (strArr.length < i12) {
                    Object[] objArrCopyOf = Arrays.copyOf(strArr, i12);
                    Intrinsics.g(objArrCopyOf, "copyOf(...)");
                    this.f14417f = (String[]) objArrCopyOf;
                    return;
                }
                return;
            }
            if (i10 != 4) {
                return;
            }
            byte[][] bArr = this.f14418g;
            if (bArr.length < i12) {
                Object[] objArrCopyOf2 = Arrays.copyOf(bArr, i12);
                Intrinsics.g(objArrCopyOf2, "copyOf(...)");
                this.f14418g = (byte[][]) objArrCopyOf2;
            }
        }

        public static final Unit m(z3.h statement) {
            Intrinsics.h(statement, "statement");
            statement.execute();
            return Unit.f64096a;
        }

        public static final long n(z3.h obj) {
            Intrinsics.h(obj, "obj");
            return obj.R();
        }

        public static final int o(z3.h obj) {
            Intrinsics.h(obj, "obj");
            return obj.F();
        }

        private final Object p(final Function1 function1) {
            return this.f14413b.h(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return AutoClosingRoomOpenHelper.a.q(this.f14433a, function1, (z3.d) obj);
                }
            });
        }

        public static final Object q(a aVar, Function1 function1, z3.d db2) {
            Intrinsics.h(db2, "db");
            z3.h hVarY = db2.Y(aVar.f14412a);
            aVar.j(hVarY);
            return function1.invoke(hVarY);
        }

        @Override
        public int F() {
            return ((Number) p(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return Integer.valueOf(AutoClosingRoomOpenHelper.a.o((z3.h) obj));
                }
            })).intValue();
        }

        @Override
        public long R() {
            return ((Number) p(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return Long.valueOf(AutoClosingRoomOpenHelper.a.n((z3.h) obj));
                }
            })).longValue();
        }

        @Override
        public void V(int i10, String value) {
            Intrinsics.h(value, "value");
            l(3, i10);
            this.f14414c[i10] = 3;
            this.f14417f[i10] = value;
        }

        @Override
        public void a(int i10, double d10) {
            l(2, i10);
            this.f14414c[i10] = 2;
            this.f14416e[i10] = d10;
        }

        @Override
        public void c(int i10, long j10) {
            l(1, i10);
            this.f14414c[i10] = 1;
            this.f14415d[i10] = j10;
        }

        @Override
        public void close() {
            k();
        }

        @Override
        public void execute() {
            p(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return AutoClosingRoomOpenHelper.a.m((z3.h) obj);
                }
            });
        }

        @Override
        public void g(int i10) {
            l(5, i10);
            this.f14414c[i10] = 5;
        }

        public void k() {
            this.f14414c = new int[0];
            this.f14415d = new long[0];
            this.f14416e = new double[0];
            this.f14417f = new String[0];
            this.f14418g = new byte[0][];
        }

        @Override
        public void k0(int i10, byte[] value) {
            Intrinsics.h(value, "value");
            l(4, i10);
            this.f14414c[i10] = 4;
            this.f14418g[i10] = value;
        }
    }

    private static final class b implements Cursor {

        private final Cursor f14419a;

        private final AutoCloser f14420b;

        public b(Cursor delegate, AutoCloser autoCloser) {
            Intrinsics.h(delegate, "delegate");
            Intrinsics.h(autoCloser, "autoCloser");
            this.f14419a = delegate;
            this.f14420b = autoCloser;
        }

        @Override
        public void close() {
            this.f14419a.close();
            this.f14420b.g();
        }

        @Override
        public void copyStringToBuffer(int i10, CharArrayBuffer charArrayBuffer) {
            this.f14419a.copyStringToBuffer(i10, charArrayBuffer);
        }

        @Override
        public void deactivate() {
            this.f14419a.deactivate();
        }

        @Override
        public byte[] getBlob(int i10) {
            return this.f14419a.getBlob(i10);
        }

        @Override
        public int getColumnCount() {
            return this.f14419a.getColumnCount();
        }

        @Override
        public int getColumnIndex(String str) {
            return this.f14419a.getColumnIndex(str);
        }

        @Override
        public int getColumnIndexOrThrow(String str) {
            return this.f14419a.getColumnIndexOrThrow(str);
        }

        @Override
        public String getColumnName(int i10) {
            return this.f14419a.getColumnName(i10);
        }

        @Override
        public String[] getColumnNames() {
            return this.f14419a.getColumnNames();
        }

        @Override
        public int getCount() {
            return this.f14419a.getCount();
        }

        @Override
        public double getDouble(int i10) {
            return this.f14419a.getDouble(i10);
        }

        @Override
        public Bundle getExtras() {
            return this.f14419a.getExtras();
        }

        @Override
        public float getFloat(int i10) {
            return this.f14419a.getFloat(i10);
        }

        @Override
        public int getInt(int i10) {
            return this.f14419a.getInt(i10);
        }

        @Override
        public long getLong(int i10) {
            return this.f14419a.getLong(i10);
        }

        @Override
        public Uri getNotificationUri() {
            return this.f14419a.getNotificationUri();
        }

        @Override
        public int getPosition() {
            return this.f14419a.getPosition();
        }

        @Override
        public short getShort(int i10) {
            return this.f14419a.getShort(i10);
        }

        @Override
        public String getString(int i10) {
            return this.f14419a.getString(i10);
        }

        @Override
        public int getType(int i10) {
            return this.f14419a.getType(i10);
        }

        @Override
        public boolean getWantsAllOnMoveCalls() {
            return this.f14419a.getWantsAllOnMoveCalls();
        }

        @Override
        public boolean isAfterLast() {
            return this.f14419a.isAfterLast();
        }

        @Override
        public boolean isBeforeFirst() {
            return this.f14419a.isBeforeFirst();
        }

        @Override
        public boolean isClosed() {
            return this.f14419a.isClosed();
        }

        @Override
        public boolean isFirst() {
            return this.f14419a.isFirst();
        }

        @Override
        public boolean isLast() {
            return this.f14419a.isLast();
        }

        @Override
        public boolean isNull(int i10) {
            return this.f14419a.isNull(i10);
        }

        @Override
        public boolean move(int i10) {
            return this.f14419a.move(i10);
        }

        @Override
        public boolean moveToFirst() {
            return this.f14419a.moveToFirst();
        }

        @Override
        public boolean moveToLast() {
            return this.f14419a.moveToLast();
        }

        @Override
        public boolean moveToNext() {
            return this.f14419a.moveToNext();
        }

        @Override
        public boolean moveToPosition(int i10) {
            return this.f14419a.moveToPosition(i10);
        }

        @Override
        public boolean moveToPrevious() {
            return this.f14419a.moveToPrevious();
        }

        @Override
        public void registerContentObserver(ContentObserver contentObserver) {
            this.f14419a.registerContentObserver(contentObserver);
        }

        @Override
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.f14419a.registerDataSetObserver(dataSetObserver);
        }

        @Override
        public boolean requery() {
            return this.f14419a.requery();
        }

        @Override
        public Bundle respond(Bundle bundle) {
            return this.f14419a.respond(bundle);
        }

        @Override
        public void setExtras(Bundle bundle) {
            this.f14419a.setExtras(bundle);
        }

        @Override
        public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
            this.f14419a.setNotificationUri(contentResolver, uri);
        }

        @Override
        public void unregisterContentObserver(ContentObserver contentObserver) {
            this.f14419a.unregisterContentObserver(contentObserver);
        }

        @Override
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.f14419a.unregisterDataSetObserver(dataSetObserver);
        }
    }

    public AutoClosingRoomOpenHelper(z3.e delegate, AutoCloser autoCloser) {
        Intrinsics.h(delegate, "delegate");
        Intrinsics.h(autoCloser, "autoCloser");
        this.f14407a = delegate;
        this.f14408b = autoCloser;
        this.f14409c = new AutoClosingSupportSQLiteDatabase(autoCloser);
        autoCloser.l(getDelegate());
    }

    @Override
    public void close() {
        this.f14409c.close();
    }

    public final AutoCloser d() {
        return this.f14408b;
    }

    @Override
    public String getDatabaseName() {
        return this.f14407a.getDatabaseName();
    }

    @Override
    public z3.e getDelegate() {
        return this.f14407a;
    }

    @Override
    public z3.d getReadableDatabase() {
        this.f14409c.p();
        return this.f14409c;
    }

    @Override
    public z3.d getWritableDatabase() {
        this.f14409c.p();
        return this.f14409c;
    }

    @Override
    public void setWriteAheadLoggingEnabled(boolean z10) {
        this.f14407a.setWriteAheadLoggingEnabled(z10);
    }
}
