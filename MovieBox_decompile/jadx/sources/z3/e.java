package z3;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public interface e extends Closeable {

    public static abstract class a {

        public static final C0954a f76613b = new C0954a(null);

        public final int f76614a;

        public static final class C0954a {
            public C0954a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0954a() {
            }
        }

        public a(int i10) {
            this.f76614a = i10;
        }

        private final void a(String str) {
            if (StringsKt.H(str, ":memory:", true)) {
                return;
            }
            int length = str.length() - 1;
            int i10 = 0;
            boolean z10 = false;
            while (i10 <= length) {
                boolean z11 = Intrinsics.j(str.charAt(!z10 ? i10 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z11) {
                    i10++;
                } else {
                    z10 = true;
                }
            }
            if (str.subSequence(i10, length + 1).toString().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                SQLiteDatabase.deleteDatabase(new File(str));
            } catch (Exception e10) {
                Log.w("SupportSQLite", "delete failed: ", e10);
            }
        }

        public void b(d db2) {
            Intrinsics.h(db2, "db");
        }

        public void c(d db2) {
            Intrinsics.h(db2, "db");
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + db2 + ".path");
            if (!db2.isOpen()) {
                String path = db2.getPath();
                if (path != null) {
                    a(path);
                    return;
                }
                return;
            }
            List listD = null;
            try {
                try {
                    listD = db2.D();
                } catch (SQLiteException unused) {
                }
                try {
                    db2.close();
                } catch (IOException unused2) {
                }
                if (listD != null) {
                    return;
                }
            } finally {
                if (listD != null) {
                    Iterator it = listD.iterator();
                    while (it.hasNext()) {
                        Object second = ((Pair) it.next()).second;
                        Intrinsics.g(second, "second");
                        a((String) second);
                    }
                } else {
                    String path2 = db2.getPath();
                    if (path2 != null) {
                        a(path2);
                    }
                }
            }
        }

        public abstract void d(d dVar);

        public void e(d db2, int i10, int i11) {
            Intrinsics.h(db2, "db");
            throw new SQLiteException("Can't downgrade database from version " + i10 + " to " + i11);
        }

        public void f(d db2) {
            Intrinsics.h(db2, "db");
        }

        public abstract void g(d dVar, int i10, int i11);
    }

    public static final class b {

        public static final C0955b f76615f = new C0955b(null);

        public final Context f76616a;

        public final String f76617b;

        public final a f76618c;

        public final boolean f76619d;

        public final boolean f76620e;

        public static class a {

            private final Context f76621a;

            private String f76622b;

            private a f76623c;

            private boolean f76624d;

            private boolean f76625e;

            public a(Context context) {
                Intrinsics.h(context, "context");
                this.f76621a = context;
            }

            public a a(boolean z10) {
                this.f76625e = z10;
                return this;
            }

            public b b() {
                String str;
                a aVar = this.f76623c;
                if (aVar == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.");
                }
                if (this.f76624d && ((str = this.f76622b) == null || str.length() == 0)) {
                    throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                }
                return new b(this.f76621a, this.f76622b, aVar, this.f76624d, this.f76625e);
            }

            public a c(a callback) {
                Intrinsics.h(callback, "callback");
                this.f76623c = callback;
                return this;
            }

            public a d(String str) {
                this.f76622b = str;
                return this;
            }

            public a e(boolean z10) {
                this.f76624d = z10;
                return this;
            }
        }

        public static final class C0955b {
            public C0955b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final a a(Context context) {
                Intrinsics.h(context, "context");
                return new a(context);
            }

            private C0955b() {
            }
        }

        public b(Context context, String str, a callback, boolean z10, boolean z11) {
            Intrinsics.h(context, "context");
            Intrinsics.h(callback, "callback");
            this.f76616a = context;
            this.f76617b = str;
            this.f76618c = callback;
            this.f76619d = z10;
            this.f76620e = z11;
        }

        public static final a a(Context context) {
            return f76615f.a(context);
        }
    }

    public interface c {
        e a(b bVar);
    }

    @Override
    void close();

    String getDatabaseName();

    d getReadableDatabase();

    d getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z10);
}
