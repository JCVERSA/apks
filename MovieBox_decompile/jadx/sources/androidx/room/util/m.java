package androidx.room.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class m {

    public static final b f14460e = new b(null);

    public final String f14461a;

    public final Map f14462b;

    public final Set f14463c;

    public final Set f14464d;

    public static final class a {

        public static final C0114a f14465h = new C0114a(null);

        public final String f14466a;

        public final String f14467b;

        public final boolean f14468c;

        public final int f14469d;

        public final String f14470e;

        public final int f14471f;

        public final int f14472g;

        public static final class C0114a {
            public C0114a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0114a() {
            }
        }

        public a(String name, String type, boolean z10, int i10, String str, int i11) {
            Intrinsics.h(name, "name");
            Intrinsics.h(type, "type");
            this.f14466a = name;
            this.f14467b = type;
            this.f14468c = z10;
            this.f14469d = i10;
            this.f14470e = str;
            this.f14471f = i11;
            this.f14472g = SchemaInfoUtilKt.a(type);
        }

        public final boolean a() {
            return this.f14469d > 0;
        }

        public boolean equals(Object obj) {
            return TableInfoKt.c(this, obj);
        }

        public int hashCode() {
            return TableInfoKt.h(this);
        }

        public String toString() {
            return TableInfoKt.n(this);
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final m a(y3.b connection, String tableName) {
            Intrinsics.h(connection, "connection");
            Intrinsics.h(tableName, "tableName");
            return SchemaInfoUtilKt.g(connection, tableName);
        }

        public final m b(z3.d database, String tableName) {
            Intrinsics.h(database, "database");
            Intrinsics.h(tableName, "tableName");
            return a(new androidx.room.driver.a(database), tableName);
        }

        private b() {
        }
    }

    public static final class c {

        public final String f14473a;

        public final String f14474b;

        public final String f14475c;

        public final List f14476d;

        public final List f14477e;

        public c(String referenceTable, String onDelete, String onUpdate, List columnNames, List referenceColumnNames) {
            Intrinsics.h(referenceTable, "referenceTable");
            Intrinsics.h(onDelete, "onDelete");
            Intrinsics.h(onUpdate, "onUpdate");
            Intrinsics.h(columnNames, "columnNames");
            Intrinsics.h(referenceColumnNames, "referenceColumnNames");
            this.f14473a = referenceTable;
            this.f14474b = onDelete;
            this.f14475c = onUpdate;
            this.f14476d = columnNames;
            this.f14477e = referenceColumnNames;
        }

        public boolean equals(Object obj) {
            return TableInfoKt.d(this, obj);
        }

        public int hashCode() {
            return TableInfoKt.i(this);
        }

        public String toString() {
            return TableInfoKt.o(this);
        }
    }

    public static final class d {

        public static final a f14478e = new a(null);

        public final String f14479a;

        public final boolean f14480b;

        public final List f14481c;

        public List f14482d;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v4, types: [java.util.ArrayList] */
        public d(String name, boolean z10, List columns, List orders) {
            Intrinsics.h(name, "name");
            Intrinsics.h(columns, "columns");
            Intrinsics.h(orders, "orders");
            this.f14479a = name;
            this.f14480b = z10;
            this.f14481c = columns;
            this.f14482d = orders;
            List arrayList = orders;
            if (arrayList.isEmpty()) {
                int size = columns.size();
                arrayList = new ArrayList(size);
                for (int i10 = 0; i10 < size; i10++) {
                    arrayList.add("ASC");
                }
            }
            this.f14482d = (List) arrayList;
        }

        public boolean equals(Object obj) {
            return TableInfoKt.e(this, obj);
        }

        public int hashCode() {
            return TableInfoKt.j(this);
        }

        public String toString() {
            return TableInfoKt.p(this);
        }
    }

    public m(String name, Map columns, Set foreignKeys, Set set) {
        Intrinsics.h(name, "name");
        Intrinsics.h(columns, "columns");
        Intrinsics.h(foreignKeys, "foreignKeys");
        this.f14461a = name;
        this.f14462b = columns;
        this.f14463c = foreignKeys;
        this.f14464d = set;
    }

    public static final m a(y3.b bVar, String str) {
        return f14460e.a(bVar, str);
    }

    public static final m b(z3.d dVar, String str) {
        return f14460e.b(dVar, str);
    }

    public boolean equals(Object obj) {
        return TableInfoKt.f(this, obj);
    }

    public int hashCode() {
        return TableInfoKt.k(this);
    }

    public String toString() {
        return TableInfoKt.q(this);
    }
}
