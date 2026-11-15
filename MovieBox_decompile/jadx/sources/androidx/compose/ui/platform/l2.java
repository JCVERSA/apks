package androidx.compose.ui.platform;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.sequences.Sequence;

public final class l2 implements Sequence {

    private final List f5532a = new ArrayList();

    public final void b(String str, Object obj) {
        this.f5532a.add(new k2(str, obj));
    }

    @Override
    public Iterator iterator() {
        return this.f5532a.iterator();
    }
}
