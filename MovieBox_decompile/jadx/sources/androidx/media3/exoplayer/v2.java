package androidx.media3.exoplayer;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;

public final class v2 {

    public final long f12738a;

    public final float f12739b;

    public final long f12740c;

    public static final class b {

        private long f12741a;

        private float f12742b;

        private long f12743c;

        public v2 d() {
            return new v2(this);
        }

        public b e(long j10) {
            androidx.media3.common.util.a.a(j10 >= 0 || j10 == C.TIME_UNSET);
            this.f12743c = j10;
            return this;
        }

        public b f(long j10) {
            this.f12741a = j10;
            return this;
        }

        public b g(float f10) {
            androidx.media3.common.util.a.a(f10 > 0.0f || f10 == -3.4028235E38f);
            this.f12742b = f10;
            return this;
        }

        public b() {
            this.f12741a = C.TIME_UNSET;
            this.f12742b = -3.4028235E38f;
            this.f12743c = C.TIME_UNSET;
        }

        private b(v2 v2Var) {
            this.f12741a = v2Var.f12738a;
            this.f12742b = v2Var.f12739b;
            this.f12743c = v2Var.f12740c;
        }
    }

    public b a() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v2)) {
            return false;
        }
        v2 v2Var = (v2) obj;
        return this.f12738a == v2Var.f12738a && this.f12739b == v2Var.f12739b && this.f12740c == v2Var.f12740c;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.f12738a), Float.valueOf(this.f12739b), Long.valueOf(this.f12740c));
    }

    private v2(b bVar) {
        this.f12738a = bVar.f12741a;
        this.f12739b = bVar.f12742b;
        this.f12740c = bVar.f12743c;
    }
}
