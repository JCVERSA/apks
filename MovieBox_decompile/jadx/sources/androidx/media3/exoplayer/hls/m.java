package androidx.media3.exoplayer.hls;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.s2;

final class m implements f2.u {

    private final int f11473a;

    private final r f11474b;

    private int f11475c = -1;

    public m(r rVar, int i10) {
        this.f11474b = rVar;
        this.f11473a = i10;
    }

    private boolean b() {
        int i10 = this.f11475c;
        return (i10 == -1 || i10 == -3 || i10 == -2) ? false : true;
    }

    public void a() {
        androidx.media3.common.util.a.a(this.f11475c == -1);
        this.f11475c = this.f11474b.l(this.f11473a);
    }

    @Override
    public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        if (this.f11475c == -3) {
            decoderInputBuffer.addFlag(4);
            return -4;
        }
        if (b()) {
            return this.f11474b.W(this.f11475c, s2Var, decoderInputBuffer, i10);
        }
        return -3;
    }

    public void d() {
        if (this.f11475c != -1) {
            this.f11474b.h0(this.f11473a);
            this.f11475c = -1;
        }
    }

    @Override
    public boolean isReady() {
        return this.f11475c == -3 || (b() && this.f11474b.G(this.f11475c));
    }

    @Override
    public void maybeThrowError() throws SampleQueueMappingException {
        int i10 = this.f11475c;
        if (i10 == -2) {
            throw new SampleQueueMappingException(this.f11474b.getTrackGroups().b(this.f11473a).a(0).f9849o);
        }
        if (i10 == -1) {
            this.f11474b.L();
        } else if (i10 != -3) {
            this.f11474b.M(i10);
        }
    }

    @Override
    public int skipData(long j10) {
        if (b()) {
            return this.f11474b.g0(this.f11475c, j10);
        }
        return 0;
    }
}
