package com.facebook.ads.redexgen.core;

import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;

public final class AnonymousClass95 implements InterfaceC2051kN {
    public static String[] A05 = {"09FvAMDbH0ybjBvy7etGUlmvLnEax64M", "9UhXzLA65KAjnLS2nIkoWygikqgIUMi6", "7x5jjcV5dGluzAi4xLXm7mPjpISGuC5w", "OMb242EU3cjCZF5lkBhqnraDuTpVEe8I", "YkwDHYmprJhwUHAQbO7ClYxi5co4mZVB", "F0wri1MO2ggHk2Yd2fKtZmsEqFQ1SY6P", "VahsyjeijnOod8dsGLMZVGg77qfAqG3R", "hv5jyUmHRXfPhpozztfXRSgwdurH1xzL"};
    public int A00;
    public boolean A01;
    public final J5 A02 = new J5();
    public final C07117j A03 = new C07117j();
    public final Deque<AbstractC07107i> A04 = new ArrayDeque();

    public AnonymousClass95() {
        for (int i = 0; i < 2; i++) {
            this.A04.addFirst(new AbstractC07107i() {
                @Override
                public final void A0B() {
                    this.A00.A04(this);
                }
            });
        }
        this.A00 = 0;
    }

    @Override
    public final C07117j A5j() throws C2050kM {
        C3M.A08(!this.A01);
        if (this.A00 != 0) {
            return null;
        }
        this.A00 = 1;
        return this.A03;
    }

    @Override
    public final AbstractC07107i A5l() throws C2050kM {
        C3M.A08(!this.A01);
        if (this.A00 != 2 || this.A04.isEmpty()) {
            return null;
        }
        AbstractC07107i abstractC07107iRemoveFirst = this.A04.removeFirst();
        if (this.A03.A05()) {
            String[] strArr = A05;
            if (strArr[5].charAt(13) == strArr[0].charAt(13)) {
                throw new RuntimeException();
            }
            A05[4] = "JYyYZLdoMjCFjS6FBvPaG66m4kKjUjXi";
            abstractC07107iRemoveFirst.A00(4);
        } else {
            abstractC07107iRemoveFirst.A0C(this.A03.A01, new C2146m7(this.A03.A01, this.A02.A02(((ByteBuffer) C3M.A01(this.A03.A02)).array())), 0L);
        }
        this.A03.A0A();
        this.A00 = 0;
        return abstractC07107iRemoveFirst;
    }

    @Override
    public final void AGZ(C07117j c07117j) throws C2050kM {
        C3M.A08(!this.A01);
        C3M.A08(this.A00 == 1);
        C3M.A07(this.A03 == c07117j);
        this.A00 = 2;
    }

    public void A04(AbstractC07107i abstractC07107i) {
        C3M.A08(this.A04.size() < 2);
        C3M.A07(!this.A04.contains(abstractC07107i));
        abstractC07107i.A0A();
        this.A04.addFirst(abstractC07107i);
    }

    @Override
    public final void AGr() {
        this.A01 = true;
    }

    @Override
    public final void AIx(long j) {
    }

    @Override
    public final void flush() {
        C3M.A08(!this.A01);
        this.A03.A0A();
        this.A00 = 0;
    }
}
