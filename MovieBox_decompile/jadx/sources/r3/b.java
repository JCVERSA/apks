package r3;

import android.net.Uri;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
import java.util.Map;

public final class b implements k2.r {

    public static final k2.x f70405d = new k2.x() {
        @Override
        public k2.x a(h3.s.a aVar) {
            return k2.w.d(this, aVar);
        }

        @Override
        public k2.x b(int i10) {
            return k2.w.b(this, i10);
        }

        @Override
        public k2.r[] c(Uri uri, Map map) {
            return k2.w.a(this, uri, map);
        }

        @Override
        public final k2.r[] createExtractors() {
            return b.g();
        }

        @Override
        public k2.x d(boolean z10) {
            return k2.w.c(this, z10);
        }
    };

    private final c f70406a = new c(MimeTypes.AUDIO_AC3);

    private final androidx.media3.common.util.j0 f70407b = new androidx.media3.common.util.j0(2786);

    private boolean f70408c;

    public static k2.r[] g() {
        return new k2.r[]{new b()};
    }

    @Override
    public boolean b(k2.s sVar) {
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(10);
        int i10 = 0;
        while (true) {
            sVar.peekFully(j0Var.e(), 0, 10);
            j0Var.W(0);
            if (j0Var.K() != 4801587) {
                break;
            }
            j0Var.X(3);
            int iG = j0Var.G();
            i10 += iG + 10;
            sVar.advancePeekPosition(iG);
        }
        sVar.resetPeekPosition();
        sVar.advancePeekPosition(i10);
        int i11 = 0;
        int i12 = i10;
        while (true) {
            sVar.peekFully(j0Var.e(), 0, 6);
            j0Var.W(0);
            if (j0Var.P() != 2935) {
                sVar.resetPeekPosition();
                i12++;
                if (i12 - i10 >= 8192) {
                    return false;
                }
                sVar.advancePeekPosition(i12);
                i11 = 0;
            } else {
                i11++;
                if (i11 >= 4) {
                    return true;
                }
                int iG2 = k2.b.g(j0Var.e());
                if (iG2 == -1) {
                    return false;
                }
                sVar.advancePeekPosition(iG2 - 6);
            }
        }
    }

    @Override
    public k2.r c() {
        return k2.q.b(this);
    }

    @Override
    public int d(k2.s sVar, k2.l0 l0Var) {
        int i10 = sVar.read(this.f70407b.e(), 0, 2786);
        if (i10 == -1) {
            return -1;
        }
        this.f70407b.W(0);
        this.f70407b.V(i10);
        if (!this.f70408c) {
            this.f70406a.c(0L, 4);
            this.f70408c = true;
        }
        this.f70406a.a(this.f70407b);
        return 0;
    }

    @Override
    public void e(k2.t tVar) {
        this.f70406a.e(tVar, new l0.d(0, 1));
        tVar.endTracks();
        tVar.d(new k2.m0.b(C.TIME_UNSET));
    }

    @Override
    public List f() {
        return k2.q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        this.f70408c = false;
        this.f70406a.seek();
    }

    @Override
    public void release() {
    }
}
