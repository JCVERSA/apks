package defpackage;

import defpackage.rie;
import java.util.Comparator;

public final class rie {
    public static final Comparator c = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return Integer.compare(((rie) obj).a.b, ((rie) obj2).a.b);
        }
    };
    public final sie a;
    public final int b;

    public rie(sie sieVar, int i, vie vieVar) {
        this.a = sieVar;
        this.b = i;
    }
}
