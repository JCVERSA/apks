package t;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableList;

public interface f extends d, b {

    public interface a extends List, Collection, KMutableCollection, KMutableList {
        f build();
    }

    @Override
    f add(int i10, Object obj);

    @Override
    f add(Object obj);

    @Override
    f addAll(Collection collection);

    a builder();

    f d(int i10);

    f k(Function1 function1);

    @Override
    f remove(Object obj);

    @Override
    f removeAll(Collection collection);

    @Override
    f set(int i10, Object obj);
}
