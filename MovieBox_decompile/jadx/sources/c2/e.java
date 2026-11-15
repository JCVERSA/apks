package c2;

import android.graphics.Bitmap;
import androidx.media3.common.r;
import androidx.media3.common.util.q0;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.i;
import androidx.media3.exoplayer.image.ImageDecoderException;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.x3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;

public class e extends i {
    private int A;
    private r B;
    private c C;
    private DecoderInputBuffer D;
    private ImageOutput E;
    private Bitmap F;
    private boolean G;
    private b H;
    private b I;
    private int J;
    private boolean K;

    private final c.a f16387r;

    private final DecoderInputBuffer f16388s;

    private final ArrayDeque f16389t;

    private boolean f16390u;

    private boolean f16391v;

    private a f16392w;

    private long f16393x;

    private long f16394y;

    private int f16395z;

    private static final class a {

        public static final a f16396c = new a(C.TIME_UNSET, C.TIME_UNSET);

        public final long f16397a;

        public final long f16398b;

        public a(long j10, long j11) {
            this.f16397a = j10;
            this.f16398b = j11;
        }
    }

    private static class b {

        private final int f16399a;

        private final long f16400b;

        private Bitmap f16401c;

        public b(int i10, long j10) {
            this.f16399a = i10;
            this.f16400b = j10;
        }

        public long a() {
            return this.f16400b;
        }

        public Bitmap b() {
            return this.f16401c;
        }

        public int c() {
            return this.f16399a;
        }

        public boolean d() {
            return this.f16401c != null;
        }

        public void e(Bitmap bitmap) {
            this.f16401c = bitmap;
        }
    }

    public e(c.a aVar, ImageOutput imageOutput) {
        super(4);
        this.f16387r = aVar;
        this.E = U(imageOutput);
        this.f16388s = DecoderInputBuffer.f();
        this.f16392w = a.f16396c;
        this.f16389t = new ArrayDeque();
        this.f16394y = C.TIME_UNSET;
        this.f16393x = C.TIME_UNSET;
        this.f16395z = 0;
        this.A = 1;
    }

    private boolean Q(r rVar) {
        int iA = this.f16387r.a(rVar);
        return iA == x3.a(4) || iA == x3.a(3);
    }

    private Bitmap R(int i10) {
        androidx.media3.common.util.a.i(this.F);
        int width = this.F.getWidth() / ((r) androidx.media3.common.util.a.i(this.B)).L;
        int height = this.F.getHeight() / ((r) androidx.media3.common.util.a.i(this.B)).M;
        int i11 = this.B.L;
        return Bitmap.createBitmap(this.F, (i10 % i11) * width, (i10 / i11) * height, width, height);
    }

    private boolean S(long j10, long j11) throws ExoPlaybackException {
        if (this.F != null && this.H == null) {
            return false;
        }
        if (this.A == 0 && getState() != 2) {
            return false;
        }
        if (this.F == null) {
            androidx.media3.common.util.a.i(this.C);
            d dVarDequeueOutputBuffer = this.C.dequeueOutputBuffer();
            if (dVarDequeueOutputBuffer == null) {
                return false;
            }
            if (((d) androidx.media3.common.util.a.i(dVarDequeueOutputBuffer)).isEndOfStream()) {
                if (this.f16395z == 3) {
                    c0();
                    androidx.media3.common.util.a.i(this.B);
                    Y();
                } else {
                    ((d) androidx.media3.common.util.a.i(dVarDequeueOutputBuffer)).release();
                    if (this.f16389t.isEmpty()) {
                        this.f16391v = true;
                    }
                }
                return false;
            }
            androidx.media3.common.util.a.j(dVarDequeueOutputBuffer.f16386a, "Non-EOS buffer came back from the decoder without bitmap.");
            this.F = dVarDequeueOutputBuffer.f16386a;
            ((d) androidx.media3.common.util.a.i(dVarDequeueOutputBuffer)).release();
        }
        if (!this.G || this.F == null || this.H == null) {
            return false;
        }
        androidx.media3.common.util.a.i(this.B);
        r rVar = this.B;
        int i10 = rVar.L;
        boolean z10 = ((i10 == 1 && rVar.M == 1) || i10 == -1 || rVar.M == -1) ? false : true;
        if (!this.H.d()) {
            b bVar = this.H;
            bVar.e(z10 ? R(bVar.c()) : (Bitmap) androidx.media3.common.util.a.i(this.F));
        }
        if (!b0(j10, j11, (Bitmap) androidx.media3.common.util.a.i(this.H.b()), this.H.a())) {
            return false;
        }
        a0(((b) androidx.media3.common.util.a.i(this.H)).a());
        this.A = 3;
        if (!z10 || ((b) androidx.media3.common.util.a.i(this.H)).c() == (((r) androidx.media3.common.util.a.i(this.B)).M * ((r) androidx.media3.common.util.a.i(this.B)).L) - 1) {
            this.F = null;
        }
        this.H = this.I;
        this.I = null;
        return true;
    }

