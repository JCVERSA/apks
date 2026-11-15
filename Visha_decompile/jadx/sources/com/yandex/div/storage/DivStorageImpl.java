package com.yandex.div.storage;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import com.yandex.div.storage.DivStorageImpl;
import com.yandex.div.storage.database.ReadState;
import com.yandex.div.storage.database.SingleTransactionDataSavePerformer;
import com.yandex.div.storage.database.StorageStatements;
import defpackage.abb;
import defpackage.ae5;
import defpackage.at1;
import defpackage.c74;
import defpackage.e74;
import defpackage.e84;
import defpackage.i81;
import defpackage.ky5;
import defpackage.ly0;
import defpackage.oj8;
import defpackage.op6;
import defpackage.ov9;
import defpackage.x74;
import defpackage.xi;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.yx9;
import defpackage.ze3;
import defpackage.zfb;
import defpackage.zn8;
import defpackage.zs1;
import java.io.Closeable;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.json.JSONObject;

public class DivStorageImpl implements com.yandex.div.storage.b {
    public static final a g = new a(null);
    public final String a;
    public final zs1 b;
    public final yx9 c;
    public final SingleTransactionDataSavePerformer d;
    public final Map e;
    public final op6 f;

    public final class CursorDrivenRawJson implements zn8, Closeable {
        public final Cursor b;
        public boolean c;
        public final String d;
        public final yi5 e;
        public final DivStorageImpl f;

        public CursorDrivenRawJson(final DivStorageImpl divStorageImpl, Cursor cursor) {
            y45.j(cursor, "cursor");
            this.f = divStorageImpl;
            this.b = cursor;
            String string = cursor.getString(divStorageImpl.q(cursor, "raw_json_id"));
            y45.i(string, "cursor.getString(cursor.…exOf(COLUMN_RAW_JSON_ID))");
            this.d = string;
            this.e = kotlin.b.b(LazyThreadSafetyMode.NONE, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final JSONObject invoke() {
                    if (this.this$0.c) {
                        throw new IllegalStateException("Data no longer valid!");
                    }
                    DivStorageImpl divStorageImpl2 = divStorageImpl;
                    byte[] blob = this.this$0.b().getBlob(divStorageImpl.q(this.this$0.b(), "raw_json_data"));
                    y45.i(blob, "cursor.getBlob(cursor.in…Of(COLUMN_RAW_JSON_DATA))");
                    return divStorageImpl2.w(blob);
                }
            });
        }

        public final Cursor b() {
            return this.b;
        }

        @Override
        public void close() {
            this.c = true;
        }

        @Override
        public JSONObject getData() {
            return (JSONObject) this.e.getValue();
        }

        @Override
        public String getId() {
            return this.d;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String b(Collection collection) {
            return i81.y0(collection, "', '", "('", "')", 0, null, null, 56, null);
        }

        public a() {
        }
    }

    public class b implements zs1.a, e84 {
        public b() {
        }

