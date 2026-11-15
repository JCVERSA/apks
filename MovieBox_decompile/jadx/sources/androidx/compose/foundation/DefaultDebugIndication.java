package androidx.compose.foundation;

import androidx.compose.ui.graphics.u1;
import com.vungle.ads.internal.protos.Sdk$SDKError;

final class DefaultDebugIndication implements b0 {

    public static final DefaultDebugIndication f2270a = new DefaultDebugIndication();

    static final class DefaultDebugIndicationInstance extends androidx.compose.ui.f.c implements androidx.compose.ui.node.n {

        private final p.g f2271n;

        private boolean f2272o;

        private boolean f2273p;

        private boolean f2274q;

        public DefaultDebugIndicationInstance(p.g gVar) {
            this.f2271n = gVar;
        }

        @Override
        public void m1() {
            kotlinx.coroutines.k.d(c1(), null, null, new DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(this, null), 3, null);
        }

        @Override
        public void n(z.c cVar) {
            cVar.X0();
            if (this.f2272o) {
                z.f.j(cVar, u1.k(u1.f4349b.a(), 0.3f, 0.0f, 0.0f, 0.0f, 14, null), 0L, cVar.i(), 0.0f, null, null, 0, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, null);
            } else if (this.f2273p || this.f2274q) {
                z.f.j(cVar, u1.k(u1.f4349b.a(), 0.1f, 0.0f, 0.0f, 0.0f, 14, null), 0L, cVar.i(), 0.0f, null, null, 0, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, null);
            }
        }

        @Override
        public void w0() {
            androidx.compose.ui.node.m.a(this);
        }
    }

    private DefaultDebugIndication() {
    }

    @Override
    public y a(p.g gVar, androidx.compose.runtime.i iVar, int i10) {
        return w.a(this, gVar, iVar, i10);
    }

    @Override
    public androidx.compose.ui.node.f b(p.g gVar) {
        return new DefaultDebugIndicationInstance(gVar);
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public int hashCode() {
        return -1;
    }
}
