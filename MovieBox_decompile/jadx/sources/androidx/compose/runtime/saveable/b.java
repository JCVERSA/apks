package androidx.compose.runtime.saveable;

import java.util.Map;
import kotlin.jvm.functions.Function0;

public interface b {

    public interface a {
        void unregister();
    }

    boolean a(Object obj);

    a b(String str, Function0 function0);

    Map e();

    Object f(String str);
}
