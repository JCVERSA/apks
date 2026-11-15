package com.facebook.ads.redexgen.core;

public class OC extends QT {
    public static String[] A01 = {"LeWmJ2AEMrGR8tgfwsG9m8UwM76zwmUz", "6Bm", "ck2sw", "Oj1Ntvfg6dck0NxJmQASjzaKZXVqT4Sf", "CtYf7ZmPdO", "plI1JnuA", "RZR4g54lk6KTwqItkRA6ECctcTUw", "cGd5igXf7vOVCpmuGQi5cRxrBgQCM2pW"};
    public final C05290h A00;

    public OC(C05290h c05290h) {
        this.A00 = c05290h;
    }

    @Override
    public final void A0L(C06826g c06826g, int i) {
        int iA25;
        InterfaceC1373Xu interfaceC1373Xu;
        super.A0L(c06826g, i);
        C1815gI linearLayoutManager = this.A00.getLayoutManager();
        if (linearLayoutManager != null && (iA25 = linearLayoutManager.A25()) >= 0) {
            C05290h c05290h = this.A00;
            int scrollPosition = A01[3].charAt(13);
            if (scrollPosition == 48) {
                throw new RuntimeException();
            }
            A01[5] = "JmqJ93Os7fwoNBdh";
            if (c05290h.getAdapter() == null || iA25 >= this.A00.getAdapter().A0B() || (interfaceC1373Xu = (InterfaceC1373Xu) c06826g.A1F(iA25)) == null) {
                return;
            }
            interfaceC1373Xu.AIV();
        }
    }
}
