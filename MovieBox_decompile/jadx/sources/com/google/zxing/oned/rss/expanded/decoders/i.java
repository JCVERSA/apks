package com.google.zxing.oned.rss.expanded.decoders;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;

abstract class i extends h {
    i(kd.a aVar) {
        super(aVar);
    }

    protected abstract void h(StringBuilder sb2, int i10);

    protected abstract int i(int i10);

    final void j(StringBuilder sb2, int i10, int i11) {
        int iF = b().f(i10, i11);
        h(sb2, iF);
        int i12 = i(iF);
        int i13 = DefaultOggSeeker.MATCH_BYTE_RANGE;
        for (int i14 = 0; i14 < 5; i14++) {
            if (i12 / i13 == 0) {
                sb2.append('0');
            }
            i13 /= 10;
        }
        sb2.append(i12);
    }
}
