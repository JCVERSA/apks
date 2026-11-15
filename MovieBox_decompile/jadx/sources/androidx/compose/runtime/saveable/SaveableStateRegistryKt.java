package androidx.compose.runtime.saveable;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.CharsKt;

public abstract class SaveableStateRegistryKt {

    private static final s1 f3597a = CompositionLocalKt.f(new Function0<b>() {
        @Override
        public final b invoke() {
            return null;
        }
    });

    public static final b a(Map map, Function1 function1) {
        return new c(map, function1);
    }

    public static final boolean c(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!CharsKt.c(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static final s1 d() {
        return f3597a;
    }
}
