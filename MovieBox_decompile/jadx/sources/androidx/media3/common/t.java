package androidx.media3.common;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

public final class t {

    public static final t f9891i = new c().a();

    private static final String f9892j = a1.C0(0);

    private static final String f9893k = a1.C0(1);

    private static final String f9894l = a1.C0(2);

    private static final String f9895m = a1.C0(3);

    private static final String f9896n = a1.C0(4);

    private static final String f9897o = a1.C0(5);

    public final String f9898a;

    public final h f9899b;

    public final h f9900c;

    public final g f9901d;

    public final v f9902e;

    public final d f9903f;

    public final e f9904g;

    public final i f9905h;

    public static final class b {
    }

    public static final class c {

        private String f9906a;

        private Uri f9907b;

        private String f9908c;

        private d.a f9909d;

        private f.a f9910e;

        private List f9911f;

        private String f9912g;

        private ImmutableList f9913h;

        private Object f9914i;

        private long f9915j;

        private v f9916k;

        private g.a f9917l;

        private i f9918m;

        public t a() {
            h hVar;
            androidx.media3.common.util.a.g(this.f9910e.f9960b == null || this.f9910e.f9959a != null);
            Uri uri = this.f9907b;
            if (uri != null) {
                hVar = new h(uri, this.f9908c, this.f9910e.f9959a != null ? this.f9910e.i() : null, null, this.f9911f, this.f9912g, this.f9913h, this.f9914i, this.f9915j);
            } else {
                hVar = null;
            }
            String str = this.f9906a;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            e eVarG = this.f9909d.g();
            g gVarF = this.f9917l.f();
            v vVar = this.f9916k;
            if (vVar == null) {
                vVar = v.I;
            }
            return new t(str2, eVarG, hVar, gVarF, vVar, this.f9918m);
        }

        public c b(String str) {
            this.f9912g = str;
            return this;
        }

        public c c(g gVar) {
            this.f9917l = gVar.a();
            return this;
        }

        public c d(String str) {
            this.f9906a = (String) androidx.media3.common.util.a.e(str);
            return this;
        }

        public c e(String str) {
            this.f9908c = str;
            return this;
        }

        public c f(List list) {
            this.f9911f = (list == null || list.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(list));
            return this;
        }

        public c g(List list) {
            this.f9913h = ImmutableList.copyOf((Collection) list);
            return this;
        }

        public c h(Object obj) {
            this.f9914i = obj;
            return this;
        }

        public c i(Uri uri) {
            this.f9907b = uri;
            return this;
        }

        public c j(String str) {
            return i(str == null ? null : Uri.parse(str));
        }

        public c() {
            this.f9909d = new d.a();
            this.f9910e = new f.a();
            this.f9911f = Collections.emptyList();
            this.f9913h = ImmutableList.of();
            this.f9917l = new g.a();
            this.f9918m = i.f10000d;
            this.f9915j = C.TIME_UNSET;
        }

        private c(t tVar) {
            f.a aVar;
            this();
            this.f9909d = tVar.f9903f.a();
            this.f9906a = tVar.f9898a;
            this.f9916k = tVar.f9902e;
            this.f9917l = tVar.f9901d.a();
            this.f9918m = tVar.f9905h;
            h hVar = tVar.f9899b;
            if (hVar != null) {
                this.f9912g = hVar.f9995e;
                this.f9908c = hVar.f9992b;
                this.f9907b = hVar.f9991a;
                this.f9911f = hVar.f9994d;
                this.f9913h = hVar.f9996f;
                this.f9914i = hVar.f9998h;
                f fVar = hVar.f9993c;
                if (fVar != null) {
                    aVar = fVar.b();
                } else {
                    aVar = new f.a();
                }
                this.f9910e = aVar;
                this.f9915j = hVar.f9999i;
            }
        }
    }

    public static class d {

        public static final d f9919h = new a().f();

        private static final String f9920i = a1.C0(0);

        private static final String f9921j = a1.C0(1);

        private static final String f9922k = a1.C0(2);

        private static final String f9923l = a1.C0(3);

        private static final String f9924m = a1.C0(4);

        static final String f9925n = a1.C0(5);

        static final String f9926o = a1.C0(6);

        public final long f9927a;

        public final long f9928b;

        public final long f9929c;

        public final long f9930d;

        public final boolean f9931e;

        public final boolean f9932f;

        public final boolean f9933g;

        public static final class a {

            private long f9934a;

            private long f9935b;

            private boolean f9936c;

            private boolean f9937d;

            private boolean f9938e;

            public d f() {
                return new d(this);
            }

            public e g() {
                return new e(this);
            }

            public a() {
                this.f9935b = Long.MIN_VALUE;
            }

