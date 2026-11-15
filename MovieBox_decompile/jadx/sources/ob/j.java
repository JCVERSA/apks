package ob;

import com.google.firebase.components.ComponentRegistrar;
import java.util.List;

public interface j {

    public static final j f67756a = new j() {
        @Override
        public final List a(ComponentRegistrar componentRegistrar) {
            return componentRegistrar.getComponents();
        }
    };

    List a(ComponentRegistrar componentRegistrar);
}
