package p;

import kotlin.jvm.internal.DefaultConstructorMarker;

public interface k extends f {

    public static final class a implements k {

        private final b f68949a;

        public a(b bVar) {
            this.f68949a = bVar;
        }

        public final b a() {
            return this.f68949a;
        }
    }

    public static final class b implements k {

        private final long f68950a;

        public b(long j10, DefaultConstructorMarker defaultConstructorMarker) {
            this(j10);
        }

        public final long a() {
            return this.f68950a;
        }

        private b(long j10) {
            this.f68950a = j10;
        }
    }

    public static final class c implements k {

        private final b f68951a;

        public c(b bVar) {
            this.f68951a = bVar;
        }

        public final b a() {
            return this.f68951a;
        }
    }
}
