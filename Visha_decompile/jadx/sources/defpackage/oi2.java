package defpackage;

import com.yandex.div.core.view2.Div2View;

public interface oi2 {
    public static final oi2 a = new oi2() {
        @Override
        public final jn5 c(Div2View div2View, String str, ao2 ao2Var) {
            return oi2.a(div2View, str, ao2Var);
        }
    };

    static jn5 a(Div2View div2View, String str, ao2 ao2Var) {
        throw new AssertionError("To load patch you must provide implementation of DivDownloader to your DivConfiguration. ");
    }

    jn5 c(Div2View div2View, String str, ao2 ao2Var);
}
