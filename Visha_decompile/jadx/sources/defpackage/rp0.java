package defpackage;

import com.google.android.exoplayer2.upstream.b;

public interface rp0 {
    public static final rp0 a = new rp0() {
        @Override
        public final String a(b bVar) {
            return rp0.b(bVar);
        }
    };

    static String b(b bVar) {
        String str = bVar.i;
        return str != null ? str : bVar.a.toString();
    }

    String a(b bVar);
}
