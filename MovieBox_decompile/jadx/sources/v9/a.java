package v9;

import android.net.Uri;
import com.google.android.exoplayer2.source.UnrecognizedInputFormatException;
import com.google.android.exoplayer2.util.p0;
import i9.a0;
import java.io.EOFException;
import java.util.Map;

public final class a implements com.google.android.exoplayer2.source.r {

    private final i9.r f73482a;

    private i9.l f73483b;

    private i9.m f73484c;

    public a(i9.r rVar) {
        this.f73482a = rVar;
    }

    @Override
    public void a() {
        i9.l lVar = this.f73483b;
        if (lVar instanceof p9.f) {
            ((p9.f) lVar).i();
        }
    }

    @Override
    public long b() {
        i9.m mVar = this.f73484c;
        if (mVar != null) {
            return mVar.getPosition();
        }
        return -1L;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0046  */
    @Override
    public void c(com.google.android.exoplayer2.upstream.g gVar, Uri uri, Map map, long j10, long j11, i9.n nVar) throws UnrecognizedInputFormatException {
        i9.f fVar = new i9.f(gVar, j10, j11);
        this.f73484c = fVar;
        if (this.f73483b != null) {
            return;
        }
        i9.l[] lVarArrC = this.f73482a.c(uri, map);
        if (lVarArrC.length == 1) {
            this.f73483b = lVarArrC[0];
        } else {
            for (i9.l lVar : lVarArrC) {
                try {
                    if (lVar.c(fVar)) {
                        this.f73483b = lVar;
                        com.google.android.exoplayer2.util.a.g(true);
                        fVar.resetPeekPosition();
                        break;
                    } else {
                        boolean z10 = this.f73483b != null || fVar.getPosition() == j10;
                        com.google.android.exoplayer2.util.a.g(z10);
                        fVar.resetPeekPosition();
                    }
                } catch (EOFException unused) {
                    if (this.f73483b != null || fVar.getPosition() == j10) {
                    }
                } catch (Throwable th2) {
                    com.google.android.exoplayer2.util.a.g(this.f73483b != null || fVar.getPosition() == j10);
                    fVar.resetPeekPosition();
                    throw th2;
                }
                com.google.android.exoplayer2.util.a.g(z10);
                fVar.resetPeekPosition();
            }
            if (this.f73483b == null) {
                throw new UnrecognizedInputFormatException("None of the available extractors (" + p0.M(lVarArrC) + ") could read the stream.", (Uri) com.google.android.exoplayer2.util.a.e(uri));
            }
        }
        this.f73483b.b(nVar);
    }

    @Override
    public int d(a0 a0Var) {
        return ((i9.l) com.google.android.exoplayer2.util.a.e(this.f73483b)).d((i9.m) com.google.android.exoplayer2.util.a.e(this.f73484c), a0Var);
    }

    @Override
    public void release() {
        i9.l lVar = this.f73483b;
        if (lVar != null) {
            lVar.release();
            this.f73483b = null;
        }
        this.f73484c = null;
    }

    @Override
    public void seek(long j10, long j11) {
        ((i9.l) com.google.android.exoplayer2.util.a.e(this.f73483b)).seek(j10, j11);
    }
}
