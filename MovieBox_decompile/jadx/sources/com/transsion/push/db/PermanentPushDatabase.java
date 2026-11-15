package com.transsion.push.db;

import android.content.Context;
import android.util.Log;
import androidx.room.RoomDatabase;
import androidx.room.s;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 \u00072\u00020\u0001:\u0001\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/transsion/push/db/PermanentPushDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "Lcom/transsion/push/db/a;", "i0", "()Lcom/transsion/push/db/a;", TtmlNode.TAG_P, "a", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class PermanentPushDatabase extends RoomDatabase {

    public static final Companion INSTANCE = new Companion(null);

    private static volatile PermanentPushDatabase f48718q;

    public static final class Companion {

        public static final class C0624a extends RoomDatabase.b {
            C0624a() {
            }

            @Override
            public void b(z3.d db2) {
                Intrinsics.h(db2, "db");
                super.b(db2);
                Log.e("PUSH_SHOW", "PermanentPushDatabase --> getInstance() --> buildDatabase() --> onCreate() --> db_name is = " + db2.getPath());
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final PermanentPushDatabase a(Context context) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            return (PermanentPushDatabase) s.a(applicationContext, PermanentPushDatabase.class, "permanent_database").a(new C0624a()).d();
        }

        public final PermanentPushDatabase b(Context context) {
            Intrinsics.h(context, "context");
            PermanentPushDatabase permanentPushDatabase = PermanentPushDatabase.f48718q;
            if (permanentPushDatabase == null) {
                synchronized (this) {
                    permanentPushDatabase = PermanentPushDatabase.f48718q;
                    if (permanentPushDatabase == null) {
                        PermanentPushDatabase permanentPushDatabaseA = PermanentPushDatabase.INSTANCE.a(context);
                        PermanentPushDatabase.f48718q = permanentPushDatabaseA;
                        permanentPushDatabase = permanentPushDatabaseA;
                    }
                }
            }
            return permanentPushDatabase;
        }

        private Companion() {
        }
    }

    public abstract a i0();
}
