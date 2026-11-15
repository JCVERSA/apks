package b2;

import androidx.media3.exoplayer.offline.q;
import java.util.Collections;
import java.util.List;

public abstract class d implements q {

    public final String f15504a;

    public final List f15505b;

    public final boolean f15506c;

    protected d(String str, List list, boolean z10) {
        this.f15504a = str;
        this.f15505b = Collections.unmodifiableList(list);
        this.f15506c = z10;
    }
}
