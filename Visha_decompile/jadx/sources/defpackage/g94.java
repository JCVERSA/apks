package defpackage;

import com.trello.rxlifecycle3.OutsideLifecycleException;
import java.util.concurrent.CancellationException;

public abstract class g94 {
    public static final t74 a = new a();
    public static final ie8 b = new b();
    public static final t74 c = new c();

    public static class a implements t74 {
        @Override
        public Boolean apply(Throwable th) {
            if (th instanceof OutsideLifecycleException) {
                return Boolean.TRUE;
            }
            re3.a(th);
            return Boolean.FALSE;
        }
    }

    public static class b implements ie8 {
        @Override
        public boolean test(Boolean bool) {
            return bool.booleanValue();
        }
    }

    public static class c implements t74 {
        @Override
        public hb1 apply(Object obj) {
            return hb1.c(new CancellationException());
        }
    }
}
