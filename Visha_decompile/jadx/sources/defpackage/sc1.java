package defpackage;

import com.google.firebase.components.ComponentRegistrar;
import java.util.List;

public interface sc1 {
    public static final sc1 a = new sc1() {
        @Override
        public final List a(ComponentRegistrar componentRegistrar) {
            return componentRegistrar.getComponents();
        }
    };

    List a(ComponentRegistrar componentRegistrar);
}
