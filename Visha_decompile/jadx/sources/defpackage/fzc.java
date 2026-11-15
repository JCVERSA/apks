package defpackage;

import java.util.Optional;
import java.util.stream.Stream;

public abstract class fzc {
    public static Stream a(Optional optional) {
        return optional.isPresent() ? Stream.of(optional.get()) : Stream.empty();
    }
}
