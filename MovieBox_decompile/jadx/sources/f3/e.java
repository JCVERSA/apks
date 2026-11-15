package f3;

import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggPageHeader;
import java.util.Arrays;
import k2.s;
import k2.u;

final class e {

    private final f f59994a = new f();

    private final j0 f59995b = new j0(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);

    private int f59996c = -1;

    private int f59997d;

    private boolean f59998e;

    e() {
    }

    private int a(int i10) {
        int i11;
        int i12 = 0;
        this.f59997d = 0;
        do {
            int i13 = this.f59997d;
            int i14 = i10 + i13;
            f fVar = this.f59994a;
            if (i14 >= fVar.f60005g) {
                break;
            }
            int[] iArr = fVar.f60008j;
            this.f59997d = i13 + 1;
            i11 = iArr[i13 + i10];
            i12 += i11;
        } while (i11 == 255);
        return i12;
    }

    public f b() {
        return this.f59994a;
    }

    public j0 c() {
        return this.f59995b;
    }

    public boolean d(s sVar) {
        int i10;
        androidx.media3.common.util.a.g(sVar != null);
        if (this.f59998e) {
            this.f59998e = false;
            this.f59995b.S(0);
        }
        while (!this.f59998e) {
            if (this.f59996c < 0) {
                if (!this.f59994a.c(sVar) || !this.f59994a.a(sVar, true)) {
                    return false;
                }
                f fVar = this.f59994a;
                int iA = fVar.f60006h;
                if ((fVar.f60000b & 1) == 1 && this.f59995b.g() == 0) {
                    iA += a(0);
                    i10 = this.f59997d;
                } else {
                    i10 = 0;
                }
                if (!u.e(sVar, iA)) {
                    return false;
                }
                this.f59996c = i10;
            }
            int iA2 = a(this.f59996c);
            int i11 = this.f59996c + this.f59997d;
            if (iA2 > 0) {
                j0 j0Var = this.f59995b;
                j0Var.c(j0Var.g() + iA2);
                if (!u.d(sVar, this.f59995b.e(), this.f59995b.g(), iA2)) {
                    return false;
                }
                j0 j0Var2 = this.f59995b;
                j0Var2.V(j0Var2.g() + iA2);
                this.f59998e = this.f59994a.f60008j[i11 + (-1)] != 255;
            }
            if (i11 == this.f59994a.f60005g) {
                i11 = -1;
            }
            this.f59996c = i11;
        }
        return true;
    }

    public void e() {
        this.f59994a.b();
        this.f59995b.S(0);
        this.f59996c = -1;
        this.f59998e = false;
    }

    public void f() {
        if (this.f59995b.e().length == 65025) {
            return;
        }
        j0 j0Var = this.f59995b;
        j0Var.U(Arrays.copyOf(j0Var.e(), Math.max(OggPageHeader.MAX_PAGE_PAYLOAD, this.f59995b.g())), this.f59995b.g());
    }
}
