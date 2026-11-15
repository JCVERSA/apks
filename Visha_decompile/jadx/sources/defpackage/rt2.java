package defpackage;

import android.view.View;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivTooltip;

public interface rt2 {
    public static final rt2 a = new rt2() {
        @Override
        public final boolean d(Div2View div2View, View view, DivTooltip divTooltip, boolean z) {
            return rt2.c(div2View, view, divTooltip, z);
        }
    };

    public interface a {
    }

    static boolean c(Div2View div2View, View view, DivTooltip divTooltip, boolean z) {
        return true;
    }

    default a b() {
        return null;
    }

    boolean d(Div2View div2View, View view, DivTooltip divTooltip, boolean z);
}
