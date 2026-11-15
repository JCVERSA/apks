package f2;

import android.net.Uri;
import androidx.media3.exoplayer.source.UnrecognizedInputFormatException;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import java.io.EOFException;
import java.util.Map;
import k2.l0;

public final class b implements androidx.media3.exoplayer.source.v {

    private final k2.x f59898a;

    private k2.r f59899b;

    private k2.s f59900c;

    public b(k2.x xVar) {
        this.f59898a = xVar;
    }

    public static String f(k2.r rVar) {
        return rVar.c().getClass().getSimpleName();
    }

    @Override
    public void a() {
        k2.r rVar = this.f59899b;
        if (rVar == null) {
            return;
        }
        k2.r rVarC = rVar.c();
        if (rVarC instanceof d3.f) {
            ((d3.f) rVarC).k();
        }
    }

    @Override
    public long b() {
        k2.s sVar = this.f59900c;
        if (sVar != null) {
            return sVar.getPosition();
        }
        return -1L;
    }

    @Override
    public int c(l0 l0Var) {
        return ((k2.r) androidx.media3.common.util.a.e(this.f59899b)).d((k2.s) androidx.media3.common.util.a.e(this.f59900c), l0Var);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0052  */
    @Override
    public void d(androidx.media3.common.j jVar, Uri uri, Map map, long j10, long j11, k2.t tVar) throws UnrecognizedInputFormatException {
        k2.j jVar2 = new k2.j(jVar, j10, j11);
        this.f59900c = jVar2;
        if (this.f59899b != null) {
            return;
        }
        k2.r[] rVarArrC = this.f59898a.c(uri, map);
        ImmutableList.a aVarBuilderWithExpectedSize = ImmutableList.builderWithExpectedSize(rVarArrC.length);
        if (rVarArrC.length == 1) {
            this.f59899b = rVarArrC[0];
        } else {
            for (k2.r rVar : rVarArrC) {
                try {
                    if (rVar.b(jVar2)) {
                        this.f59899b = rVar;
                        androidx.media3.common.util.a.g(true);
                        jVar2.resetPeekPosition();
                        break;
                    } else {
                        aVarBuilderWithExpectedSize.l(rVar.f());
                        boolean z10 = this.f59899b != null || jVar2.getPosition() == j10;
                        androidx.media3.common.util.a.g(z10);
                        jVar2.resetPeekPosition();
                    }
                } catch (EOFException unused) {
                    if (this.f59899b != null || jVar2.getPosition() == j10) {
                    }
                } catch (Throwable th2) {
                    androidx.media3.common.util.a.g(this.f59899b != null || jVar2.getPosition() == j10);
                    jVar2.resetPeekPosition();
                    throw th2;
                }
                androidx.media3.common.util.a.g(z10);
                jVar2.resetPeekPosition();
            }
            if (this.f59899b == null) {
                throw new UnrecognizedInputFormatException("None of the available extractors (" + com.google.common.base.g.h(", ").d(Lists.o(ImmutableList.copyOf(rVarArrC), new com.google.common.base.f() {
                    @Override
                    public final Object apply(Object obj) {
                        return b.f((k2.r) obj);
                    }
                })) + ") could read the stream.", (Uri) androidx.media3.common.util.a.e(uri), aVarBuilderWithExpectedSize.e());
            }
        }
        this.f59899b.e(tVar);
    }

    @Override
    public void release() {
        k2.r rVar = this.f59899b;
        if (rVar != null) {
            rVar.release();
            this.f59899b = null;
        }
        this.f59900c = null;
    }

    @Override
    public void seek(long j10, long j11) {
        ((k2.r) androidx.media3.common.util.a.e(this.f59899b)).seek(j10, j11);
    }
}
