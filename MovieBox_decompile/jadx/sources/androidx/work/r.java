package androidx.work;

import android.os.Build;
import j4.u;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class r {

    public static final b f15410d = new b(null);

    private final UUID f15411a;

    private final u f15412b;

    private final Set f15413c;

    public static abstract class a {

        private final Class f15414a;

        private boolean f15415b;

        private UUID f15416c;

        private u f15417d;

        private final Set f15418e;

        public a(Class workerClass) {
            Intrinsics.h(workerClass, "workerClass");
            this.f15414a = workerClass;
            UUID uuidRandomUUID = UUID.randomUUID();
            Intrinsics.g(uuidRandomUUID, "randomUUID()");
            this.f15416c = uuidRandomUUID;
            String string = this.f15416c.toString();
            Intrinsics.g(string, "id.toString()");
            String name = workerClass.getName();
            Intrinsics.g(name, "workerClass.name");
            this.f15417d = new u(string, name);
            String name2 = workerClass.getName();
            Intrinsics.g(name2, "workerClass.name");
            this.f15418e = SetsKt.h(name2);
        }

        public final a a(String tag) {
            Intrinsics.h(tag, "tag");
            this.f15418e.add(tag);
            return g();
        }

        public final r b() {
            r rVarC = c();
            androidx.work.b bVar = this.f15417d.f62996j;
            boolean z10 = (Build.VERSION.SDK_INT >= 24 && bVar.e()) || bVar.f() || bVar.g() || bVar.h();
            u uVar = this.f15417d;
            if (uVar.f63003q) {
                if (z10) {
                    throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
                }
                if (uVar.f62993g > 0) {
                    throw new IllegalArgumentException("Expedited jobs cannot be delayed");
                }
            }
            UUID uuidRandomUUID = UUID.randomUUID();
            Intrinsics.g(uuidRandomUUID, "randomUUID()");
            j(uuidRandomUUID);
            return rVarC;
        }

        public abstract r c();

        public final boolean d() {
            return this.f15415b;
        }

        public final UUID e() {
            return this.f15416c;
        }

        public final Set f() {
            return this.f15418e;
        }

        public abstract a g();

        public final u h() {
            return this.f15417d;
        }

        public final a i(androidx.work.b constraints) {
            Intrinsics.h(constraints, "constraints");
            this.f15417d.f62996j = constraints;
            return g();
        }

        public final a j(UUID id2) {
            Intrinsics.h(id2, "id");
            this.f15416c = id2;
            String string = id2.toString();
            Intrinsics.g(string, "id.toString()");
            this.f15417d = new u(string, this.f15417d);
            return g();
        }

        public a k(long j10, TimeUnit timeUnit) {
            Intrinsics.h(timeUnit, "timeUnit");
            this.f15417d.f62993g = timeUnit.toMillis(j10);
            if (Long.MAX_VALUE - System.currentTimeMillis() > this.f15417d.f62993g) {
                return g();
            }
            throw new IllegalArgumentException("The given initial delay is too large and will cause an overflow!");
        }

        public final a l(d inputData) {
            Intrinsics.h(inputData, "inputData");
            this.f15417d.f62991e = inputData;
            return g();
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public r(UUID id2, u workSpec, Set tags) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(workSpec, "workSpec");
        Intrinsics.h(tags, "tags");
        this.f15411a = id2;
        this.f15412b = workSpec;
        this.f15413c = tags;
    }

    public UUID a() {
        return this.f15411a;
    }

    public final String b() {
        String string = a().toString();
        Intrinsics.g(string, "id.toString()");
        return string;
    }

    public final Set c() {
        return this.f15413c;
    }

    public final u d() {
        return this.f15412b;
    }
}
