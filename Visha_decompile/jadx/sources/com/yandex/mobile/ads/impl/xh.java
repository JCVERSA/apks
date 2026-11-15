package com.yandex.mobile.ads.impl;

import java.util.Collections;

final class xh extends e42 {
    private static final int[] e = {5512, 11025, 22050, 44100};
    private boolean b;
    private boolean c;
    private int d;

    public xh(a62 a62Var) {
        super(a62Var);
    }

    public final boolean a(ag1 ag1Var) throws e42.a {
        if (this.b) {
            ag1Var.f(1);
        } else {
            int iT = ag1Var.t();
            int i = (iT >> 4) & 15;
            this.d = i;
            if (i == 2) {
                this.a.a(new jc0.a().e("audio/mpeg").c(1).l(e[(iT >> 2) & 3]).a());
                this.c = true;
            } else if (i == 7 || i == 8) {
                this.a.a(new jc0.a().e(i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw").c(1).l(8000).a());
                this.c = true;
            } else if (i != 10) {
                throw new e42.a("Audio format not supported: " + this.d);
            }
            this.b = true;
        }
        return true;
    }

    public final boolean a(long j, ag1 ag1Var) throws eg1 {
        if (this.d == 2) {
            int iA = ag1Var.a();
            this.a.a(iA, ag1Var);
            this.a.a(j, 1, iA, 0, null);
            return true;
        }
        int iT = ag1Var.t();
        if (iT == 0 && !this.c) {
            int iA2 = ag1Var.a();
            byte[] bArr = new byte[iA2];
            ag1Var.a(bArr, 0, iA2);
            e.a aVarA = e.a(new zf1(iA2, bArr), false);
            this.a.a(new jc0.a().e("audio/mp4a-latm").a(aVarA.c).c(aVarA.b).l(aVarA.a).a(Collections.singletonList(bArr)).a());
            this.c = true;
            return false;
        }
        if (this.d == 10 && iT != 1) {
            return false;
        }
        int iA3 = ag1Var.a();
        this.a.a(iA3, ag1Var);
        this.a.a(j, 1, iA3, 0, null);
        return true;
    }
}
