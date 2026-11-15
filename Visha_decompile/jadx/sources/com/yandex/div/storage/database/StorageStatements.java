package com.yandex.div.storage.database;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import defpackage.c74;
import defpackage.e74;
import defpackage.i81;
import defpackage.ly0;
import defpackage.nv9;
import defpackage.qv0;
import defpackage.xx9;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import defpackage.zn8;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;

public final class StorageStatements {
    public static final StorageStatements a = new StorageStatements();

    public static final class a implements xx9 {
        public final Set a;

        public a(Set set) {
            this.a = set;
        }

        @Override
        public void a(nv9 nv9Var) {
            y45.j(nv9Var, "compiler");
            nv9Var.compileStatement("DELETE FROM raw_json WHERE raw_json_id IN " + StorageStatements.a.b(this.a)).executeUpdateDelete();
        }

        public String toString() {
            return "Deleting raw jsons with ids: " + this.a;
        }
    }

    public static final class b implements xx9 {
        @Override
        public void a(nv9 nv9Var) {
            y45.j(nv9Var, "compiler");
            ArrayList arrayList = new ArrayList();
            ReadState readStateA = nv9Var.a("SELECT name FROM sqlite_master WHERE type='table'", new String[0]);
            try {
                Cursor cursorB = readStateA.b();
                if (!cursorB.moveToFirst()) {
                    ly0.a(readStateA, null);
                    return;
                }
                do {
                    String string = cursorB.getString(cursorB.getColumnIndexOrThrow("name"));
                    y45.i(string, "cursor.getString(cursor.…lumnIndexOrThrow(\"name\"))");
                    arrayList.add(string);
                } while (cursorB.moveToNext());
                zfb zfbVar = zfb.a;
                ly0.a(readStateA, null);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    nv9Var.compileStatement("DROP TABLE IF EXISTS " + ((String) it.next())).execute();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(readStateA, th);
                    throw th2;
                }
            }
        }

        public String toString() {
            return "Drop all database tables";
        }
    }

    public static final class c implements xx9 {
        public final e74 a;

        public c(e74 e74Var) {
            this.a = e74Var;
        }

        @Override
        public void a(nv9 nv9Var) {
            y45.j(nv9Var, "compiler");
            ReadState readStateA = nv9Var.a("SELECT * FROM raw_json", new String[0]);
            try {
                this.a.invoke(readStateA);
                ly0.a(readStateA, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(readStateA, th);
                    throw th2;
                }
            }
        }

        public String toString() {
            return "Selecting all raw jsons";
        }
    }

    public static xx9 g(StorageStatements storageStatements, List list, e74 e74Var, int i, Object obj) {
        if ((i & 2) != 0) {
            e74Var = new e74() {
                @Override
                public Object invoke(Object obj2) {
                    invoke((List<String>) obj2);
                    return zfb.a;
                }

                public final void invoke(List<String> list2) {
                    y45.j(list2, "failedTransactions");
                    throw new SQLException("Insertion failed for raw jsons with ids: " + i81.y0(list2, null, null, null, 0, null, null, 63, null));
                }
            };
        }
        return storageStatements.f(list, e74Var);
    }

    public final String b(Collection collection) {
        return i81.y0(collection, "', '", "('", "')", 0, null, null, 56, null);
    }

    public final xx9 c(Set set) {
        y45.j(set, "elementIds");
        return new a(set);
    }

    public final xx9 d() {
        return new b();
    }

    public final xx9 e(e74 e74Var) {
        y45.j(e74Var, "reader");
        return new c(e74Var);
    }

    public final xx9 f(final List list, final e74 e74Var) {
        y45.j(list, "rawJsons");
        y45.j(e74Var, "onFailedTransactions");
        return new xx9(list, e74Var) {
            public final yi5 a;
            public final List b;
            public final e74 c;

            {
                this.b = list;
                this.c = e74Var;
                this.a = b.b(LazyThreadSafetyMode.NONE, new c74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(0);
                    }

                    @Override
                    public final String invoke() {
                        return i81.y0(list, null, null, null, 0, null, new e74() {
                            @Override
                            public final CharSequence invoke(zn8 zn8Var) {
                                y45.j(zn8Var, "it");
                                return zn8Var.getId();
                            }
                        }, 31, null);
                    }
                });
            }

            @Override
            public void a(nv9 nv9Var) {
                y45.j(nv9Var, "compiler");
                ArrayList arrayList = new ArrayList();
                SQLiteStatement sQLiteStatementCompileStatement = nv9Var.compileStatement("INSERT OR REPLACE INTO raw_json VALUES (?, ?)");
                for (zn8 zn8Var : this.b) {
                    sQLiteStatementCompileStatement.bindString(1, zn8Var.getId());
                    String string = zn8Var.getData().toString();
                    y45.i(string, "json.data.toString()");
                    byte[] bytes = string.getBytes(qv0.b);
                    y45.i(bytes, "this as java.lang.String).getBytes(charset)");
                    sQLiteStatementCompileStatement.bindBlob(2, bytes);
                    Long lValueOf = Long.valueOf(sQLiteStatementCompileStatement.executeInsert());
                    if (lValueOf.longValue() >= 0) {
                        lValueOf = null;
                    }
                    if (lValueOf != null) {
                        arrayList.add(zn8Var.getId());
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                this.c.invoke(arrayList);
            }

            public final String b() {
                return (String) this.a.getValue();
            }

            public String toString() {
                return "Replace raw jsons (" + b() + ')';
            }
        };
    }
}
