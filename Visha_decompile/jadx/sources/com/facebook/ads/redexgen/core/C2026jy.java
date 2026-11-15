package com.facebook.ads.redexgen.core;

import android.net.Uri;
import androidx.media3.common.C;
import java.io.IOException;
import java.util.Map;

public final class C2026jy implements GX {
    public static String[] A03 = {"MPtFkEiIPrQJk6C68eapJqoHhp6zbLCW", "P1eCuU1JvuL46IL3Xh4EOSVLMCcJCOjT", "W4WpROs4sm5j6Tf0ztR0Y16lEj4WGQ", "4wLB1kD6U2fJ8LvWKaQYimBngFnzynrL", "j1g6H1G7HHWswscQmxGermXRDRDROF5f", "vYNShvJ8K3s57yIlGqGLfJHMZKUSU02I", "LyEFdcIU17ooQUQ0BZMXWJLXZvdofmIX", "P7XGal"};
    public static final InterfaceC0921Gb A04 = new InterfaceC0921Gb() {
        @Override
        public final GX[] A5F() {
            return C2026jy.A00();
        }

        @Override
        public final GX[] A5G(Uri uri, Map map) {
            return AbstractC0920Ga.A01(this, uri, map);
        }
    };
    public boolean A00;
    public final C2025jx A02 = new C2025jx();
    public final C4J A01 = new C4J(16384);

    public static GX[] A00() {
        return new GX[]{new C2026jy()};
    }

    @Override
    public final void AA4(GY gy) {
        this.A02.A5U(gy, new C1027Ke(0, 1));
        gy.A6G();
        gy.AIN(new C2096lI(C.TIME_UNSET));
    }

    @Override
    public final int AGb(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        int i = interfaceC2101lN.read(this.A01.A0l(), 0, 16384);
        if (i == -1) {
            return -1;
        }
        this.A01.A0f(0);
        this.A01.A0e(i);
        if (!this.A00) {
            this.A02.AG6(0L, 4);
            this.A00 = true;
        }
        this.A02.A52(this.A01);
        return 0;
    }

    @Override
    public final void AGr() {
    }

    @Override
    public final void AIM(long j, long j2) {
        this.A00 = false;
        this.A02.AIL();
    }

    @Override
    public final boolean AJL(InterfaceC2101lN interfaceC2101lN) throws IOException {
        C4J c4j = new C4J(10);
        int length = 0;
        while (true) {
            byte[] bArrA0l = c4j.A0l();
            if (A03[3].charAt(10) != 'f') {
                throw new RuntimeException();
            }
            A03[3] = "dKI30oOFAvfBQiacazr45UFgS6k9aj5a";
            interfaceC2101lN.AG9(bArrA0l, 0, 10);
            c4j.A0f(0);
            if (c4j.A0K() != 4801587) {
                interfaceC2101lN.AI1();
                interfaceC2101lN.A3z(length);
                int i = length;
                int syncBytes = 0;
                while (true) {
                    interfaceC2101lN.AG9(c4j.A0l(), 0, 7);
                    c4j.A0f(0);
                    int headerPosition = c4j.A0M();
                    if (headerPosition != 44096 && headerPosition != 44097) {
                        syncBytes = 0;
                        interfaceC2101lN.AI1();
                        i++;
                        if (i - length >= 8192) {
                            return false;
                        }
                        interfaceC2101lN.A3z(i);
                    } else {
                        syncBytes++;
                        if (syncBytes >= 4) {
                            return true;
                        }
                        int headerPosition2 = GI.A02(c4j.A0l(), headerPosition);
                        if (headerPosition2 == -1) {
                            return false;
                        }
                        interfaceC2101lN.A3z(headerPosition2 - 7);
                    }
                }
            } else {
                c4j.A0g(3);
                int iA0H = c4j.A0H();
                length += iA0H + 10;
                interfaceC2101lN.A3z(iA0H);
            }
        }
    }
}
