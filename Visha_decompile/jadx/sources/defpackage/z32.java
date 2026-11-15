package defpackage;

import java.util.List;

public final class z32 implements uu8 {
    @Override
    public boolean a(List list, List list2) {
        y45.j(list, "senders");
        y45.j(list2, "failedSenders");
        return list.size() == list2.size() && !list.isEmpty();
    }
}
