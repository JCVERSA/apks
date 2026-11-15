package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class nm6 {
    public final int a;

    public static final class a extends nm6 {
        public static final a b = new a();

        public a() {
            super(3, null);
        }
    }

    public nm6(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    public nm6(int i) {
        this.a = i;
    }
}
