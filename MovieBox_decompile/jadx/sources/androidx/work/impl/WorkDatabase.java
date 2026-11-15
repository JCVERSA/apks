package androidx.work.impl;

import android.content.Context;
import androidx.room.RoomDatabase;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H&¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H&¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Landroidx/work/impl/WorkDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "Lj4/v;", "n0", "()Lj4/v;", "Lj4/b;", "h0", "()Lj4/b;", "Lj4/z;", "o0", "()Lj4/z;", "Lj4/j;", "k0", "()Lj4/j;", "Lj4/o;", "l0", "()Lj4/o;", "Lj4/r;", "m0", "()Lj4/r;", "Lj4/e;", "i0", "()Lj4/e;", "Lj4/g;", "j0", "()Lj4/g;", TtmlNode.TAG_P, "a", "work-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class WorkDatabase extends RoomDatabase {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final z3.e c(Context context, z3.e.b configuration) {
            Intrinsics.h(context, "$context");
            Intrinsics.h(configuration, "configuration");
            z3.e.b.a aVarA = z3.e.b.f76615f.a(context);
            aVarA.d(configuration.f76617b).c(configuration.f76618c).e(true).a(true);
            return new a4.h().a(aVarA.b());
        }

        public final WorkDatabase b(final Context context, Executor queryExecutor, boolean z10) {
            Intrinsics.h(context, "context");
            Intrinsics.h(queryExecutor, "queryExecutor");
            return (WorkDatabase) (z10 ? androidx.room.s.b(context, WorkDatabase.class).c() : androidx.room.s.a(context, WorkDatabase.class, "androidx.work.workdb").g(new z3.e.c() {
                @Override
                public final z3.e a(z3.e.b bVar) {
                    return WorkDatabase.Companion.c(context, bVar);
                }
            })).h(queryExecutor).a(c.f15247a).b(i.f15301c).b(new r(context, 2, 3)).b(j.f15304c).b(k.f15305c).b(new r(context, 5, 6)).b(l.f15306c).b(m.f15307c).b(n.f15308c).b(new f0(context)).b(new r(context, 10, 11)).b(f.f15268c).b(g.f15287c).b(h.f15293c).e().d();
        }

        private Companion() {
        }
    }

    public static final WorkDatabase g0(Context context, Executor executor, boolean z10) {
        return INSTANCE.b(context, executor, z10);
    }

    public abstract j4.b h0();

    public abstract j4.e i0();

    public abstract j4.g j0();

    public abstract j4.j k0();

    public abstract j4.o l0();

    public abstract j4.r m0();

    public abstract j4.v n0();

    public abstract j4.z o0();
}
