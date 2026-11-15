package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.Objects;
import java.util.function.Predicate;

public final class guc implements Predicate {
    @Override
    public final boolean test(Object obj) {
        return Objects.nonNull((JsonObject) obj);
    }
}
