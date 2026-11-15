package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

public class gl0 {

    public static final class a extends gl0 {
        @Override
        public List a(Executor executor) {
            return Arrays.asList(new ob1(), new i02(executor));
        }

        @Override
        public List b() {
            return Collections.singletonList(new os7());
        }
    }

    public List a(Executor executor) {
        return Collections.singletonList(new i02(executor));
    }

    public List b() {
        return Collections.emptyList();
    }
}
