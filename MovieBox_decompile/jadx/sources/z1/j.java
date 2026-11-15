package z1;

import android.net.Uri;
import androidx.media3.common.r;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public abstract class j {

    public final long f76555a;

    public final r f76556b;

    public final ImmutableList f76557c;

    public final long f76558d;

    public final List f76559e;

    public final List f76560f;

    public final List f76561g;

    private final i f76562h;

    public static class c extends j {

        public final Uri f76564i;

        public final long f76565j;

        private final String f76566k;

        private final i f76567l;

        private final m f76568m;

        public c(long j10, r rVar, List list, k.e eVar, List list2, List list3, List list4, String str, long j11) {
            super(j10, rVar, list, eVar, list2, list3, list4);
            this.f76564i = Uri.parse(((z1.b) list.get(0)).f76501a);
            i iVarC = eVar.c();
            this.f76567l = iVarC;
            this.f76566k = str;
            this.f76565j = j11;
            this.f76568m = iVarC != null ? null : new m(new i(null, 0L, j11));
        }

        @Override
        public String j() {
            return this.f76566k;
        }

        @Override
        public y1.e k() {
            return this.f76568m;
        }

        @Override
        public i l() {
            return this.f76567l;
        }
    }

    public static j n(long j10, r rVar, List list, k kVar, List list2, List list3, List list4, String str) {
        if (kVar instanceof k.e) {
            return new c(j10, rVar, list, (k.e) kVar, list2, list3, list4, str, -1L);
        }
        if (kVar instanceof k.a) {
            return new b(j10, rVar, list, (k.a) kVar, list2, list3, list4);
        }
        throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
    }

    public abstract String j();

    public abstract y1.e k();

    public abstract i l();

    public i m() {
        return this.f76562h;
    }

    private j(long j10, r rVar, List list, k kVar, List list2, List list3, List list4) {
        androidx.media3.common.util.a.a(!list.isEmpty());
        this.f76555a = j10;
        this.f76556b = rVar;
        this.f76557c = ImmutableList.copyOf((Collection) list);
        this.f76559e = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.f76560f = list3;
        this.f76561g = list4;
        this.f76562h = kVar.a(this);
        this.f76558d = kVar.b();
    }

    public static class b extends j implements y1.e {

        final k.a f76563i;

        public b(long j10, r rVar, List list, k.a aVar, List list2, List list3, List list4) {
            super(j10, rVar, list, aVar, list2, list3, list4);
            this.f76563i = aVar;
        }

        @Override
        public long a(long j10, long j11) {
            return this.f76563i.h(j10, j11);
        }

        @Override
        public long b(long j10, long j11) {
            return this.f76563i.d(j10, j11);
        }

        @Override
        public long c(long j10, long j11) {
            return this.f76563i.f(j10, j11);
        }

        @Override
        public i d(long j10) {
            return this.f76563i.k(this, j10);
        }

        @Override
        public long e(long j10, long j11) {
            return this.f76563i.i(j10, j11);
        }

        @Override
        public long f(long j10) {
            return this.f76563i.g(j10);
        }

        @Override
        public boolean g() {
            return this.f76563i.l();
        }

        @Override
        public long getTimeUs(long j10) {
            return this.f76563i.j(j10);
        }

        @Override
        public long h() {
            return this.f76563i.e();
        }

        @Override
        public long i(long j10, long j11) {
            return this.f76563i.c(j10, j11);
        }

        @Override
        public String j() {
            return null;
        }

        @Override
        public i l() {
            return null;
        }

        @Override
        public y1.e k() {
            return this;
        }
    }
}
