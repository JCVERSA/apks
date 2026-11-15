package androidx.media3.exoplayer.audio;

public final class k {

    public static final k f10885d = new b().d();

    public final boolean f10886a;

    public final boolean f10887b;

    public final boolean f10888c;

    public static final class b {

        private boolean f10889a;

        private boolean f10890b;

        private boolean f10891c;

        public k d() {
            if (this.f10889a || !(this.f10890b || this.f10891c)) {
                return new k(this);
            }
            throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupported is false");
        }

        public b e(boolean z10) {
            this.f10889a = z10;
            return this;
        }

        public b f(boolean z10) {
            this.f10890b = z10;
            return this;
        }

        public b g(boolean z10) {
            this.f10891c = z10;
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return this.f10886a == kVar.f10886a && this.f10887b == kVar.f10887b && this.f10888c == kVar.f10888c;
    }

    public int hashCode() {
        return ((this.f10886a ? 1 : 0) << 2) + ((this.f10887b ? 1 : 0) << 1) + (this.f10888c ? 1 : 0);
    }

    private k(b bVar) {
        this.f10886a = bVar.f10889a;
        this.f10887b = bVar.f10890b;
        this.f10888c = bVar.f10891c;
    }
}
