package a2;

import android.net.Uri;
import androidx.media3.common.t;
import androidx.media3.common.util.r0;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistParser;
import androidx.media3.exoplayer.hls.playlist.c;
import androidx.media3.exoplayer.offline.SegmentDownloader;
import androidx.media3.exoplayer.upstream.q;
import b2.d;
import com.google.android.gms.location.DeviceOrientationRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import w1.h;

public final class a extends SegmentDownloader {
    public a(t tVar, androidx.media3.datasource.cache.a.c cVar, Executor executor) {
        this(tVar, new HlsPlaylistParser(), cVar, executor, DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT);
    }

    private void l(List list, List list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            list2.add(SegmentDownloader.f((Uri) list.get(i10)));
        }
    }

    private void m(c cVar, c.f fVar, HashSet hashSet, ArrayList arrayList) {
        String str = cVar.f15504a;
        long j10 = cVar.f11563h + fVar.f11608e;
        String str2 = fVar.f11610g;
        if (str2 != null) {
            Uri uriF = r0.f(str, str2);
            if (hashSet.add(uriF)) {
                arrayList.add(new SegmentDownloader.b(j10, SegmentDownloader.f(uriF)));
            }
        }
        arrayList.add(new SegmentDownloader.b(j10, new h(r0.f(str, fVar.f11604a), fVar.f11612i, fVar.f11613j)));
    }

    @Override
    public List h(androidx.media3.datasource.a aVar, d dVar, boolean z10) throws IOException {
        ArrayList<h> arrayList = new ArrayList();
        if (dVar instanceof androidx.media3.exoplayer.hls.playlist.d) {
            l(((androidx.media3.exoplayer.hls.playlist.d) dVar).f11621d, arrayList);
        } else {
            arrayList.add(SegmentDownloader.f(Uri.parse(dVar.f15504a)));
        }
        ArrayList arrayList2 = new ArrayList();
        HashSet hashSet = new HashSet();
        for (h hVar : arrayList) {
            arrayList2.add(new SegmentDownloader.b(0L, hVar));
            try {
                c cVar = (c) g(aVar, hVar, z10);
                List list = cVar.f11573r;
                c.f fVar = null;
                for (int i10 = 0; i10 < list.size(); i10++) {
                    c.f fVar2 = (c.f) list.get(i10);
                    c.f fVar3 = fVar2.f11605b;
                    if (fVar3 != null && fVar3 != fVar) {
                        m(cVar, fVar3, hashSet, arrayList2);
                        fVar = fVar3;
                    }
                    m(cVar, fVar2, hashSet, arrayList2);
                }
            } catch (IOException e10) {
                if (!z10) {
                    throw e10;
                }
            }
        }
        return arrayList2;
    }

    public a(t tVar, q.a aVar, androidx.media3.datasource.cache.a.c cVar, Executor executor, long j10) {
        super(tVar, aVar, cVar, executor, j10);
    }
}
