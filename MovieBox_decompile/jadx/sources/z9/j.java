package z9;

import android.net.Uri;
import com.google.android.exoplayer2.p1;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public abstract class j {

    public final long f76688a;

    public final p1 f76689b;

    public final ImmutableList f76690c;

    public final long f76691d;

    public final List f76692e;

    public final List f76693f;

    public final List f76694g;

    private final i f76695h;

    public static class c extends j {

        public final Uri f76697i;

        public final long f76698j;

        private final String f76699k;

        private final i f76700l;

        private final m f76701m;

        public c(long j10, p1 p1Var, List list, k.e eVar, List list2, List list3, List list4, String str, long j11) {
            super(j10, p1Var, list, eVar, list2, list3, list4);
            this.f76697i = Uri.parse(((z9.b) list.get(0)).f76635a);
            i iVarC = eVar.c();
            this.f76700l = iVarC;
            this.f76699k = str;
            this.f76698j = j11;
            this.f76701m = iVarC != null ? null : new m(new i(null, 0L, j11));
        }

        @Override
        public String j() {
            return this.f76699k;
        }

        @Override
        public y9.e k() {
            return this.f76701m;
        }

        @Override
        public i l() {
            return this.f76700l;
        }
    }

    public static j n(long j10, p1 p1Var, List list, k kVar, List list2, List list3, List list4, String str) {
        if (kVar instanceof k.e) {
            return new c(j10, p1Var, list, (k.e) kVar, list2, list3, list4, str, -1L);
        }
        if (kVar instanceof k.a) {
            return new b(j10, p1Var, list, (k.a) kVar, list2, list3, list4);
        }
        throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
    }

    public abstract String j();

    public abstract y9.e k();

    public abstract i l();

    public i m() {
        return this.f76695h;
    }

    private j(long j10, p1 p1Var, List list, k kVar, List list2, List list3, List list4) {
        com.google.android.exoplayer2.util.a.a(!list.isEmpty());
        this.f76688a = j10;
        this.f76689b = p1Var;
        this.f76690c = ImmutableList.copyOf((Collection) list);
        this.f76692e = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.f76693f = list3;
        this.f76694g = list4;
        this.f76695h = kVar.a(this);
        this.f76691d = kVar.b();
    }

    public static class b extends j implements y9.e {

        final k.a f76696i;

        public b(long j10, p1 p1Var, List list, k.a aVar, List list2, List list3, List list4) {
            super(j10, p1Var, list, aVar, list2, list3, list4);
            this.f76696i = aVar;
        }

        @Override
        public long a(long j10, long j11) {
            return this.f76696i.h(j10, j11);
        }

        @Override
        public long b(long j10, long j11) {
            return this.f76696i.d(j10, j11);
        }

        @Override
        public long c(long j10, long j11) {
            return this.f76696i.f(j10, j11);
        }

        @Override
        public i d(long j10) {
            return this.f76696i.k(this, j10);
        }

        @Override
        public long e(long j10, long j11) {
            return this.f76696i.i(j10, j11);
        }

        @Override
        public long f(long j10) {
            return this.f76696i.g(j10);
        }

        @Override
        public boolean g() {
            return this.f76696i.l();
        }

        @Override
        public long getTimeUs(long j10) {
            return this.f76696i.j(j10);
        }

        @Override
        public long h() {
            return this.f76696i.e();
        }

        @Override
        public long i(long j10, long j11) {
            return this.f76696i.c(j10, j11);
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
        public y9.e k() {
            return this;
        }
    }
}
