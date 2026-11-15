package defpackage;

import com.google.common.collect.Range;
import java.util.Set;

public interface un8 {
    Set asRanges();

    un8 complement();

    boolean encloses(Range range);

    boolean isEmpty();

    void removeAll(un8 un8Var);
}