        @Override
        public final void a(zs1.b bVar) {
            y45.j(bVar, "p0");
            DivStorageImpl.this.s(bVar);
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof zs1.a) && (obj instanceof e84)) {
                return y45.e(getFunctionDelegate(), ((e84) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override
        public final x74 getFunctionDelegate() {
            return new FunctionReferenceImpl(1, DivStorageImpl.this, DivStorageImpl.class, "onCreate", "onCreate(Lcom/yandex/div/storage/database/DatabaseOpenHelper$Database;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    public class c implements zs1.c, e84 {
        public c() {
        }

        @Override
        public final void a(zs1.b bVar, int i, int i2) {
            y45.j(bVar, "p0");
            DivStorageImpl.this.t(bVar, i, i2);
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof zs1.c) && (obj instanceof e84)) {
                return y45.e(getFunctionDelegate(), ((e84) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override
        public final x74 getFunctionDelegate() {
            return new FunctionReferenceImpl(3, DivStorageImpl.this, DivStorageImpl.class, "onUpgrade", "onUpgrade(Lcom/yandex/div/storage/database/DatabaseOpenHelper$Database;II)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    public DivStorageImpl(Context context, at1 at1Var, String str) {
        String str2;
        y45.j(context, "context");
        y45.j(at1Var, "openHelperProvider");
        y45.j(str, "databaseNamePrefix");
        if (str.length() == 0) {
            str2 = "div-storage.db";
        } else {
            str2 = str + "-div-storage.db";
        }
        String str3 = str2;
        this.a = str3;
        this.b = at1Var.a(context, str3, 3, new b(), new c());
        this.c = new yx9(new c74() {
            {
                super(0);
            }

            @Override
            public final zs1.b invoke() {
                return this.this$0.b.getWritableDatabase();
            }
        });
        this.d = new SingleTransactionDataSavePerformer(p());
        this.e = ky5.h(abb.a(abb.a(2, 3), new op6() {
            @Override
            public final void a(zs1.b bVar) {
                DivStorageImpl.r(bVar);
            }
        }));
        this.f = new op6() {
            @Override
            public final void a(zs1.b bVar) {
                DivStorageImpl.m(this.a, bVar);
            }
        };
    }

    public static final void m(DivStorageImpl divStorageImpl, zs1.b bVar) {
        y45.j(divStorageImpl, "this$0");
        y45.j(bVar, "db");
        divStorageImpl.n(bVar);
        divStorageImpl.l(bVar);
    }

    public static final void r(zs1.b bVar) {
        y45.j(bVar, "db");
        try {
            bVar.execSQL("\n    CREATE TABLE IF NOT EXISTS raw_json(\n    raw_json_id TEXT NOT NULL PRIMARY KEY,\n    raw_json_data BLOB NULLABLE)");
        } catch (SQLException e) {
            throw new SQLException("Create \"raw_json\" table", e);
        }
    }

    public static final Cursor v(zs1.b bVar, e74 e74Var) {
        y45.j(bVar, "$db");
        y45.j(e74Var, "$func");
        return (Cursor) e74Var.invoke(bVar);
    }

    public static DivStorageErrorException y(DivStorageImpl divStorageImpl, Exception exc, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toStorageException");
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return divStorageImpl.x(exc, str, str2);
    }

    @Override
    public com.yandex.div.storage.b.a a(Set set) {
        y45.j(set, "rawJsonIds");
        String str = "Read raw jsons with ids: " + set;
        ArrayList arrayList = new ArrayList();
        List listK = y71.k();
        try {
            listK = j(set);
        } catch (SQLException e) {
            arrayList.add(y(this, e, str, null, 2, null));
        } catch (IllegalStateException e2) {
            arrayList.add(y(this, e2, str, null, 2, null));
        }
        return new com.yandex.div.storage.b.a(listK, arrayList);
    }

    @Override
    public com.yandex.div.storage.b.C0306b b(e74 e74Var) {
        y45.j(e74Var, "predicate");
        Set setK = k(e74Var);
        return new com.yandex.div.storage.b.C0306b(setK, p().a(DivDataRepository.ActionOnError.SKIP_ELEMENT, StorageStatements.a.c(setK)).a());
    }

    @Override
    public ze3 c(List list, DivDataRepository.ActionOnError actionOnError) {
        y45.j(list, "rawJsons");
        y45.j(actionOnError, "actionOnError");
        return this.d.d(list, actionOnError);
    }

    public final List j(final Set set) {
        ArrayList arrayList = new ArrayList(set.size());
        ReadState readStateU = u(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final Cursor invoke(zs1.b bVar) {
                y45.j(bVar, "$this$readStateFor");
                return bVar.rawQuery("\n    SELECT raw_json_id, raw_json_data\n    FROM raw_json\n    WHERE raw_json_id IN\n " + DivStorageImpl.g.b(set), new String[0]);
            }
        });
        try {
            Cursor cursorB = readStateU.b();
            if (cursorB.getCount() != 0 && cursorB.moveToFirst()) {
                do {
                    CursorDrivenRawJson cursorDrivenRawJson = new CursorDrivenRawJson(this, cursorB);
                    arrayList.add(new zn8.b(cursorDrivenRawJson.getId(), cursorDrivenRawJson.getData()));
                    cursorDrivenRawJson.close();
                } while (cursorB.moveToNext());
            }
            zfb zfbVar = zfb.a;
            ly0.a(readStateU, null);
            return arrayList;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ly0.a(readStateU, th);
                throw th2;
            }
        }
    }

    public final Set k(final e74 e74Var) {
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        p().b(StorageStatements.a.e(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((ReadState) obj);
                return zfb.a;
            }

            public final void invoke(ReadState readState) {
                y45.j(readState, "it");
                Cursor cursorB = readState.b();
                if (cursorB.getCount() == 0 || !cursorB.moveToFirst()) {
                    return;
                }
                do {
                    DivStorageImpl.CursorDrivenRawJson cursorDrivenRawJson = new DivStorageImpl.CursorDrivenRawJson(this.this$0, cursorB);
                    if (((Boolean) e74Var.invoke(cursorDrivenRawJson)).booleanValue()) {
                        linkedHashSet.add(cursorDrivenRawJson.getId());
                    }
                    cursorDrivenRawJson.close();
                } while (cursorB.moveToNext());
            }
        }));
        return linkedHashSet;
    }

    public void l(zs1.b bVar) {
        y45.j(bVar, "db");
        try {
            bVar.execSQL("\n    CREATE TABLE IF NOT EXISTS cards(\n    layout_id TEXT NOT NULL PRIMARY KEY,\n    card_data BLOB NULLABLE,\n    metadata BLOB NULLABLE,\n    group_id TEXT NOT NULL)");
            bVar.execSQL("\n    CREATE TABLE IF NOT EXISTS template_references(\n    group_id TEXT NOT NULL,\n    template_id TEXT NOT NULL,\n    template_hash TEXT NOT NULL,\n    PRIMARY KEY(group_id, template_id))");
            bVar.execSQL("\n    CREATE TABLE IF NOT EXISTS templates(\n    template_hash TEXT NOT NULL PRIMARY KEY,\n    template_data BLOB NULLABLE)");
            bVar.execSQL("\n    CREATE TABLE IF NOT EXISTS raw_json(\n    raw_json_id TEXT NOT NULL PRIMARY KEY,\n    raw_json_data BLOB NULLABLE)");
        } catch (SQLException e) {
            throw new SQLException("Create tables", e);
        }
    }

    public void n(final zs1.b bVar) {
        y45.j(bVar, "db");
        new yx9(new c74() {
            {
                super(0);
            }

            @Override
            public final zs1.b invoke() {
                return bVar;
            }
        }).b(StorageStatements.a.d());
    }

    public Map o() {
        return this.e;
    }

    public yx9 p() {
        return this.c;
    }

    public final int q(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        throw new IllegalStateException("Column '" + str + "' not found in cursor");
    }

    public void s(zs1.b bVar) {
        y45.j(bVar, "db");
        l(bVar);
    }

    public void t(zs1.b bVar, int i, int i2) {
        y45.j(bVar, "db");
        ae5 ae5Var = ae5.a;
        Integer numValueOf = Integer.valueOf(i2);
        if (xi.o()) {
            xi.b("", numValueOf, 3);
        }
        if (i == 3) {
            return;
        }
        op6 op6Var = (op6) o().get(abb.a(Integer.valueOf(i), Integer.valueOf(i2)));
        if (op6Var == null) {
            op6Var = this.f;
        }
        try {
            op6Var.a(bVar);
        } catch (SQLException e) {
            ae5 ae5Var2 = ae5.a;
            if (xi.o()) {
                xi.j("Migration from " + i + " to " + i2 + " throws exception", e);
            }
            this.f.a(bVar);
        }
    }

    public final ReadState u(final e74 e74Var) {
        final zs1.b readableDatabase = this.b.getReadableDatabase();
        return new ReadState(new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m270invoke();
                return zfb.a;
            }

            public final void m270invoke() {
                ov9.a(readableDatabase);
            }
        }, new oj8() {
            @Override
            public final Object get() {
                return DivStorageImpl.v(readableDatabase, e74Var);
            }
        });
    }

    public final JSONObject w(byte[] bArr) {
        Charset charset = StandardCharsets.UTF_8;
        y45.i(charset, "UTF_8");
        return new JSONObject(new String(bArr, charset));
    }

    public final DivStorageErrorException x(Exception exc, String str, String str2) {
        return new DivStorageErrorException("Unexpected exception on database access: " + str, exc, str2);
    }
}
