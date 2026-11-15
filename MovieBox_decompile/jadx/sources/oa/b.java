package oa;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.z2;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;

public final class b extends h {

    private final DecoderInputBuffer f67717n;

    private final d0 f67718o;

    private long f67719p;

    private a f67720q;

    private long f67721r;

    public b() {
        super(6);
        this.f67717n = new DecoderInputBuffer(1);
        this.f67718o = new d0();
    }

    private void A() {
        a aVar = this.f67720q;
        if (aVar != null) {
            aVar.b();
        }
    }

    private float[] z(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f67718o.N(byteBuffer.array(), byteBuffer.limit());
        this.f67718o.P(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i10 = 0; i10 < 3; i10++) {
            fArr[i10] = Float.intBitsToFloat(this.f67718o.q());
        }
        return fArr;
    }

    @Override
    public int a(p1 p1Var) {
        return MimeTypes.APPLICATION_CAMERA_MOTION.equals(p1Var.f24901l) ? z2.a(4) : z2.a(0);
    }

    @Override
    public String getName() {
        return "CameraMotionRenderer";
    }

    @Override
    public void handleMessage(int i10, Object obj) {
        if (i10 == 8) {
            this.f67720q = (a) obj;
        } else {
            super.handleMessage(i10, obj);
        }
    }

    @Override
    public boolean isEnded() {
        return hasReadStreamToEnd();
    }

    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    protected void p() {
        A();
    }

    @Override
    protected void r(long j10, boolean z10) {
        this.f67721r = Long.MIN_VALUE;
        A();
    }

    @Override
    public void render(long j10, long j11) {
        while (!hasReadStreamToEnd() && this.f67721r < 100000 + j10) {
            this.f67717n.b();
            if (w(k(), this.f67717n, 0) != -4 || this.f67717n.h()) {
                return;
            }
            DecoderInputBuffer decoderInputBuffer = this.f67717n;
            this.f67721r = decoderInputBuffer.f24204e;
            if (this.f67720q != null && !decoderInputBuffer.g()) {
                this.f67717n.n();
                float[] fArrZ = z((ByteBuffer) p0.j(this.f67717n.f24202c));
                if (fArrZ != null) {
                    ((a) p0.j(this.f67720q)).a(this.f67721r - this.f67719p, fArrZ);
                }
            }
        }
    }

    @Override
    protected void v(p1[] p1VarArr, long j10, long j11) {
        this.f67719p = j11;
    }
}
