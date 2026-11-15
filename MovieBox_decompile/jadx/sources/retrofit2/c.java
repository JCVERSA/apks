package retrofit2;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

class c {

    static final class a extends c {
        a() {
        }

        @Override
        List a(Executor executor) {
            return Arrays.asList(new j(), new l(executor));
        }

        @Override
        List b() {
            return Collections.singletonList(new z());
        }
    }

    c() {
    }

    List a(Executor executor) {
        return Collections.singletonList(new l(executor));
    }

    List b() {
        return Collections.emptyList();
    }
}
