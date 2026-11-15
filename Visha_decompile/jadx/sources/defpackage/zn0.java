package defpackage;

import android.net.Uri;
import com.google.android.exoplayer2.source.UnrecognizedInputFormatException;
import com.google.android.exoplayer2.source.l;
import java.io.EOFException;
import java.util.Map;

public final class zn0 implements l {
    public final uk3 a;
    public nk3 b;
    public pk3 c;

    public zn0(uk3 uk3Var) {
        this.a = uk3Var;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0046  */
    @Override
    public void a(ms1 ms1Var, Uri uri, Map map, long j, long j2, qk3 qk3Var) throws UnrecognizedInputFormatException {
        i12 i12Var = new i12(ms1Var, j, j2);
        this.c = i12Var;
        if (this.b != null) {
            return;
        }
        nk3[] nk3VarArrCreateExtractors = this.a.createExtractors(uri, map);
        if (nk3VarArrCreateExtractors.length == 1) {
            this.b = nk3VarArrCreateExtractors[0];
        } else {
            for (nk3 nk3Var : nk3VarArrCreateExtractors) {
                try {
                    if (nk3Var.c(i12Var)) {
                        this.b = nk3Var;
                        zi.g(true);
                        i12Var.resetPeekPosition();
                        break;
                    } else {
                        boolean z = this.b != null || i12Var.getPosition() == j;
                        zi.g(z);
                        i12Var.resetPeekPosition();
                    }
                } catch (EOFException unused) {
                    if (this.b != null || i12Var.getPosition() == j) {
                    }
                } catch (Throwable th) {
                    zi.g(this.b != null || i12Var.getPosition() == j);
                    i12Var.resetPeekPosition();
                    throw th;
                }
                zi.g(z);
                i12Var.resetPeekPosition();
            }
            if (this.b == null) {
                throw new UnrecognizedInputFormatException("None of the available extractors (" + blb.G(nk3VarArrCreateExtractors) + ") could read the stream.", (Uri) zi.e(uri));
            }
        }
        this.b.a(qk3Var);
    }

    @Override
    public int b(id8 id8Var) {
        return ((nk3) zi.e(this.b)).b((pk3) zi.e(this.c), id8Var);
    }

    @Override
    public void disableSeekingOnMp3Streams() {
        nk3 nk3Var = this.b;
        if (nk3Var instanceof kr6) {
            ((kr6) nk3Var).i();
        }
    }

    @Override
    public long getCurrentInputPosition() {
        pk3 pk3Var = this.c;
        if (pk3Var != null) {
            return pk3Var.getPosition();
        }
        return -1L;
    }

    @Override
    public void release() {
        nk3 nk3Var = this.b;
        if (nk3Var != null) {
            nk3Var.release();
            this.b = null;
        }
        this.c = null;
    }

    @Override
    public void seek(long j, long j2) {
        ((nk3) zi.e(this.b)).seek(j, j2);
    }
}
