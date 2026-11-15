package i9;

import android.net.Uri;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public final class i implements r {

    private static final int[] f61949n = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};

    private static final a f61950o = new a(new a.InterfaceC0759a() {
        @Override
        public final Constructor a() {
            return i.e();
        }
    });

    private static final a f61951p = new a(new a.InterfaceC0759a() {
        @Override
        public final Constructor a() {
            return i.f();
        }
    });

    private boolean f61952b;

    private boolean f61953c;

    private int f61954d;

    private int f61955e;

    private int f61956f;

    private int f61957g;

    private int f61958h;

    private int f61959i;

    private int f61960j;

    private int f61962l;

    private int f61961k = 1;

    private int f61963m = 112800;

    static final class a {

        private final InterfaceC0759a f61964a;

        private final AtomicBoolean f61965b = new AtomicBoolean(false);

        private Constructor f61966c;

        public interface InterfaceC0759a {
            Constructor a();
        }

        public a(InterfaceC0759a interfaceC0759a) {
            this.f61964a = interfaceC0759a;
        }

        private Constructor b() {
            synchronized (this.f61965b) {
                if (this.f61965b.get()) {
                    return this.f61966c;
                }
                try {
                    return this.f61964a.a();
                } catch (ClassNotFoundException unused) {
                    this.f61965b.set(true);
                    return this.f61966c;
                } catch (Exception e10) {
                    throw new RuntimeException("Error instantiating extension", e10);
                }
            }
        }

        public l a(Object... objArr) {
            Constructor constructorB = b();
            if (constructorB == null) {
                return null;
            }
            try {
                return (l) constructorB.newInstance(objArr);
            } catch (Exception e10) {
                throw new IllegalStateException("Unexpected error creating extractor", e10);
            }
        }
    }

    private void d(int i10, List list) {
        switch (i10) {
            case 0:
                list.add(new s9.b());
                break;
            case 1:
                list.add(new s9.e());
                break;
            case 2:
                list.add(new s9.h((this.f61953c ? 2 : 0) | ((this.f61954d | (this.f61952b ? 1 : 0)) == true ? 1 : 0)));
                break;
            case 3:
                list.add(new j9.b((this.f61953c ? 2 : 0) | this.f61955e | (this.f61952b ? 1 : 0)));
                break;
            case 4:
                l lVarA = f61950o.a(Integer.valueOf(this.f61956f));
                if (lVarA == null) {
                    list.add(new l9.d(this.f61956f));
                } else {
                    list.add(lVarA);
                }
                break;
            case 5:
                list.add(new com.google.android.exoplayer2.extractor.flv.b());
                break;
            case 6:
                list.add(new o9.e(this.f61957g));
                break;
            case 7:
                list.add(new p9.f((this.f61953c ? 2 : 0) | this.f61960j | (this.f61952b ? 1 : 0)));
                break;
            case 8:
                list.add(new q9.g(this.f61959i));
                list.add(new q9.k(this.f61958h));
                break;
            case 9:
                list.add(new r9.d());
                break;
            case 10:
                list.add(new s9.a0());
                break;
            case 11:
                list.add(new s9.h0(this.f61961k, this.f61962l, this.f61963m));
                break;
            case 12:
                list.add(new t9.b());
                break;
            case 14:
                list.add(new n9.a());
                break;
            case 15:
                l lVarA2 = f61951p.a(new Object[0]);
                if (lVarA2 != null) {
                    list.add(lVarA2);
                }
                break;
            case 16:
                list.add(new k9.b());
                break;
        }
    }

    public static Constructor e() {
        if (Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
            return Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(l.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    public static Constructor f() {
        return Class.forName("com.google.android.exoplayer2.decoder.midi.MidiExtractor").asSubclass(l.class).getConstructor(null);
    }

    @Override
    public synchronized l[] c(Uri uri, Map map) {
        ArrayList arrayList;
        try {
            int[] iArr = f61949n;
            arrayList = new ArrayList(iArr.length);
            int iB = com.google.android.exoplayer2.util.l.b(map);
            if (iB != -1) {
                d(iB, arrayList);
            }
            int iC = com.google.android.exoplayer2.util.l.c(uri);
            if (iC != -1 && iC != iB) {
                d(iC, arrayList);
            }
            for (int i10 : iArr) {
                if (i10 != iB && i10 != iC) {
                    d(i10, arrayList);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (l[]) arrayList.toArray(new l[arrayList.size()]);
    }

    @Override
    public synchronized l[] createExtractors() {
        return c(Uri.EMPTY, new HashMap());
    }
}