            private a(d dVar) {
                this.f9934a = dVar.f9928b;
                this.f9935b = dVar.f9930d;
                this.f9936c = dVar.f9931e;
                this.f9937d = dVar.f9932f;
                this.f9938e = dVar.f9933g;
            }
        }

        public a a() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f9928b == dVar.f9928b && this.f9930d == dVar.f9930d && this.f9931e == dVar.f9931e && this.f9932f == dVar.f9932f && this.f9933g == dVar.f9933g;
        }

        public int hashCode() {
            long j10 = this.f9928b;
            int i10 = ((int) (j10 ^ (j10 >>> 32))) * 31;
            long j11 = this.f9930d;
            return ((((((i10 + ((int) ((j11 >>> 32) ^ j11))) * 31) + (this.f9931e ? 1 : 0)) * 31) + (this.f9932f ? 1 : 0)) * 31) + (this.f9933g ? 1 : 0);
        }

        private d(a aVar) {
            this.f9927a = a1.y1(aVar.f9934a);
            this.f9929c = a1.y1(aVar.f9935b);
            this.f9928b = aVar.f9934a;
            this.f9930d = aVar.f9935b;
            this.f9931e = aVar.f9936c;
            this.f9932f = aVar.f9937d;
            this.f9933g = aVar.f9938e;
        }
    }

    public static final class e extends d {

        public static final e f9939p = new d.a().g();

        private e(d.a aVar) {
            super(aVar);
        }
    }

    public static final class f {

        private static final String f9940l = a1.C0(0);

        private static final String f9941m = a1.C0(1);

        private static final String f9942n = a1.C0(2);

        private static final String f9943o = a1.C0(3);

        static final String f9944p = a1.C0(4);

        private static final String f9945q = a1.C0(5);

        private static final String f9946r = a1.C0(6);

        private static final String f9947s = a1.C0(7);

        public final UUID f9948a;

        public final UUID f9949b;

        public final Uri f9950c;

        public final ImmutableMap f9951d;

        public final ImmutableMap f9952e;

        public final boolean f9953f;

        public final boolean f9954g;

        public final boolean f9955h;

        public final ImmutableList f9956i;

        public final ImmutableList f9957j;

        private final byte[] f9958k;

        public a b() {
            return new a();
        }

        public byte[] c() {
            byte[] bArr = this.f9958k;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.f9948a.equals(fVar.f9948a) && Objects.equals(this.f9950c, fVar.f9950c) && Objects.equals(this.f9952e, fVar.f9952e) && this.f9953f == fVar.f9953f && this.f9955h == fVar.f9955h && this.f9954g == fVar.f9954g && this.f9957j.equals(fVar.f9957j) && Arrays.equals(this.f9958k, fVar.f9958k);
        }

        public int hashCode() {
            int iHashCode = this.f9948a.hashCode() * 31;
            Uri uri = this.f9950c;
            return ((((((((((((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31) + this.f9952e.hashCode()) * 31) + (this.f9953f ? 1 : 0)) * 31) + (this.f9955h ? 1 : 0)) * 31) + (this.f9954g ? 1 : 0)) * 31) + this.f9957j.hashCode()) * 31) + Arrays.hashCode(this.f9958k);
        }

        public static final class a {

            private UUID f9959a;

            private Uri f9960b;

            private ImmutableMap f9961c;

            private boolean f9962d;

            private boolean f9963e;

            private boolean f9964f;

            private ImmutableList f9965g;

            private byte[] f9966h;

            public f i() {
                return new f(this);
            }

            private a() {
                this.f9961c = ImmutableMap.of();
                this.f9963e = true;
                this.f9965g = ImmutableList.of();
            }

            private a(f fVar) {
                this.f9959a = fVar.f9948a;
                this.f9960b = fVar.f9950c;
                this.f9961c = fVar.f9952e;
                this.f9962d = fVar.f9953f;
                this.f9963e = fVar.f9954g;
                this.f9964f = fVar.f9955h;
                this.f9965g = fVar.f9957j;
                this.f9966h = fVar.f9958k;
            }
        }

        private f(a aVar) {
            androidx.media3.common.util.a.g((aVar.f9964f && aVar.f9960b == null) ? false : true);
            UUID uuid = (UUID) androidx.media3.common.util.a.e(aVar.f9959a);
            this.f9948a = uuid;
            this.f9949b = uuid;
            this.f9950c = aVar.f9960b;
            this.f9951d = aVar.f9961c;
            this.f9952e = aVar.f9961c;
            this.f9953f = aVar.f9962d;
            this.f9955h = aVar.f9964f;
            this.f9954g = aVar.f9963e;
            this.f9956i = aVar.f9965g;
            this.f9957j = aVar.f9965g;
            this.f9958k = aVar.f9966h != null ? Arrays.copyOf(aVar.f9966h, aVar.f9966h.length) : null;
        }
    }

    public static final class g {

        public static final g f9967f = new a().f();

        private static final String f9968g = a1.C0(0);

        private static final String f9969h = a1.C0(1);

        private static final String f9970i = a1.C0(2);

        private static final String f9971j = a1.C0(3);

        private static final String f9972k = a1.C0(4);

        public final long f9973a;

        public final long f9974b;

        public final long f9975c;

        public final float f9976d;

        public final float f9977e;

        public static final class a {

            private long f9978a;

            private long f9979b;

            private long f9980c;

            private float f9981d;

            private float f9982e;

            public g f() {
                return new g(this);
            }

            public a g(long j10) {
                this.f9980c = j10;
                return this;
            }

            public a h(float f10) {
                this.f9982e = f10;
                return this;
            }

            public a i(long j10) {
                this.f9979b = j10;
                return this;
            }

            public a j(float f10) {
                this.f9981d = f10;
                return this;
            }

            public a k(long j10) {
                this.f9978a = j10;
                return this;
            }

            public a() {
                this.f9978a = C.TIME_UNSET;
                this.f9979b = C.TIME_UNSET;
                this.f9980c = C.TIME_UNSET;
                this.f9981d = -3.4028235E38f;
                this.f9982e = -3.4028235E38f;
            }

            private a(g gVar) {
                this.f9978a = gVar.f9973a;
                this.f9979b = gVar.f9974b;
                this.f9980c = gVar.f9975c;
                this.f9981d = gVar.f9976d;
                this.f9982e = gVar.f9977e;
            }
        }

        public a a() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.f9973a == gVar.f9973a && this.f9974b == gVar.f9974b && this.f9975c == gVar.f9975c && this.f9976d == gVar.f9976d && this.f9977e == gVar.f9977e;
        }

        public int hashCode() {
            long j10 = this.f9973a;
            long j11 = this.f9974b;
            int i10 = ((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f9975c;
            int i11 = (i10 + ((int) ((j12 >>> 32) ^ j12))) * 31;
            float f10 = this.f9976d;
            int iFloatToIntBits = (i11 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31;
            float f11 = this.f9977e;
            return iFloatToIntBits + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0);
        }

        private g(a aVar) {
            this(aVar.f9978a, aVar.f9979b, aVar.f9980c, aVar.f9981d, aVar.f9982e);
        }

        public g(long j10, long j11, long j12, float f10, float f11) {
            this.f9973a = j10;
            this.f9974b = j11;
            this.f9975c = j12;
            this.f9976d = f10;
            this.f9977e = f11;
        }
    }

    public static final class h {

        private static final String f9983j = a1.C0(0);

        private static final String f9984k = a1.C0(1);

        private static final String f9985l = a1.C0(2);

        private static final String f9986m = a1.C0(3);

        private static final String f9987n = a1.C0(4);

        private static final String f9988o = a1.C0(5);

        private static final String f9989p = a1.C0(6);

        private static final String f9990q = a1.C0(7);

        public final Uri f9991a;

        public final String f9992b;

        public final f f9993c;

        public final List f9994d;

        public final String f9995e;

        public final ImmutableList f9996f;

        public final List f9997g;

        public final Object f9998h;

        public final long f9999i;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return this.f9991a.equals(hVar.f9991a) && Objects.equals(this.f9992b, hVar.f9992b) && Objects.equals(this.f9993c, hVar.f9993c) && this.f9994d.equals(hVar.f9994d) && Objects.equals(this.f9995e, hVar.f9995e) && this.f9996f.equals(hVar.f9996f) && Objects.equals(this.f9998h, hVar.f9998h) && this.f9999i == hVar.f9999i;
        }

        public int hashCode() {
            int iHashCode = this.f9991a.hashCode() * 31;
            String str = this.f9992b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            f fVar = this.f9993c;
            int iHashCode3 = (((iHashCode2 + (fVar == null ? 0 : fVar.hashCode())) * 961) + this.f9994d.hashCode()) * 31;
            String str2 = this.f9995e;
            int iHashCode4 = (((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f9996f.hashCode()) * 31;
            Object obj = this.f9998h;
            return (int) ((((long) (iHashCode4 + (obj != null ? obj.hashCode() : 0))) * 31) + this.f9999i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private h(Uri uri, String str, f fVar, b bVar, List list, String str2, ImmutableList immutableList, Object obj, long j10) {
            this.f9991a = uri;
            this.f9992b = y.u(str);
            this.f9993c = fVar;
            this.f9994d = list;
            this.f9995e = str2;
            this.f9996f = immutableList;
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i10 = 0; i10 < immutableList.size(); i10++) {
                aVarBuilder.a(((k) immutableList.get(i10)).a().i());
            }
            this.f9997g = aVarBuilder.e();
            this.f9998h = obj;
            this.f9999i = j10;
        }
    }

    public static final class i {

        public static final i f10000d = new a().d();

        private static final String f10001e = a1.C0(0);

        private static final String f10002f = a1.C0(1);

        private static final String f10003g = a1.C0(2);

        public final Uri f10004a;

        public final String f10005b;

        public final Bundle f10006c;

        public static final class a {

            private Uri f10007a;

            private String f10008b;

            private Bundle f10009c;

            public i d() {
                return new i(this);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            if (Objects.equals(this.f10004a, iVar.f10004a) && Objects.equals(this.f10005b, iVar.f10005b)) {
                if ((this.f10006c == null) == (iVar.f10006c == null)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            Uri uri = this.f10004a;
            int iHashCode = (uri == null ? 0 : uri.hashCode()) * 31;
            String str = this.f10005b;
            return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + (this.f10006c != null ? 1 : 0);
        }

        private i(a aVar) {
            this.f10004a = aVar.f10007a;
            this.f10005b = aVar.f10008b;
            this.f10006c = aVar.f10009c;
        }
    }

    public static final class j extends k {
        private j(k.a aVar) {
            super(aVar);
        }
    }

    public static class k {

        private static final String f10010h = a1.C0(0);

        private static final String f10011i = a1.C0(1);

        private static final String f10012j = a1.C0(2);

        private static final String f10013k = a1.C0(3);

        private static final String f10014l = a1.C0(4);

        private static final String f10015m = a1.C0(5);

        private static final String f10016n = a1.C0(6);

        public final Uri f10017a;

        public final String f10018b;

        public final String f10019c;

        public final int f10020d;

        public final int f10021e;

        public final String f10022f;

        public final String f10023g;

        public static final class a {

            private Uri f10024a;

            private String f10025b;

            private String f10026c;

            private int f10027d;

            private int f10028e;

            private String f10029f;

            private String f10030g;

            public j i() {
                return new j(this);
            }

            private a(k kVar) {
                this.f10024a = kVar.f10017a;
                this.f10025b = kVar.f10018b;
                this.f10026c = kVar.f10019c;
                this.f10027d = kVar.f10020d;
                this.f10028e = kVar.f10021e;
                this.f10029f = kVar.f10022f;
                this.f10030g = kVar.f10023g;
            }
        }

        public a a() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return this.f10017a.equals(kVar.f10017a) && Objects.equals(this.f10018b, kVar.f10018b) && Objects.equals(this.f10019c, kVar.f10019c) && this.f10020d == kVar.f10020d && this.f10021e == kVar.f10021e && Objects.equals(this.f10022f, kVar.f10022f) && Objects.equals(this.f10023g, kVar.f10023g);
        }

        public int hashCode() {
            int iHashCode = this.f10017a.hashCode() * 31;
            String str = this.f10018b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f10019c;
            int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f10020d) * 31) + this.f10021e) * 31;
            String str3 = this.f10022f;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.f10023g;
            return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
        }

        private k(a aVar) {
            this.f10017a = aVar.f10024a;
            this.f10018b = aVar.f10025b;
            this.f10019c = aVar.f10026c;
            this.f10020d = aVar.f10027d;
            this.f10021e = aVar.f10028e;
            this.f10022f = aVar.f10029f;
            this.f10023g = aVar.f10030g;
        }
    }

    public static t b(String str) {
        return new c().j(str).a();
    }

    public c a() {
        return new c();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return Objects.equals(this.f9898a, tVar.f9898a) && this.f9903f.equals(tVar.f9903f) && Objects.equals(this.f9899b, tVar.f9899b) && Objects.equals(this.f9901d, tVar.f9901d) && Objects.equals(this.f9902e, tVar.f9902e) && Objects.equals(this.f9905h, tVar.f9905h);
    }

    public int hashCode() {
        int iHashCode = this.f9898a.hashCode() * 31;
        h hVar = this.f9899b;
        return ((((((((iHashCode + (hVar != null ? hVar.hashCode() : 0)) * 31) + this.f9901d.hashCode()) * 31) + this.f9903f.hashCode()) * 31) + this.f9902e.hashCode()) * 31) + this.f9905h.hashCode();
    }

    private t(String str, e eVar, h hVar, g gVar, v vVar, i iVar) {
        this.f9898a = str;
        this.f9899b = hVar;
        this.f9900c = hVar;
        this.f9901d = gVar;
        this.f9902e = vVar;
        this.f9903f = eVar;
        this.f9904g = eVar;
        this.f9905h = iVar;
    }
}
