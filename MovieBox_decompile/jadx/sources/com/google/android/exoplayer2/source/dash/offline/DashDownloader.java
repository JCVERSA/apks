package com.google.android.exoplayer2.source.dash.offline;

import com.google.android.exoplayer2.offline.DownloadException;
import com.google.android.exoplayer2.offline.SegmentDownloader;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.upstream.cache.a;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.util.RunnableFutureTask;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.w1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import y9.b;
import y9.e;
import y9.f;
import y9.g;
import z9.c;
import z9.d;
import z9.i;
import z9.j;

public final class DashDownloader extends SegmentDownloader {

    private final b f25240k;

    public DashDownloader(w1 w1Var, a.c cVar, Executor executor) {
        this(w1Var, new d(), cVar, executor);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00b8 A[SYNTHETIC] */
    private void l(k kVar, z9.a aVar, long j10, long j11, boolean z10, ArrayList arrayList) throws IOException {
        for (int i10 = 0; i10 < aVar.f76631c.size(); i10++) {
            j jVar = (j) aVar.f76631c.get(i10);
            try {
                try {
                    e eVarN = n(kVar, aVar.f76630b, jVar, z10);
                    if (eVarN != null) {
                        long jF = eVarN.f(j11);
                        if (jF == -1) {
                            throw new DownloadException("Unbounded segment index");
                        }
                        String str = ((z9.b) p0.j(this.f25240k.j(jVar.f76690c))).f76635a;
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
        return new SegmentDownloader.b(j10, f.a(jVar, str, iVar, 0));
    }

    private e n(final k kVar, final int i10, final j jVar, boolean z10) {
        e eVarK = jVar.k();
        if (eVarK != null) {
            return eVarK;
        }
        i9.d dVar = (i9.d) e(new RunnableFutureTask<i9.d, IOException>(this) {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public i9.d doWork() throws IOException {
                return f.b(kVar, i10, jVar);
            }
        }, z10);
        if (dVar == null) {
            return null;
        }
        return new g(dVar, jVar.f76691d);
    }

    @Override
    public List h(k kVar, c cVar, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < cVar.d(); i10++) {
            z9.g gVarC = cVar.c(i10);
            long jB0 = p0.B0(gVarC.f76675b);
            long jF = cVar.f(i10);
            int i11 = 0;
            for (List list = gVarC.f76676c; i11 < list.size(); list = list) {
                l(kVar, (z9.a) list.get(i11), jB0, jF, z10, arrayList);
                i11++;
            }
        }
        return arrayList;
    }

    public DashDownloader(w1 w1Var, b0.a aVar, a.c cVar, Executor executor) {
        super(w1Var, aVar, cVar, executor);
        this.f25240k = new b();
    }
}