    private boolean T(long j10) {
        if (this.G && this.H != null) {
            return false;
        }
        s2 s2VarU = u();
        c cVar = this.C;
        if (cVar == null || this.f16395z == 3 || this.f16390u) {
            return false;
        }
        if (this.D == null) {
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) cVar.dequeueInputBuffer();
            this.D = decoderInputBuffer;
            if (decoderInputBuffer == null) {
                return false;
            }
        }
        if (this.f16395z == 2) {
            androidx.media3.common.util.a.i(this.D);
            this.D.setFlags(4);
            ((c) androidx.media3.common.util.a.i(this.C)).b(this.D);
            this.D = null;
            this.f16395z = 3;
            return false;
        }
        int iN = N(s2VarU, this.D, 0);
        if (iN == -5) {
            this.B = (r) androidx.media3.common.util.a.i(s2VarU.f12258b);
            this.K = true;
            this.f16395z = 2;
            return true;
        }
        if (iN != -4) {
            if (iN == -3) {
                return false;
            }
            throw new IllegalStateException();
        }
        this.D.d();
        ByteBuffer byteBuffer = this.D.f10606c;
        boolean z10 = (byteBuffer != null && byteBuffer.remaining() > 0) || ((DecoderInputBuffer) androidx.media3.common.util.a.i(this.D)).isEndOfStream();
        if (z10) {
            ((c) androidx.media3.common.util.a.i(this.C)).b((DecoderInputBuffer) androidx.media3.common.util.a.i(this.D));
            this.J = 0;
        }
        X(j10, (DecoderInputBuffer) androidx.media3.common.util.a.i(this.D));
        if (((DecoderInputBuffer) androidx.media3.common.util.a.i(this.D)).isEndOfStream()) {
            this.f16390u = true;
            this.D = null;
            return false;
        }
        this.f16394y = Math.max(this.f16394y, ((DecoderInputBuffer) androidx.media3.common.util.a.i(this.D)).f10608e);
        if (z10) {
            this.D = null;
        } else {
            ((DecoderInputBuffer) androidx.media3.common.util.a.i(this.D)).clear();
        }
        return !this.G;
    }

    private static ImageOutput U(ImageOutput imageOutput) {
        return imageOutput == null ? ImageOutput.f11718a : imageOutput;
    }

    private boolean V(b bVar) {
        return ((r) androidx.media3.common.util.a.i(this.B)).L == -1 || this.B.M == -1 || bVar.c() == (((r) androidx.media3.common.util.a.i(this.B)).M * this.B.L) - 1;
    }

    private void W(int i10) {
        this.A = Math.min(this.A, i10);
    }

    private void X(long j10, DecoderInputBuffer decoderInputBuffer) {
        boolean z10 = true;
        if (decoderInputBuffer.isEndOfStream()) {
            this.G = true;
            return;
        }
        b bVar = new b(this.J, decoderInputBuffer.f10608e);
        this.I = bVar;
        this.J++;
        if (!this.G) {
            long jA = bVar.a();
            boolean z11 = jA - 30000 <= j10 && j10 <= 30000 + jA;
            b bVar2 = this.H;
            boolean z12 = bVar2 != null && bVar2.a() <= j10 && j10 < jA;
            boolean zV = V((b) androidx.media3.common.util.a.i(this.I));
            if (!z11 && !z12 && !zV) {
                z10 = false;
            }
            this.G = z10;
            if (z12 && !z11) {
                return;
            }
        }
        this.H = this.I;
        this.I = null;
    }

    private boolean Y() throws ExoPlaybackException {
        if (!Z()) {
            return false;
        }
        if (!this.K) {
            return true;
        }
        if (!Q((r) androidx.media3.common.util.a.e(this.B))) {
            throw q(new ImageDecoderException("Provided decoder factory can't create decoder for format."), this.B, 4005);
        }
        c cVar = this.C;
        if (cVar != null) {
            cVar.release();
        }
        this.C = this.f16387r.b();
        this.K = false;
        return true;
    }

    private void a0(long j10) {
        this.f16393x = j10;
        while (!this.f16389t.isEmpty() && j10 >= ((a) this.f16389t.peek()).f16397a) {
            this.f16392w = (a) this.f16389t.removeFirst();
        }
    }

    private void c0() {
        this.D = null;
        this.f16395z = 0;
        this.f16394y = C.TIME_UNSET;
        c cVar = this.C;
        if (cVar != null) {
            cVar.release();
            this.C = null;
        }
    }

    private void d0(ImageOutput imageOutput) {
        this.E = U(imageOutput);
    }

    private boolean e0() {
        boolean z10 = getState() == 2;
        int i10 = this.A;
        if (i10 == 0) {
            return z10;
        }
        if (i10 == 1) {
            return true;
        }
        if (i10 == 3) {
            return false;
        }
        throw new IllegalStateException();
    }

    @Override
    protected void C() {
        this.B = null;
        this.f16392w = a.f16396c;
        this.f16389t.clear();
        c0();
        this.E.a();
    }

    @Override
    protected void D(boolean z10, boolean z11) {
        this.A = z11 ? 1 : 0;
    }

    @Override
    protected void F(long j10, boolean z10) {
        W(1);
        this.f16391v = false;
        this.f16390u = false;
        this.F = null;
        this.H = null;
        this.I = null;
        this.G = false;
        this.D = null;
        c cVar = this.C;
        if (cVar != null) {
            cVar.flush();
        }
        this.f16389t.clear();
    }

    @Override
    protected void G() {
        c0();
    }

    @Override
    protected void I() {
        c0();
        W(1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
    
        if (r2 >= r5) goto L14;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void L(r[] rVarArr, long j10, long j11, androidx.media3.exoplayer.source.r.b bVar) {
        super.L(rVarArr, j10, j11, bVar);
        if (this.f16392w.f16398b != C.TIME_UNSET) {
            if (this.f16389t.isEmpty()) {
                long j12 = this.f16394y;
                if (j12 != C.TIME_UNSET) {
                    long j13 = this.f16393x;
                    if (j13 != C.TIME_UNSET) {
                    }
                }
            }
            this.f16389t.add(new a(this.f16394y, j11));
            return;
        }
        this.f16392w = new a(C.TIME_UNSET, j11);
    }

    protected boolean Z() {
        return true;
    }

    @Override
    public int a(r rVar) {
        return this.f16387r.a(rVar);
    }

    protected boolean b0(long j10, long j11, Bitmap bitmap, long j12) {
        long j13 = j12 - j10;
        if (!e0() && j13 >= 30000) {
            return false;
        }
        this.E.onImageAvailable(j12 - this.f16392w.f16398b, bitmap);
        return true;
    }

    @Override
    public String getName() {
        return "ImageRenderer";
    }

    @Override
    public void handleMessage(int i10, Object obj) {
        if (i10 != 15) {
            super.handleMessage(i10, obj);
        } else {
            d0(obj instanceof ImageOutput ? (ImageOutput) obj : null);
        }
    }

    @Override
    public boolean isEnded() {
        return this.f16391v;
    }

    @Override
    public boolean isReady() {
        int i10 = this.A;
        return i10 == 3 || (i10 == 0 && this.G);
    }

    @Override
    public void render(long j10, long j11) throws ExoPlaybackException {
        if (this.f16391v) {
            return;
        }
        if (this.B == null) {
            s2 s2VarU = u();
            this.f16388s.clear();
            int iN = N(s2VarU, this.f16388s, 2);
            if (iN != -5) {
                if (iN == -4) {
                    androidx.media3.common.util.a.g(this.f16388s.isEndOfStream());
                    this.f16390u = true;
                    this.f16391v = true;
                    return;
                }
                return;
            }
            this.B = (r) androidx.media3.common.util.a.i(s2VarU.f12258b);
            this.K = true;
        }
        if (this.C != null || Y()) {
            try {
                q0.a("drainAndFeedDecoder");
                while (S(j10, j11)) {
                }
                while (T(j10)) {
                }
                q0.b();
            } catch (ImageDecoderException e10) {
                throw q(e10, null, 4003);
            }
        }
    }
}
