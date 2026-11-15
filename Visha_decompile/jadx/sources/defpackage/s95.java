package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;

public final class s95 implements nk3 {
    public qk3 b;
    public int c;
    public int d;
    public int e;
    public MotionPhotoMetadata g;
    public pk3 h;
    public lw9 i;
    public qr6 j;
    public final qw7 a = new qw7(6);
    public long f = -1;

    public static MotionPhotoMetadata f(String str, long j) {
        er6 er6VarA;
        if (j == -1 || (er6VarA = bsc.a(str)) == null) {
            return null;
        }
        return er6VarA.a(j);
    }

    @Override
    public void a(qk3 qk3Var) {
        this.b = qk3Var;
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) {
        int i = this.c;
        if (i == 0) {
            i(pk3Var);
            return 0;
        }
        if (i == 1) {
            k(pk3Var);
            return 0;
        }
        if (i == 2) {
            j(pk3Var);
            return 0;
        }
        if (i == 4) {
            long position = pk3Var.getPosition();
            long j = this.f;
            if (position != j) {
                id8Var.a = j;
                return 1;
            }
            l(pk3Var);
            return 0;
        }
        if (i != 5) {
            if (i == 6) {
                return -1;
            }
            throw new IllegalStateException();
        }
        if (this.i == null || pk3Var != this.h) {
            this.h = pk3Var;
            this.i = new lw9(pk3Var, this.f);
        }
        int iB = ((qr6) zi.e(this.j)).b(this.i, id8Var);
        if (iB == 1) {
            id8Var.a += this.f;
        }
        return iB;
    }

    @Override
    public boolean c(pk3 pk3Var) {
        if (h(pk3Var) != 65496) {
            return false;
        }
        int iH = h(pk3Var);
        this.d = iH;
        if (iH == 65504) {
            d(pk3Var);
            this.d = h(pk3Var);
        }
        if (this.d != 65505) {
            return false;
        }
        pk3Var.advancePeekPosition(2);
        this.a.K(6);
        pk3Var.peekFully(this.a.d(), 0, 6);
        return this.a.E() == 1165519206 && this.a.I() == 0;
    }

    public final void d(pk3 pk3Var) {
        this.a.K(2);
        pk3Var.peekFully(this.a.d(), 0, 2);
        pk3Var.advancePeekPosition(this.a.I() - 2);
    }

    public final void e() {
        g(new Metadata.Entry[0]);
        ((qk3) zi.e(this.b)).endTracks();
        this.b.d(new ja9.b(C.TIME_UNSET));
        this.c = 6;
    }

    public final void g(Metadata.Entry... entryArr) {
        ((qk3) zi.e(this.b)).track(1024, 4).b(new k.b().K("image/jpeg").X(new Metadata(entryArr)).E());
    }

    public final int h(pk3 pk3Var) {
        this.a.K(2);
        pk3Var.peekFully(this.a.d(), 0, 2);
        return this.a.I();
    }

    public final void i(pk3 pk3Var) {
        this.a.K(2);
        pk3Var.readFully(this.a.d(), 0, 2);
        int I = this.a.I();
        this.d = I;
        if (I == 65498) {
            if (this.f != -1) {
                this.c = 4;
                return;
            } else {
                e();
                return;
            }
        }
        if ((I < 65488 || I > 65497) && I != 65281) {
            this.c = 1;
        }
    }

    public final void j(pk3 pk3Var) {
        String strW;
        if (this.d == 65505) {
            qw7 qw7Var = new qw7(this.e);
            pk3Var.readFully(qw7Var.d(), 0, this.e);
            if (this.g == null && "http://ns.adobe.com/xap/1.0/".equals(qw7Var.w()) && (strW = qw7Var.w()) != null) {
                MotionPhotoMetadata motionPhotoMetadataF = f(strW, pk3Var.getLength());
                this.g = motionPhotoMetadataF;
                if (motionPhotoMetadataF != null) {
                    this.f = motionPhotoMetadataF.videoStartPosition;
                }
            }
        } else {
            pk3Var.skipFully(this.e);
        }
        this.c = 0;
    }

    public final void k(pk3 pk3Var) {
        this.a.K(2);
        pk3Var.readFully(this.a.d(), 0, 2);
        this.e = this.a.I() - 2;
        this.c = 2;
    }

    public final void l(pk3 pk3Var) {
        if (!pk3Var.peekFully(this.a.d(), 0, 1, true)) {
            e();
            return;
        }
        pk3Var.resetPeekPosition();
        if (this.j == null) {
            this.j = new qr6();
        }
        lw9 lw9Var = new lw9(pk3Var, this.f);
        this.i = lw9Var;
        if (!this.j.c(lw9Var)) {
            e();
        } else {
            this.j.a(new mw9(this.f, (qk3) zi.e(this.b)));
            m();
        }
    }

    public final void m() {
        g((Metadata.Entry) zi.e(this.g));
        this.c = 5;
    }

    @Override
    public void release() {
        qr6 qr6Var = this.j;
        if (qr6Var != null) {
            qr6Var.release();
        }
    }

    @Override
    public void seek(long j, long j2) {
        if (j == 0) {
            this.c = 0;
            this.j = null;
        } else if (this.c == 5) {
            ((qr6) zi.e(this.j)).seek(j, j2);
        }
    }
}
