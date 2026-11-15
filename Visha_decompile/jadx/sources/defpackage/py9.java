package defpackage;

import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;

public interface py9 extends xz4 {
    String a();

    String b();

    boolean c();

    default List e() {
        return Collections.emptyList();
    }

    String f();

    DateWrapper g();

    long getDuration();

    boolean s();

    default boolean t() {
        return false;
    }

    StreamType u();

    default String v() {
        return null;
    }

    long w();
}
