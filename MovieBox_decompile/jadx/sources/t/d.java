package t;

import java.util.List;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.markers.KMappedMarker;

public interface d extends List, b, KMappedMarker {

    static final class a extends AbstractList implements d {

        private final d f72444a;

        private final int f72445b;

        private final int f72446c;

        private int f72447d;

        public a(d dVar, int i10, int i11) {
            this.f72444a = dVar;
            this.f72445b = i10;
            this.f72446c = i11;
            w.d.c(i10, i11, dVar.size());
            this.f72447d = i11 - i10;
        }

        @Override
        public d subList(int i10, int i11) {
            w.d.c(i10, i11, this.f72447d);
            d dVar = this.f72444a;
            int i12 = this.f72445b;
            return new a(dVar, i10 + i12, i12 + i11);
        }

        @Override
        public Object get(int i10) {
            w.d.a(i10, this.f72447d);
            return this.f72444a.get(this.f72445b + i10);
        }

        @Override
        public int getSize() {
            return this.f72447d;
        }
    }
}
