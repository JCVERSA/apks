package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class k4 {

    public static final class a extends k4 {

        private final Path f4155a;

        public a(Path path) {
            super(null);
            this.f4155a = path;
        }

        @Override
        public y.i a() {
            return this.f4155a.getBounds();
        }

        public final Path b() {
            return this.f4155a;
        }
    }

    public static final class b extends k4 {

        private final y.i f4156a;

        public b(y.i iVar) {
            super(null);
            this.f4156a = iVar;
        }

        @Override
        public y.i a() {
            return this.f4156a;
        }

        public final y.i b() {
            return this.f4156a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.c(this.f4156a, ((b) obj).f4156a);
        }

        public int hashCode() {
            return this.f4156a.hashCode();
        }
    }

    public static final class c extends k4 {

        private final y.k f4157a;

        private final Path f4158b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(y.k kVar) {
            super(0 == true ? 1 : 0);
            Path path = null;
            this.f4157a = kVar;
            if (!y.l.e(kVar)) {
                Path pathA = x0.a();
                o4.b(pathA, kVar, null, 2, null);
                path = pathA;
            }
            this.f4158b = path;
        }

        @Override
        public y.i a() {
            return y.l.d(this.f4157a);
        }

        public final y.k b() {
            return this.f4157a;
        }

        public final Path c() {
            return this.f4158b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && Intrinsics.c(this.f4157a, ((c) obj).f4157a);
        }

        public int hashCode() {
            return this.f4157a.hashCode();
        }
    }

    public k4(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract y.i a();

    private k4() {
    }
}
