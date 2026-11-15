package defpackage;

import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.List;

public final class h1i implements Comparable {
    public long c = C.TIME_UNSET;
    public final List b = new ArrayList();

    @Override
    public final int compareTo(Object obj) {
        return Long.compare(this.c, ((h1i) obj).c);
    }
}
