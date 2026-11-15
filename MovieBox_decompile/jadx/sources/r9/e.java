package r9;

import com.google.android.exoplayer2.util.d0;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggPageHeader;
import i9.m;
import i9.o;
import java.util.Arrays;

final class e {

    private final f f70891a = new f();

    private final d0 f70892b = new d0(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);

    private int f70893c = -1;

    private int f70894d;

    private boolean f70895e;

    e() {
    }

    private int a(int i10) {
        int i11;
        int i12 = 0;
        this.f70894d = 0;
        do {
            int i13 = this.f70894d;
            int i14 = i10 + i13;
            f fVar = this.f70891a;
            if (i14 >= fVar.f70902g) {
                break;
            }
            int[] iArr = fVar.f70905j;
            this.f70894d = i13 + 1;
            i11 = iArr[i13 + i10];
            i12 += i11;
        } while (i11 == 255);
        return i12;
    }

    public f b() {
        return this.f70891a;
    }

    public d0 c() {
        return this.f70892b;
    }

    public boolean d(m mVar) {
        int i10;
        com.google.android.exoplayer2.util.a.g(mVar != null);
        if (this.f70895e) {
            this.f70895e = false;
            this.f70892b.L(0);
        }
        while (!this.f70895e) {
            if (this.f70893c < 0) {
                if (!this.f70891a.c(mVar) || !this.f70891a.a(mVar, true)) {
                    return false;
                }
                f fVar = this.f70891a;
                int iA = fVar.f70903h;
                if ((fVar.f70897b & 1) == 1 && this.f70892b.f() == 0) {
                    iA += a(0);
                    i10 = this.f70894d;
                } else {
                    i10 = 0;
                }
                if (!o.e(mVar, iA)) {
                    return false;
                }
                this.f70893c = i10;
            }
            int iA2 = a(this.f70893c);
            int i11 = this.f70893c + this.f70894d;
            if (iA2 > 0) {
                d0 d0Var = this.f70892b;
                d0Var.c(d0Var.f() + iA2);
                if (!o.d(mVar, this.f70892b.d(), this.f70892b.f(), iA2)) {
                    return false;
                }
                d0 d0Var2 = this.f70892b;
                d0Var2.O(d0Var2.f() + iA2);
                this.f70895e = this.f70891a.f70905j[i11 + (-1)] != 255;
            }
            if (i11 == this.f70891a.f70902g) {
                i11 = -1;
            }
            this.f70893c = i11;
        }
        return true;
    }

    public void e() {
        this.f70891a.b();
        this.f70892b.L(0);
        this.f70893c = -1;
        this.f70895e = false;
    }

    public void f() {
        if (this.f70892b.d().length == 65025) {
            return;
        }
        d0 d0Var = this.f70892b;
        d0Var.N(Arrays.copyOf(d0Var.d(), Math.max(OggPageHeader.MAX_PAGE_PAYLOAD, this.f70892b.f())), this.f70892b.f());
    }
}
