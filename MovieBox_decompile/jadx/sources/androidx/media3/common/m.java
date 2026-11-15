package androidx.media3.common;

import androidx.media3.common.util.a1;
import java.util.Objects;

public final class m {

    public static final m f9786e = new b(0).e();

    private static final String f9787f = a1.C0(0);

    private static final String f9788g = a1.C0(1);

    private static final String f9789h = a1.C0(2);

    private static final String f9790i = a1.C0(3);

    public final int f9791a;

    public final int f9792b;

    public final int f9793c;

    public final String f9794d;

    public static final class b {

        private final int f9795a;

        private int f9796b;

        private int f9797c;

        private String f9798d;

        public b(int i10) {
            this.f9795a = i10;
        }

        public m e() {
            androidx.media3.common.util.a.a(this.f9796b <= this.f9797c);
            return new m(this);
        }

        public b f(int i10) {
            this.f9797c = i10;
            return this;
        }

        public b g(int i10) {
            this.f9796b = i10;
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f9791a == mVar.f9791a && this.f9792b == mVar.f9792b && this.f9793c == mVar.f9793c && Objects.equals(this.f9794d, mVar.f9794d);
    }

    public int hashCode() {
        int i10 = (((((527 + this.f9791a) * 31) + this.f9792b) * 31) + this.f9793c) * 31;
        String str = this.f9794d;
        return i10 + (str == null ? 0 : str.hashCode());
    }

    private m(b bVar) {
        this.f9791a = bVar.f9795a;
        this.f9792b = bVar.f9796b;
        this.f9793c = bVar.f9797c;
        this.f9794d = bVar.f9798d;
    }
}
