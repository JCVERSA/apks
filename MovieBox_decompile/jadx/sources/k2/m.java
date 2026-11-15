package k2;

import android.net.Uri;
import com.google.common.collect.ImmutableList;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public final class m implements x {

    private static final int[] f63628s = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};

    private static final a f63629t = new a(new a.InterfaceC0784a() {
        @Override
        public final Constructor a() {
            return m.j();
        }
    });

    private static final a f63630u = new a(new a.InterfaceC0784a() {
        @Override
        public final Constructor a() {
            return m.k();
        }
    });

    private boolean f63631b;

    private boolean f63632c;

    private int f63633d;

    private int f63634e;

    private int f63635f;

    private int f63636g;

    private int f63637h;

    private int f63638i;

    private int f63639j;

    private int f63641l;

    private ImmutableList f63642m;

    private int f63646q;

    private int f63647r;

    private int f63640k = 1;

    private int f63643n = 112800;

    private h3.s.a f63645p = new h3.h();

    private boolean f63644o = true;

    static final class a {

        private final InterfaceC0784a f63648a;

        private final AtomicBoolean f63649b = new AtomicBoolean(false);

        private Constructor f63650c;

        public interface InterfaceC0784a {
            Constructor a();
        }

        public a(InterfaceC0784a interfaceC0784a) {
            this.f63648a = interfaceC0784a;
        }

        private Constructor b() {
            synchronized (this.f63649b) {
                if (this.f63649b.get()) {
                    return this.f63650c;
                }
                try {
                    return this.f63648a.a();
                } catch (ClassNotFoundException unused) {
                    this.f63649b.set(true);
                    return this.f63650c;
                } catch (Exception e10) {
                    throw new RuntimeException("Error instantiating extension", e10);
                }
            }
        }

        public r a(Object... objArr) {
            Constructor constructorB = b();
            if (constructorB == null) {
                return null;
            }
            try {
                return (r) constructorB.newInstance(objArr);
            } catch (Exception e10) {
                throw new IllegalStateException("Unexpected error creating extractor", e10);
            }
        }
    }

    private void g(int i10, List list) {
        switch (i10) {
            case 0:
                list.add(new r3.b());
                break;
            case 1:
                list.add(new r3.e());
                break;
            case 2:
                list.add(new r3.h(((this.f63633d | (this.f63631b ? 1 : 0)) == true ? 1 : 0) | (this.f63632c ? 2 : 0)));
                break;
            case 3:
                list.add(new l2.b(this.f63634e | (this.f63631b ? 1 : 0) | (this.f63632c ? 2 : 0)));
                break;
            case 4:
                r rVarA = f63629t.a(Integer.valueOf(this.f63635f));
                if (rVarA == null) {
                    list.add(new p2.d(this.f63635f));
                } else {
                    list.add(rVarA);
                }
                break;
            case 5:
                list.add(new androidx.media3.extractor.flv.b());
                break;
            case 6:
                list.add(new c3.e(this.f63645p, (this.f63644o ? 0 : 2) | this.f63636g));
                break;
            case 7:
                list.add(new d3.f(this.f63639j | (this.f63631b ? 1 : 0) | (this.f63632c ? 2 : 0)));
                break;
            case 8:
                list.add(new e3.h(this.f63645p, this.f63638i | e3.h.j(this.f63646q) | (this.f63644o ? 0 : 32)));
                list.add(new e3.n(this.f63645p, this.f63637h | e3.n.m(this.f63646q) | (this.f63644o ? 0 : 16)));
                break;
            case 9:
                list.add(new f3.d());
                break;
            case 10:
                list.add(new r3.c0());
                break;
            case 11:
                if (this.f63642m == null) {
                    this.f63642m = ImmutableList.of();
                }
                list.add(new r3.k0(this.f63640k, !this.f63644o ? 1 : 0, this.f63645p, new androidx.media3.common.util.p0(0L), new r3.j(this.f63641l, this.f63642m), this.f63643n));
                break;
            case 12:
                list.add(new s3.b());
                break;
            case 14:
                list.add(new s2.a(this.f63647r));
                break;
            case 15:
                r rVarA2 = f63630u.a(new Object[0]);
                if (rVarA2 != null) {
                    list.add(rVarA2);
                }
                break;
            case 16:
                list.add(new m2.b(1 ^ (this.f63644o ? 1 : 0), this.f63645p));
                break;
            case 17:
                list.add(new g3.a());
                break;
            case 18:
                list.add(new t3.a());
                break;
            case 19:
                list.add(new o2.a());
                break;
            case 20:
                int i11 = this.f63637h;
                if ((i11 & 2) == 0 && (i11 & 4) == 0) {
                    list.add(new r2.a());
                    break;
                }
                break;
            case 21:
                list.add(new n2.a());
                break;
        }
    }

    public static Constructor j() {
        if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
            return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(r.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    public static Constructor k() {
        return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(r.class).getConstructor(null);
    }

    @Override
    public synchronized r[] c(Uri uri, Map map) {
        ArrayList arrayList;
        try {
            int[] iArr = f63628s;
            arrayList = new ArrayList(iArr.length);
            int iB = androidx.media3.common.o.b(map);
            if (iB != -1) {
                g(iB, arrayList);
            }
            int iC = androidx.media3.common.o.c(uri);
            if (iC != -1 && iC != iB) {
                g(iC, arrayList);
            }
            for (int i10 : iArr) {
                if (i10 != iB && i10 != iC) {
                    g(i10, arrayList);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (r[]) arrayList.toArray(new r[arrayList.size()]);
    }

    @Override
    public synchronized r[] createExtractors() {
        return c(Uri.EMPTY, new HashMap());
    }

    @Override
    public synchronized m b(int i10) {
        this.f63646q = i10;
        return this;
    }

    @Override
    public synchronized m d(boolean z10) {
        this.f63644o = z10;
        return this;
    }

    public synchronized m l(int i10) {
        this.f63647r = i10;
        return this;
    }

    @Override
    public synchronized m a(h3.s.a aVar) {
        this.f63645p = aVar;
        return this;
    }
}
