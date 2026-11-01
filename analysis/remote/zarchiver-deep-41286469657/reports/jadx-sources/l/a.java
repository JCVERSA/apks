package l;

import android.os.Build;
import java.io.Closeable;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import n0.f;
import q.g;
import q.h;
import q.j;
import q.k;
import q.l;
import q.m;

public class a implements Closeable {

    public final HashMap f1167a;

    public final InputStream f1168b;

    public g f1169c;

    public m.a f1170d;

    public List<m.b> f1171e;

    public a(InputStream inputStream, int i2) throws Throwable {
        this.f1167a = new HashMap();
        if (inputStream.markSupported()) {
            inputStream.mark(Integer.MAX_VALUE);
            this.f1168b = inputStream;
        } else {
            this.f1168b = null;
        }
        boolean z2 = Build.VERSION.SDK_INT >= 24;
        ZipInputStream zipInputStream = new ZipInputStream(inputStream == this.f1168b ? new f(inputStream, 0) : inputStream);
        boolean z3 = false;
        char c2 = 0;
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                break;
            }
            String name = nextEntry.getName();
            if ("AndroidManifest.xml".equals(name)) {
                z3 = true;
            } else if (i2 == 1) {
                if (!"resources.arsc".equals(name)) {
                    if (c2 == 0) {
                        if (name.startsWith("res/")) {
                            c2 = 1;
                        } else if (name.startsWith("r/")) {
                            c2 = 2;
                        }
                    }
                    if (c2 != 1) {
                        long size = nextEntry.getSize();
                        if (size <= 5120 && size >= 1024) {
                            boolean zEndsWith = name.endsWith(".xml");
                            boolean z4 = !zEndsWith && name.endsWith(".png");
                            if (zEndsWith || z4) {
                            }
                        }
                    } else if (!z2) {
                        boolean zEndsWith2 = name.endsWith(".png");
                        boolean z5 = zEndsWith2 && name.contains("/ic_launcher");
                        boolean z6 = zEndsWith2 && name.endsWith("icon.png");
                        if (z5 || z6) {
                        }
                    } else if (!name.contains("/mipmap")) {
                        if (name.contains("/drawable")) {
                            boolean zEndsWith3 = name.endsWith(".xml");
                            boolean z7 = !zEndsWith3 && name.contains("/ic_launcher");
                            boolean z8 = !z7 && name.endsWith("icon.png");
                            if (zEndsWith3 || z7 || z8) {
                            }
                        }
                    }
                }
            }
            this.f1167a.put(name, a0.c.T(zipInputStream));
        }
        zipInputStream.close();
        if (z3) {
            c();
            b();
        }
    }

    public byte[] a(String str) throws Throwable {
        InputStream inputStream;
        ZipEntry nextEntry;
        byte[] bArrT = (byte[]) this.f1167a.get(str);
        if (bArrT == null && (inputStream = this.f1168b) != null) {
            inputStream.reset();
            ZipInputStream zipInputStream = new ZipInputStream(new f(inputStream, 0));
            do {
                nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                }
                zipInputStream.close();
            } while (!str.equals(nextEntry.getName()));
            bArrT = a0.c.T(zipInputStream);
            zipInputStream.close();
        }
        return bArrT;
    }

    public final void b() throws Throwable {
        byte[] bArrA = a("AndroidManifest.xml");
        if (bArrA == null) {
            return;
        }
        g gVar = this.f1169c;
        Locale locale = Locale.US;
        o.c cVar = new o.c(gVar, locale);
        o.b bVar = new o.b(ByteBuffer.wrap(bArrA), this.f1169c);
        if (locale != null) {
            bVar.f1273f = locale;
        }
        bVar.f1271d = cVar;
        bVar.a();
        this.f1170d = cVar.f1274a;
        this.f1171e = cVar.f1275b;
    }

    public final void c() throws Throwable {
        byte[] bArrA = a("resources.arsc");
        if (bArrA == null) {
            this.f1169c = new g();
            return;
        }
        o.d dVar = new o.d(ByteBuffer.wrap(bArrA));
        h hVar = (h) dVar.a();
        dVar.f1279b = s.b.b((ByteBuffer) dVar.f1280c, (p.c) dVar.a());
        dVar.f1281d = new g();
        if ((((long) hVar.f1356d) & 4294967295L) != 0) {
            q.b bVar = (q.b) dVar.a();
            int i2 = 0;
            for (long j2 = 4294967295L; i2 < (((long) hVar.f1356d) & j2); j2 = 4294967295L) {
                q.f fVar = new q.f(bVar);
                long jPosition = ((ByteBuffer) dVar.f1280c).position();
                int i3 = bVar.f1337e;
                short s2 = bVar.f1311b;
                if (i3 > 0) {
                    a0.c.R((ByteBuffer) dVar.f1280c, (((long) i3) + jPosition) - ((long) s2));
                    fVar.f1348b = s.b.b((ByteBuffer) dVar.f1280c, (p.c) dVar.a());
                }
                int i4 = bVar.f1338f;
                if (i4 > 0) {
                    a0.c.R((ByteBuffer) dVar.f1280c, (jPosition + ((long) i4)) - ((long) s2));
                    fVar.f1349c = s.b.b((ByteBuffer) dVar.f1280c, (p.c) dVar.a());
                }
                while (true) {
                    if (!((ByteBuffer) dVar.f1280c).hasRemaining()) {
                        bVar = null;
                        break;
                    }
                    p.a aVarA = dVar.a();
                    long jPosition2 = ((ByteBuffer) dVar.f1280c).position();
                    short s3 = aVarA.f1310a;
                    if (s3 != 0) {
                        switch (s3) {
                            case 512:
                                bVar = (q.b) aVarA;
                                continue;
                                break;
                            case 513:
                                k kVar = (k) aVarA;
                                long[] jArr = new long[kVar.f1365e];
                                for (int i5 = 0; i5 < kVar.f1365e; i5++) {
                                    jArr[i5] = a0.c.V((ByteBuffer) dVar.f1280c);
                                }
                                j jVar = new j(kVar);
                                jVar.f1357a = fVar.f1348b.f(((short) (kVar.f1364d & 255)) - 1);
                                long j3 = ((long) kVar.f1366f) + jPosition2;
                                short s4 = kVar.f1311b;
                                a0.c.R((ByteBuffer) dVar.f1280c, j3 - ((long) s4));
                                ByteBuffer byteBufferSlice = ((ByteBuffer) dVar.f1280c).slice();
                                byteBufferSlice.order(ByteOrder.LITTLE_ENDIAN);
                                jVar.f1360d = byteBufferSlice;
                                jVar.f1359c = fVar.f1349c;
                                jVar.f1361e = jArr;
                                jVar.f1362f = (e.c) dVar.f1279b;
                                HashMap map = fVar.f1351e;
                                short s5 = jVar.f1358b;
                                List arrayList = (List) map.get(Short.valueOf(s5));
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                    map.put(Short.valueOf(s5), arrayList);
                                }
                                arrayList.add(jVar);
                                a0.c.R((ByteBuffer) dVar.f1280c, jPosition2 + ((long) (kVar.f1312c - s4)));
                                break;
                            case 514:
                                m mVar = (m) aVarA;
                                long[] jArr2 = new long[mVar.f1372e];
                                for (int i6 = 0; i6 < mVar.f1372e; i6++) {
                                    jArr2[i6] = a0.c.V((ByteBuffer) dVar.f1280c);
                                }
                                l lVar = new l(mVar);
                                lVar.f1368a = jArr2;
                                lVar.f1369b = fVar.f1348b.f(((short) (mVar.f1371d & 255)) - 1);
                                fVar.f1350d.put(Short.valueOf(lVar.f1370c), lVar);
                                a0.c.R((ByteBuffer) dVar.f1280c, jPosition2 + ((long) (mVar.f1312c - mVar.f1311b)));
                                break;
                            case 515:
                                a0.c.R((ByteBuffer) dVar.f1280c, jPosition2 + ((long) (aVarA.f1312c - aVarA.f1311b)));
                                break;
                            default:
                                throw new n.a("unexpected chunk type: 0x" + ((int) s3));
                        }
                    } else {
                        ByteBuffer byteBuffer = (ByteBuffer) dVar.f1280c;
                        byteBuffer.position(((ByteBuffer) dVar.f1280c).remaining() + byteBuffer.position());
                    }
                }
                ((g) dVar.f1281d).f1352a.put(Short.valueOf(fVar.f1347a), fVar);
                i2++;
            }
        }
        this.f1169c = (g) dVar.f1281d;
    }

    @Override
    public void close() {
        this.f1169c = null;
        HashMap map = this.f1167a;
        if (map != null) {
            map.clear();
        }
    }

    public final void finalize() {
        close();
    }

    public a() {
        this.f1167a = null;
        this.f1168b = null;
    }
}
