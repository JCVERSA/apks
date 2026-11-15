package d2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.x;
import androidx.media3.exoplayer.i;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.x3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public final class c extends i implements Handler.Callback {
    private x A;
    private long B;

    private final a f58836r;

    private final b f58837s;

    private final Handler f58838t;

    private final t2.b f58839u;

    private final boolean f58840v;

    private t2.a f58841w;

    private boolean f58842x;

    private boolean f58843y;

    private long f58844z;

    public c(b bVar, Looper looper) {
        this(bVar, looper, a.f58835a);
    }

    private void Q(x xVar, List list) {
        for (int i10 = 0; i10 < xVar.e(); i10++) {
            r wrappedMetadataFormat = xVar.d(i10).getWrappedMetadataFormat();
            if (wrappedMetadataFormat == null || !this.f58836r.a(wrappedMetadataFormat)) {
                list.add(xVar.d(i10));
            } else {
                t2.a aVarB = this.f58836r.b(wrappedMetadataFormat);
                byte[] bArr = (byte[]) androidx.media3.common.util.a.e(xVar.d(i10).getWrappedMetadataBytes());
                this.f58839u.clear();
                this.f58839u.b(bArr.length);
                ((ByteBuffer) a1.i(this.f58839u.f10606c)).put(bArr);
                this.f58839u.d();
                x xVarA = aVarB.a(this.f58839u);
                if (xVarA != null) {
                    Q(xVarA, list);
                }
            }
        }
    }

    private long R(long j10) {
        androidx.media3.common.util.a.g(j10 != C.TIME_UNSET);
        androidx.media3.common.util.a.g(this.B != C.TIME_UNSET);
        return j10 - this.B;
    }

    private void S(x xVar) {
        Handler handler = this.f58838t;
        if (handler != null) {
            handler.obtainMessage(1, xVar).sendToTarget();
        } else {
            T(xVar);
        }
    }

    private void T(x xVar) {
        this.f58837s.onMetadata(xVar);
    }

    private boolean U(long j10) {
        boolean z10;
        x xVar = this.A;
        if (xVar == null || (!this.f58840v && xVar.f10246b > R(j10))) {
            z10 = false;
        } else {
            S(this.A);
            this.A = null;
            z10 = true;
        }
        if (this.f58842x && this.A == null) {
            this.f58843y = true;
        }
        return z10;
    }

    private void V() {
        if (this.f58842x || this.A != null) {
            return;
        }
        this.f58839u.clear();
        s2 s2VarU = u();
        int iN = N(s2VarU, this.f58839u, 0);
        if (iN != -4) {
            if (iN == -5) {
                this.f58844z = ((r) androidx.media3.common.util.a.e(s2VarU.f12258b)).f9854t;
                return;
            }
            return;
        }
        if (this.f58839u.isEndOfStream()) {
            this.f58842x = true;
            return;
        }
        if (this.f58839u.f10608e >= w()) {
            t2.b bVar = this.f58839u;
            bVar.f72467i = this.f58844z;
            bVar.d();
            x xVarA = ((t2.a) a1.i(this.f58841w)).a(this.f58839u);
            if (xVarA != null) {
                ArrayList arrayList = new ArrayList(xVarA.e());
                Q(xVarA, arrayList);
                if (arrayList.isEmpty()) {
                    return;
                }
                this.A = new x(R(this.f58839u.f10608e), arrayList);
            }
        }
    }

    @Override
    protected void C() {
        this.A = null;
        this.f58841w = null;
        this.B = C.TIME_UNSET;
    }

    @Override
    protected void F(long j10, boolean z10) {
        this.A = null;
        this.f58842x = false;
        this.f58843y = false;
    }

    @Override
    protected void L(r[] rVarArr, long j10, long j11, androidx.media3.exoplayer.source.r.b bVar) {
        this.f58841w = this.f58836r.b(rVarArr[0]);
        x xVar = this.A;
        if (xVar != null) {
            this.A = xVar.c((xVar.f10246b + this.B) - j11);
        }
        this.B = j11;
    }

    @Override
    public int a(r rVar) {
        if (this.f58836r.a(rVar)) {
            return x3.a(rVar.N == 0 ? 4 : 2);
        }
        return x3.a(0);
    }

    @Override
    public String getName() {
        return "MetadataRenderer";
    }

    @Override
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            throw new IllegalStateException();
        }
        T((x) message.obj);
        return true;
    }

    @Override
    public boolean isEnded() {
        return this.f58843y;
    }

    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    public void render(long j10, long j11) {
        boolean zU = true;
        while (zU) {
            V();
            zU = U(j10);
        }
    }

    public c(b bVar, Looper looper, a aVar) {
        this(bVar, looper, aVar, false);
    }

    public c(b bVar, Looper looper, a aVar, boolean z10) {
        super(5);
        this.f58837s = (b) androidx.media3.common.util.a.e(bVar);
        this.f58838t = looper == null ? null : a1.z(looper, this);
        this.f58836r = (a) androidx.media3.common.util.a.e(aVar);
        this.f58840v = z10;
        this.f58839u = new t2.b();
        this.B = C.TIME_UNSET;
    }
}
