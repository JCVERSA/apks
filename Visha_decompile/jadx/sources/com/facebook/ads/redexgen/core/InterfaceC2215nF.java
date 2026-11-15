package com.facebook.ads.redexgen.core;

import android.os.Looper;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.List;

public interface InterfaceC2215nF extends InterfaceC05902s, CX, ET, C9Q {

    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Temporary Noop Implementation until we completely migrate")
    public static final InterfaceC2215nF A00 = new InterfaceC2215nF() {
        @Override
        public final void ACv(C2261o0 c2261o0) {
        }

        @Override
        public final void ACw(List list) {
        }

        @Override
        public final void AD6(int i, C2159mL c2159mL, CG cg) {
        }

        @Override
        public final void ADw(int i, C2159mL c2159mL, CE ce, CG cg) {
        }

        @Override
        public final void ADy(int i, C2159mL c2159mL, CE ce, CG cg, Object obj, Object obj2) {
        }

        @Override
        public final void AE1(int i, C2159mL c2159mL, CE ce, CG cg, IOException iOException, boolean z) {
        }

        @Override
        public final void AEb(C2296ob c2296ob) {
        }

        @Override
        public final void AEd(C2298od c2298od) {
        }

        @Override
        public final void AEf(boolean z, int i) {
        }

        @Override
        public final void AFB() {
        }

        @Override
        public final void AFQ(Timeline timeline, int i) {
            AbstractC05892r.A00(this, timeline, i);
        }

        @Override
        public final void AFU(C2267o6 c2267o6) {
        }

        @Override
        public final void AC5() {
        }

        @Override
        public final void AIv(InterfaceC05972z interfaceC05972z, Looper looper) {
        }
    };

    void AC5();

    void AIv(InterfaceC05972z interfaceC05972z, Looper looper);
}
