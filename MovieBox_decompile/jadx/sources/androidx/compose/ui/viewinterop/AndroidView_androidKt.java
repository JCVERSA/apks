package androidx.compose.ui.viewinterop;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public abstract class AndroidView_androidKt {

    private static final Function1 f6204a = new Function1<View, Unit>() {
        public final void invoke(View view) {
        }

        @Override
        public Object invoke(Object obj) {
            invoke((View) obj);
            return Unit.f64096a;
        }
    };

    public static final Function1 a() {
        return f6204a;
    }
}
