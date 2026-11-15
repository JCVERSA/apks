package ci;

import android.view.View;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class g implements View.OnClickListener {

    public static final a f16937c = new a(null);

    private final long f16938a;

    private final Function1 f16939b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public g(long j10, Function1 onDebounceClick) {
        Intrinsics.h(onDebounceClick, "onDebounceClick");
        this.f16938a = j10;
        this.f16939b = onDebounceClick;
    }

    @Override
    public void onClick(View view) {
        if (view != null) {
            Object tag = view.getTag(-1001);
            Long l10 = tag instanceof Long ? (Long) tag : null;
            long jLongValue = l10 != null ? l10.longValue() : 0L;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - jLongValue > this.f16938a) {
                view.setTag(-1001, Long.valueOf(jCurrentTimeMillis));
                this.f16939b.invoke(view);
            }
        }
    }

    public g(long j10, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 1000L : j10, function1);
    }
}
