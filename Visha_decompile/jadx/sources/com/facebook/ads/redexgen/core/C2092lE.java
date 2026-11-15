package com.facebook.ads.redexgen.core;

import java.io.IOException;

public final class C2092lE implements GP {
    public static String[] A03 = {"Qzrb2NyX11iip4M0Dun9HjrVhDBjGiaF", "S4lxERGEQHczdoRlIRLlXReEKfWFWSGc", "txU8e6wljbe290bqTydjfEMDFUDvEmx5", "ZB68ibpDVF3DEFIIdRwQIG37zRUG2jhG", "NKfzuQ6LKFKezVni40AKhLW9Qs", "gUOm4cnsv29C5J2bDVOWEpGrIAhYUn7e", "xRx4EoAOCCZ90h8tA3pJ1YmFxzetviZR", "6LlO7okteSZZNTbDPWq3J1SHLhykMwkf"};
    public final int A00;
    public final C0922Gc A01;
    public final C0927Gh A02;

    @Override
    public final void AFA() {
    }

    public C2092lE(C0927Gh c0927Gh, int i) {
        this.A02 = c0927Gh;
        this.A00 = i;
        this.A01 = new C0922Gc();
    }

    private long A00(InterfaceC2101lN interfaceC2101lN) throws IOException {
        while (interfaceC2101lN.A8a() < interfaceC2101lN.A8G() - 6 && !AbstractC0923Gd.A09(interfaceC2101lN, this.A02, this.A00, this.A01)) {
            String[] strArr = A03;
            if (strArr[1].charAt(7) == strArr[7].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[6] = "MdA2mB0qiCN7NKRKcBY3aVGEnEzRIKP4";
            strArr2[3] = "Kp5wPJFyOGMB7tBJUi3Fl7WX9iQtExSk";
            interfaceC2101lN.A3z(1);
        }
        if (interfaceC2101lN.A8a() >= interfaceC2101lN.A8G() - 6) {
            interfaceC2101lN.A3z((int) (interfaceC2101lN.A8G() - interfaceC2101lN.A8a()));
            return this.A02.A09;
        }
        return this.A01.A00;
    }

    @Override
    public final GN AIC(InterfaceC2101lN interfaceC2101lN, long j) throws IOException {
        long rightFrameFirstSampleNumber = interfaceC2101lN.A8f();
        long leftFrameFirstSampleNumber = A00(interfaceC2101lN);
        long jA8a = interfaceC2101lN.A8a();
        interfaceC2101lN.A3z(Math.max(6, this.A02.A06));
        long searchPosition = A00(interfaceC2101lN);
        long leftFramePosition = interfaceC2101lN.A8a();
        if (leftFrameFirstSampleNumber <= j && searchPosition > j) {
            return GN.A03(jA8a);
        }
        if (searchPosition <= j) {
            return GN.A05(searchPosition, leftFramePosition);
        }
        return GN.A04(leftFrameFirstSampleNumber, rightFrameFirstSampleNumber);
    }
}
