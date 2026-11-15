package androidx.media3.exoplayer.dash.offline;

import androidx.media3.common.t;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.a1;
import androidx.media3.datasource.cache.a;
import androidx.media3.exoplayer.offline.DownloadException;
import androidx.media3.exoplayer.offline.SegmentDownloader;
import androidx.media3.exoplayer.upstream.q;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.google.common.collect.ImmutableMap;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import k2.h;
import y1.b;
import y1.e;
import y1.f;
import y1.g;
import z1.c;
import z1.d;
import z1.i;
import z1.j;

public final class DashDownloader extends SegmentDownloader {

    private final b f11174l;

    public DashDownloader(t tVar, a.c cVar, Executor executor) {
        this(tVar, new d(), cVar, executor, DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00b8 A[SYNTHETIC] */
    private void l(androidx.media3.datasource.a aVar, z1.a aVar2, long j10, long j11, boolean z10, ArrayList arrayList) throws IOException {
        for (int i10 = 0; i10 < aVar2.f76497c.size(); i10++) {
            j jVar = (j) aVar2.f76497c.get(i10);
            try {
                try {
                    e eVarN = n(aVar, aVar2.f76496b, jVar, z10);
                    if (eVarN != null) {
                        long jF = eVarN.f(j11);
                        if (jF == -1) {
                            throw new DownloadException("Unbounded segment index");
                        }
                        String str = ((z1.b) a1.i(this.f11174l.j(jVar.f76557c))).f76501a;
                        i iVarM = jVar.m();
                        if (iVarM != null) {
                            arrayList.add(m(jVar, str, j10, iVarM));
                        }
                        i iVarL = jVar.l();
                        if (iVarL != null) {
                            arrayList.add(m(jVar, str, j10, iVarL));
                        }
                        long jH = eVarN.h();
                        long j12 = (jH + jF) - 1;
                        for (long j13 = jH; j13 <= j12; j13++) {
                            arrayList.add(m(jVar, str, j10 + eVarN.getTimeUs(j13), eVarN.d(j13)));
                        }
                    } else {
                        try {
                            throw new DownloadException("Missing segment index");
                        } catch (IOException e10) {
                            e = e10;
                            if (z10) {
                                throw e;
                            }
                        }
                    }
                } catch (IOException e11) {
                    e = e11;
                    if (z10) {
                        throw e;
                    }
                }
            } catch (IOException e12) {
                e = e12;
            }
        }
    }

    private SegmentDownloader.b m(j jVar, String str, long j10, i iVar) {
        return new SegmentDownloader.b(j10, f.a(jVar, str, iVar, 0, ImmutableMap.of()));
    }

    private e n(final androidx.media3.datasource.a aVar, final int i10, final j jVar, boolean z10) {
        e eVarK = jVar.k();
        if (eVarK != null) {
            return eVarK;
        }
        h hVar = (h) e(new RunnableFutureTask<h, IOException>() {
            @Override
            public h doWork() throws IOException {
                return f.b(aVar, i10, jVar);
            }
        }, z10);
        if (hVar == null) {
            return null;
        }
        return new g(hVar, jVar.f76558d);
    }

    @Override
    public List h(androidx.media3.datasource.a aVar, c cVar, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < cVar.d(); i10++) {
            z1.g gVarC = cVar.c(i10);
            long jR0 = a1.R0(gVarC.f76542b);
            long jF = cVar.f(i10);
            int i11 = 0;
            for (List list = gVarC.f76543c; i11 < list.size(); list = list) {
                l(aVar, (z1.a) list.get(i11), jR0, jF, z10, arrayList);
                i11++;
            }
        }
        return arrayList;
    }

    public DashDownloader(t tVar, q.a aVar, a.c cVar, Executor executor, long j10) {
        super(tVar, aVar, cVar, executor, j10);
        this.f11174l = new b();
    }
}
