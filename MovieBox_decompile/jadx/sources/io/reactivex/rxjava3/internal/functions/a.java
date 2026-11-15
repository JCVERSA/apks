package io.reactivex.rxjava3.internal.functions;

import java.util.Objects;
import yx.d;

public abstract class a {

    static final d f62336a = new C0764a();

    static final class C0764a implements d {
        C0764a() {
        }

        @Override
        public boolean a(Object obj, Object obj2) {
            return Objects.equals(obj, obj2);
        }
    }

    public static int a(int i10, String str) {
        if (i10 > 0) {
            return i10;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i10);
    }
}
