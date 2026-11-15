package c9;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;

final class v0 extends SQLiteOpenHelper {

    private static final String f16768c = "INSERT INTO global_log_event_state VALUES (" + System.currentTimeMillis() + ")";

    static int f16769d = 7;

    private static final a f16770e;

    private static final a f16771f;

    private static final a f16772g;

    private static final a f16773h;

    private static final a f16774i;

    private static final a f16775j;

    private static final a f16776k;

    private static final List f16777l;

    private final int f16778a;

    private boolean f16779b;

    public interface a {
        void a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        a aVar = new a() {
            @Override
            public final void a(SQLiteDatabase sQLiteDatabase) {
                v0.n(sQLiteDatabase);
            }
        };
        f16770e = aVar;
        a aVar2 = new a() {
            @Override
            public final void a(SQLiteDatabase sQLiteDatabase) {
                v0.o(sQLiteDatabase);
            }
        };
        f16771f = aVar2;
        a aVar3 = new a() {
            @Override
            public final void a(SQLiteDatabase sQLiteDatabase) {
                sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
            }
        };
        f16772g = aVar3;
        a aVar4 = new a() {
            @Override
            public final void a(SQLiteDatabase sQLiteDatabase) {
                v0.q(sQLiteDatabase);
            }
        };
        f16773h = aVar4;
        a aVar5 = new a() {
            @Override
            public final void a(SQLiteDatabase sQLiteDatabase) {
                v0.r(sQLiteDatabase);
            }
        };
        f16774i = aVar5;
        a aVar6 = new a() {
            @Override
            public final void a(SQLiteDatabase sQLiteDatabase) {
                sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN product_id INTEGER");
            }
        };
        f16775j = aVar6;
        a aVar7 = new a() {
            @Override
            public final void a(SQLiteDatabase sQLiteDatabase) {
                v0.t(sQLiteDatabase);
            }
        };
        f16776k = aVar7;
        f16777l = Arrays.asList(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
    }

    v0(Context context, String str, int i10) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i10);
        this.f16779b = false;
        this.f16778a = i10;
    }

    private void m(SQLiteDatabase sQLiteDatabase) {
        if (this.f16779b) {
            return;
        }
        onConfigure(sQLiteDatabase);
    }

    public static void n(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }

    public static void o(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    public static void q(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }

    public static void r(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
        sQLiteDatabase.execSQL("CREATE TABLE log_event_dropped (log_source VARCHAR(45) NOT NULL,reason INTEGER NOT NULL,events_dropped_count BIGINT NOT NULL,PRIMARY KEY(log_source, reason))");
        sQLiteDatabase.execSQL("CREATE TABLE global_log_event_state (last_metrics_upload_ms BIGINT PRIMARY KEY)");
        sQLiteDatabase.execSQL(f16768c);
    }

    public static void t(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN pseudonymous_id TEXT");
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN experiment_ids_clear_blob BLOB");
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN experiment_ids_encrypted_blob BLOB");
    }

    private void u(SQLiteDatabase sQLiteDatabase, int i10) {
        m(sQLiteDatabase);
        v(sQLiteDatabase, 0, i10);
    }

    private void v(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        List list = f16777l;
        if (i11 <= list.size()) {
            while (i10 < i11) {
                ((a) f16777l.get(i10)).a(sQLiteDatabase);
                i10++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i10 + " to " + i11 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    @Override
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f16779b = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        u(sQLiteDatabase, this.f16778a);
    }

    @Override
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
        u(sQLiteDatabase, i11);
    }

    @Override
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        m(sQLiteDatabase);
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        m(sQLiteDatabase);
        v(sQLiteDatabase, i10, i11);
    }
}
