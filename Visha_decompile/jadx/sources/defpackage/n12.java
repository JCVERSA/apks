package defpackage;

import android.net.Uri;
import androidx.media3.extractor.ts.TsExtractor;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public final class n12 implements uk3 {
    public static final int[] n = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};
    public static final a o = new a(new a.InterfaceC0425a() {
        @Override
        public final Constructor getConstructor() {
            return n12.e();
        }
    });
    public static final a p = new a(new a.InterfaceC0425a() {
        @Override
        public final Constructor getConstructor() {
            return n12.f();
        }
    });
    public boolean b;
    public boolean c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int l;
    public int k = 1;
    public int m = TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES;

    public static final class a {
        public final InterfaceC0425a a;
        public final AtomicBoolean b = new AtomicBoolean(false);
        public Constructor c;

        public interface InterfaceC0425a {
            Constructor getConstructor();
        }

        public a(InterfaceC0425a interfaceC0425a) {
            this.a = interfaceC0425a;
        }

        public nk3 a(Object... objArr) {
            Constructor constructorB = b();
            if (constructorB == null) {
                return null;
            }
            try {
                return (nk3) constructorB.newInstance(objArr);
            } catch (Exception e) {
                throw new IllegalStateException("Unexpected error creating extractor", e);
            }
        }

        public final Constructor b() {
            synchronized (this.b) {
                if (this.b.get()) {
                    return this.c;
                }
                try {
                    return this.a.getConstructor();
                } catch (ClassNotFoundException unused) {
                    this.b.set(true);
                    return this.c;
                } catch (Exception e) {
                    throw new RuntimeException("Error instantiating extension", e);
                }
            }
        }
    }

    public static Constructor e() {
        if (Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
            return Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(nk3.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    public static Constructor f() {
        return Class.forName("com.google.android.exoplayer2.decoder.midi.MidiExtractor").asSubclass(nk3.class).getConstructor(null);
    }

    @Override
    public synchronized nk3[] createExtractors() {
        return createExtractors(Uri.EMPTY, new HashMap());
    }

    public final void d(int i, List list) {
        switch (i) {
            case 0:
                list.add(new l4());
                break;
            case 1:
                list.add(new q4());
                break;
            case 2:
                list.add(new f9(((this.d | (this.b ? 1 : 0)) == true ? 1 : 0) | (this.c ? 2 : 0)));
                break;
            case 3:
                list.add(new jb(this.e | (this.b ? 1 : 0) | (this.c ? 2 : 0)));
                break;
            case 4:
                nk3 nk3VarA = o.a(Integer.valueOf(this.f));
                if (nk3VarA == null) {
                    list.add(new rx3(this.f));
                } else {
                    list.add(nk3VarA);
                }
                break;
            case 5:
                list.add(new e24());
                break;
            case 6:
                list.add(new z86(this.g));
                break;
            case 7:
                list.add(new kr6(this.j | (this.b ? 1 : 0) | (this.c ? 2 : 0)));
                break;
            case 8:
                list.add(new z54(this.i));
                list.add(new qr6(this.h));
                break;
            case 9:
                list.add(new ae7());
                break;
            case 10:
                list.add(new fk8());
                break;
            case 11:
                list.add(new mab(this.k, this.l, this.m));
                break;
            case 12:
                list.add(new ugc());
                break;
            case 14:
                list.add(new s95());
                break;
            case 15:
                nk3 nk3VarA2 = p.a(new Object[0]);
                if (nk3VarA2 != null) {
                    list.add(nk3VarA2);
                }
                break;
            case 16:
                list.add(new t30());
                break;
        }
    }

    @Override
    public synchronized nk3[] createExtractors(Uri uri, Map map) {
        ArrayList arrayList;
        try {
            int[] iArr = n;
            arrayList = new ArrayList(iArr.length);
            int iB = uu3.b(map);
            if (iB != -1) {
                d(iB, arrayList);
            }
            int iC = uu3.c(uri);
            if (iC != -1 && iC != iB) {
                d(iC, arrayList);
            }
            for (int i : iArr) {
                if (i != iB && i != iC) {
                    d(i, arrayList);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (nk3[]) arrayList.toArray(new nk3[arrayList.size()]);
    }
}
