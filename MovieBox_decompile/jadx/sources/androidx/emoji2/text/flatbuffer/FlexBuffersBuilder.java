package androidx.emoji2.text.flatbuffer;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;

public class FlexBuffersBuilder {

    private final d f8764a;

    private final ArrayList f8765b;

    private final HashMap f8766c;

    private final HashMap f8767d;

    private final int f8768e;

    private boolean f8769f;

    private Comparator f8770g;

    private static class a {
    }

    public FlexBuffersBuilder(int i10) {
        this(new androidx.emoji2.text.flatbuffer.a(i10), 1);
    }

    public FlexBuffersBuilder() {
        this(256);
    }

    public FlexBuffersBuilder(d dVar, int i10) {
        this.f8765b = new ArrayList();
        this.f8766c = new HashMap();
        this.f8767d = new HashMap();
        this.f8769f = false;
        this.f8770g = new Comparator<a>() {
            @Override
            public int compare(a aVar, a aVar2) {
                android.support.v4.media.session.c.a(aVar);
                android.support.v4.media.session.c.a(aVar2);
                return compare2((a) null, (a) null);
            }

            public int compare2(a aVar, a aVar2) {
                throw null;
            }
        };
        this.f8764a = dVar;
        this.f8768e = i10;
    }
}
