package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;

final class e extends i {

    private final String f32101c;

    private final String f32102d;

    e(kd.a aVar, String str, String str2) {
        super(aVar);
        this.f32101c = str2;
        this.f32102d = str;
    }

    private void k(StringBuilder sb2, int i10) {
        int iF = b().f(i10, 16);
        if (iF == 38400) {
            return;
        }
        sb2.append('(');
        sb2.append(this.f32101c);
        sb2.append(')');
        int i11 = iF % 32;
        int i12 = iF / 32;
        int i13 = (i12 % 12) + 1;
        int i14 = i12 / 12;
        if (i14 / 10 == 0) {
            sb2.append('0');
        }
        sb2.append(i14);
        if (i13 / 10 == 0) {
            sb2.append('0');
        }
        sb2.append(i13);
        if (i11 / 10 == 0) {
            sb2.append('0');
        }
        sb2.append(i11);
    }

    @Override
    public String d() throws NotFoundException {
        if (c().m() != 84) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb2 = new StringBuilder();
        f(sb2, 8);
        j(sb2, 48, 20);
        k(sb2, 68);
        return sb2.toString();
    }

    @Override
    protected void h(StringBuilder sb2, int i10) {
        sb2.append('(');
        sb2.append(this.f32102d);
        sb2.append(i10 / DefaultOggSeeker.MATCH_BYTE_RANGE);
        sb2.append(')');
    }

    @Override
    protected int i(int i10) {
        return i10 % DefaultOggSeeker.MATCH_BYTE_RANGE;
    }
}
