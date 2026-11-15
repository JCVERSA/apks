package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.c1;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.p1;
import androidx.compose.runtime.r2;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.ui.text.b0;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import y.i;

public final class TextFieldScrollerPosition {

    public static final a f2885f = new a(null);

    private static final androidx.compose.runtime.saveable.d f2886g = ListSaverKt.a(new Function2<androidx.compose.runtime.saveable.e, TextFieldScrollerPosition, List<? extends Object>>() {
        @Override
        public final List<Object> invoke(androidx.compose.runtime.saveable.e eVar, TextFieldScrollerPosition textFieldScrollerPosition) {
            return CollectionsKt.o(Float.valueOf(textFieldScrollerPosition.a()), Boolean.valueOf(textFieldScrollerPosition.b() == Orientation.Vertical));
        }
    }, new Function1<List<? extends Object>, TextFieldScrollerPosition>() {
        @Override
        public final TextFieldScrollerPosition invoke(List<? extends Object> list) {
            Object obj = list.get(1);
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Boolean");
            Orientation orientation = ((Boolean) obj).booleanValue() ? Orientation.Vertical : Orientation.Horizontal;
            Object obj2 = list.get(0);
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Float");
            return new TextFieldScrollerPosition(orientation, ((Float) obj2).floatValue());
        }
    });

    private final c1 f2887a;

    private final c1 f2888b;

    private i f2889c;

    private long f2890d;

    private final i1 f2891e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public TextFieldScrollerPosition(Orientation orientation, float f10) {
        this.f2887a = p1.a(f10);
        this.f2888b = p1.a(0.0f);
        this.f2889c = i.f76004e.a();
        this.f2890d = b0.f5774b.a();
        this.f2891e = r2.e(orientation, r2.j());
    }

    public final float a() {
        return this.f2887a.getFloatValue();
    }

    public final Orientation b() {
        return (Orientation) this.f2891e.getValue();
    }

    public TextFieldScrollerPosition(Orientation orientation, float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(orientation, (i10 & 2) != 0 ? 0.0f : f10);
    }

    public TextFieldScrollerPosition() {
        this(Orientation.Vertical, 0.0f, 2, null);
    }
}
