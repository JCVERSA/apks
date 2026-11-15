package androidx.compose.material.ripple;

import java.util.LinkedHashMap;
import java.util.Map;

final class f {

    private final Map f3191a = new LinkedHashMap();

    private final Map f3192b = new LinkedHashMap();

    public final e a(RippleHostView rippleHostView) {
        return (e) this.f3192b.get(rippleHostView);
    }

    public final RippleHostView b(e eVar) {
        return (RippleHostView) this.f3191a.get(eVar);
    }

    public final void c(e eVar) {
        RippleHostView rippleHostView = (RippleHostView) this.f3191a.get(eVar);
        if (rippleHostView != null) {
        }
        this.f3191a.remove(eVar);
    }

    public final void d(e eVar, RippleHostView rippleHostView) {
        this.f3191a.put(eVar, rippleHostView);
        this.f3192b.put(rippleHostView, eVar);
    }
}
