package j2;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.i;
import androidx.media3.exoplayer.x3;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;

public final class b extends i {

    private final DecoderInputBuffer f62874r;

    private final j0 f62875s;

    private a f62876t;

    private long f62877u;

    public b() {
        super(6);
        this.f62874r = new DecoderInputBuffer(1);
        this.f62875s = new j0();
    }

    private float[] Q(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f62875s.U(byteBuffer.array(), byteBuffer.limit());
        this.f62875s.W(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i10 = 0; i10 < 3; i10++) {
            fArr[i10] = Float.intBitsToFloat(this.f62875s.u());
        }
        return fArr;
    }

    private void R() {
        a aVar = this.f62876t;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override
    protected void C() {
        R();
    }

    @Override
    protected void F(long j10, boolean z10) {
        this.f62877u = Long.MIN_VALUE;
        R();
    }

    @Override
    public int a(r rVar) {
        return MimeTypes.APPLICATION_CAMERA_MOTION.equals(rVar.f9849o) ? x3.a(4) : x3.a(0);
    }

    @Override
    public String getName() {
        return "CameraMotionRenderer";
    }

    @Override
    public void handleMessage(int i10, Object obj) {
        if (i10 == 8) {
            this.f62876t = (a) obj;
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
    public void render(long j10, long j11) {
        while (!hasReadStreamToEnd() && this.f62877u < 100000 + j10) {
            this.f62874r.clear();
            if (N(u(), this.f62874r, 0) != -4 || this.f62874r.isEndOfStream()) {
                return;
            }
            long j12 = this.f62874r.f10608e;
            this.f62877u = j12;
            boolean z10 = j12 < w();
            if (this.f62876t != null && !z10) {
                this.f62874r.d();
                float[] fArrQ = Q((ByteBuffer) a1.i(this.f62874r.f10606c));
                if (fArrQ != null) {
                    ((a) a1.i(this.f62876t)).a(this.f62877u - z(), fArrQ);
                }
            }
        }
    }
}
