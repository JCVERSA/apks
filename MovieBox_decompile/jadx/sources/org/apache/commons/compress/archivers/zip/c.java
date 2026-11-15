package org.apache.commons.compress.archivers.zip;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.ZipException;

public class c {

    private static final Map f67972a = new ConcurrentHashMap();

    public static final class a {

        public static final a f67973b = new a(0);

        public static final a f67974c = new a(1);

        public static final a f67975d = new a(2);

        private final int f67976a;

        private a(int i10) {
            this.f67976a = i10;
        }

        public t a(byte[] bArr, int i10, int i11, boolean z10, int i12) throws ZipException {
            int i13 = this.f67976a;
            if (i13 == 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Bad extra field starting at ");
                sb2.append(i10);
                sb2.append(".  Block length of ");
                sb2.append(i12);
                sb2.append(" bytes exceeds remaining data of ");
                sb2.append(i11 - 4);
                sb2.append(" bytes.");
                throw new ZipException(sb2.toString());
            }
            if (i13 == 1) {
                return null;
            }
            if (i13 != 2) {
                throw new ZipException("Unknown UnparseableExtraField key: " + this.f67976a);
            }
            i iVar = new i();
            if (z10) {
                iVar.parseFromLocalFileData(bArr, i10, i11);
            } else {
                iVar.parseFromCentralDirectoryData(bArr, i10, i11);
            }
            return iVar;
        }
    }

    static {
        d(b.class);
        d(X5455_ExtendedTimestamp.class);
        d(X7875_NewUnix.class);
        d(d.class);
        d(h.class);
        d(g.class);
        d(q.class);
        d(k.class);
        d(l.class);
        d(m.class);
        d(n.class);
        d(o.class);
        d(p.class);
        d(f.class);
    }

    public static t a(ZipShort zipShort) {
        t tVarB = b(zipShort);
        if (tVarB != null) {
            return tVarB;
        }
        j jVar = new j();
        jVar.b(zipShort);
        return jVar;
    }

    public static t b(ZipShort zipShort) {
        Class cls = (Class) f67972a.get(zipShort);
        if (cls != null) {
            return (t) cls.newInstance();
        }
        return null;
    }

    public static t c(t tVar, byte[] bArr, int i10, int i11, boolean z10) throws ZipException {
        try {
            if (z10) {
                tVar.parseFromLocalFileData(bArr, i10, i11);
            } else {
                tVar.parseFromCentralDirectoryData(bArr, i10, i11);
            }
            return tVar;
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw ((ZipException) new ZipException("Failed to parse corrupt ZIP extra field of type " + Integer.toHexString(tVar.getHeaderId().getValue())).initCause(e10));
        }
    }

    public static void d(Class cls) {
        try {
            f67972a.put(((t) cls.newInstance()).getHeaderId(), cls);
        } catch (ClassCastException unused) {
            throw new RuntimeException(cls + " doesn't implement ZipExtraField");
        } catch (IllegalAccessException unused2) {
            throw new RuntimeException(cls + "'s no-arg constructor is not public");
        } catch (InstantiationException unused3) {
            throw new RuntimeException(cls + " is not a concrete class");
        }
    }
}
