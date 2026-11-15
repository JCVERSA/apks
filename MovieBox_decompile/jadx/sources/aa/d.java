package aa;

import java.util.Collections;
import java.util.List;

public abstract class d implements com.google.android.exoplayer2.offline.c {

    public final String f260a;

    public final List f261b;

    public final boolean f262c;

    protected d(String str, List list, boolean z10) {
        this.f260a = str;
        this.f261b = Collections.unmodifiableList(list);
        this.f262c = z10;
    }
}
