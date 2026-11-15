package n9;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.a0;
import i9.b0;
import i9.l;
import i9.m;
import i9.n;
import q9.k;

public final class a implements l {

    private n f66958b;

    private int f66959c;

    private int f66960d;

    private int f66961e;

    private MotionPhotoMetadata f66963g;

    private m f66964h;

    private c f66965i;

    private k f66966j;

    private final d0 f66957a = new d0(6);

    private long f66962f = -1;

    private void a(m mVar) {
        this.f66957a.L(2);
        mVar.peekFully(this.f66957a.d(), 0, 2);
        mVar.advancePeekPosition(this.f66957a.J() - 2);
    }

    private void e() {
        g(new Metadata.Entry[0]);
        ((n) com.google.android.exoplayer2.util.a.e(this.f66958b)).endTracks();
        this.f66958b.g(new b0.b(C.TIME_UNSET));
        this.f66959c = 6;
    }

    private static MotionPhotoMetadata f(String str, long j10) {
        b bVarA;
        if (j10 == -1 || (bVarA = e.a(str)) == null) {
            return null;
        }
        return bVarA.a(j10);
    }

    private void g(Metadata.Entry... entryArr) {
        ((n) com.google.android.exoplayer2.util.a.e(this.f66958b)).track(1024, 4).d(new p1.b().K("image/jpeg").X(new Metadata(entryArr)).E());
    }

    private int h(m mVar) {
        this.f66957a.L(2);
        mVar.peekFully(this.f66957a.d(), 0, 2);
        return this.f66957a.J();
    }

    private void i(m mVar) {
        this.f66957a.L(2);
        mVar.readFully(this.f66957a.d(), 0, 2);
        int iJ = this.f66957a.J();
        this.f66960d = iJ;
        if (iJ == 65498) {
            if (this.f66962f != -1) {
                this.f66959c = 4;
                return;
            } else {
                e();
                return;
            }
        }
        if ((iJ < 65488 || iJ > 65497) && iJ != 65281) {
            this.f66959c = 1;
        }
    }

    private void j(m mVar) {
        String strX;
        if (this.f66960d == 65505) {
            d0 d0Var = new d0(this.f66961e);
            mVar.readFully(d0Var.d(), 0, this.f66961e);
            if (this.f66963g == null && "http://ns.adobe.com/xap/1.0/".equals(d0Var.x()) && (strX = d0Var.x()) != null) {
                MotionPhotoMetadata motionPhotoMetadataF = f(strX, mVar.getLength());
                this.f66963g = motionPhotoMetadataF;
                if (motionPhotoMetadataF != null) {
                    this.f66962f = motionPhotoMetadataF.videoStartPosition;
                }
            }
        } else {
            mVar.skipFully(this.f66961e);
        }
        this.f66959c = 0;
    }

    private void k(m mVar) {
        this.f66957a.L(2);
        mVar.readFully(this.f66957a.d(), 0, 2);
        this.f66961e = this.f66957a.J() - 2;
        this.f66959c = 2;
    }

    private void l(m mVar) {
        if (!mVar.peekFully(this.f66957a.d(), 0, 1, true)) {
            e();
            return;
        }
        mVar.resetPeekPosition();
        if (this.f66966j == null) {
            this.f66966j = new k();
        }
        c cVar = new c(mVar, this.f66962f);
        this.f66965i = cVar;
        if (!this.f66966j.c(cVar)) {
            e();
        } else {
            this.f66966j.b(new d(this.f66962f, (n) com.google.android.exoplayer2.util.a.e(this.f66958b)));
            m();
        }
    }

    private void m() {
        g((Metadata.Entry) com.google.android.exoplayer2.util.a.e(this.f66963g));
        this.f66959c = 5;
    }

    @Override
    public void b(n nVar) {
        this.f66958b = nVar;
    }

    @Override
    public boolean c(m mVar) {
        if (h(mVar) != 65496) {
            return false;
        }
        int iH = h(mVar);
        this.f66960d = iH;
        if (iH == 65504) {
            a(mVar);
            this.f66960d = h(mVar);
        }
        if (this.f66960d != 65505) {
            return false;
        }
        mVar.advancePeekPosition(2);
        this.f66957a.L(6);
        mVar.peekFully(this.f66957a.d(), 0, 6);
        return this.f66957a.F() == 1165519206 && this.f66957a.J() == 0;
    }

    @Override
    public int d(m mVar, a0 a0Var) {
        int i10 = this.f66959c;
        if (i10 == 0) {
            i(mVar);
            return 0;
        }
        if (i10 == 1) {
            k(mVar);
            return 0;
        }
        if (i10 == 2) {
            j(mVar);
            return 0;
        }
        if (i10 == 4) {
            long position = mVar.getPosition();
            long j10 = this.f66962f;
            if (position != j10) {
                a0Var.f61884a = j10;
                return 1;
            }
            l(mVar);
            return 0;
        }
        if (i10 != 5) {
            if (i10 == 6) {
                return -1;
            }
            throw new IllegalStateException();
        }
        if (this.f66965i == null || mVar != this.f66964h) {
            this.f66964h = mVar;
            this.f66965i = new c(mVar, this.f66962f);
        }
        int iD = ((k) com.google.android.exoplayer2.util.a.e(this.f66966j)).d(this.f66965i, a0Var);
        if (iD == 1) {
            a0Var.f61884a += this.f66962f;
        }
        return iD;
    }

    @Override
    public void release() {
        k kVar = this.f66966j;
        if (kVar != null) {
            kVar.release();
        }
    }

    @Override
    public void seek(long j10, long j11) {
        if (j10 == 0) {
            this.f66959c = 0;
            this.f66966j = null;
        } else if (this.f66959c == 5) {
            ((k) com.google.android.exoplayer2.util.a.e(this.f66966j)).seek(j10, j11);
        }
    }
}
