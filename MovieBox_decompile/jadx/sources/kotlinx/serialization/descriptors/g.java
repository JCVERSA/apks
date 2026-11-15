package kotlinx.serialization.descriptors;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

public abstract class g {

    public static final class a implements Iterator, KMappedMarker {

        private int f65093a;

        final f f65094b;

        a(f fVar) {
            this.f65094b = fVar;
            this.f65093a = fVar.e();
        }

        @Override
        public f next() {
            f fVar = this.f65094b;
            int iE = fVar.e();
            int i10 = this.f65093a;
            this.f65093a = i10 - 1;
            return fVar.h(iE - i10);
        }

        @Override
        public boolean hasNext() {
            return this.f65093a > 0;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final class b implements Iterator, KMappedMarker {

        private int f65095a;

        final f f65096b;

        b(f fVar) {
            this.f65096b = fVar;
            this.f65095a = fVar.e();
        }

        @Override
        public String next() {
            f fVar = this.f65096b;
            int iE = fVar.e();
            int i10 = this.f65095a;
            this.f65095a = i10 - 1;
            return fVar.f(iE - i10);
        }

        @Override
        public boolean hasNext() {
            return this.f65095a > 0;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final class c implements Iterable, KMappedMarker {

        final f f65097a;

        public c(f fVar) {
            this.f65097a = fVar;
        }

        @Override
        public Iterator iterator() {
            return new a(this.f65097a);
        }
    }

    public static final class d implements Iterable, KMappedMarker {

        final f f65098a;

        public d(f fVar) {
            this.f65098a = fVar;
        }

        @Override
        public Iterator iterator() {
            return new b(this.f65098a);
        }
    }

    public static final Iterable a(f fVar) {
        Intrinsics.h(fVar, "<this>");
        return new c(fVar);
    }

    public static final Iterable b(f fVar) {
        Intrinsics.h(fVar, "<this>");
        return new d(fVar);
    }
}
