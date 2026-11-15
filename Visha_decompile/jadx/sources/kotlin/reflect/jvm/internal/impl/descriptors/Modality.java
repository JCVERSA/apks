package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;

public enum Modality {
    FINAL,
    SEALED,
    OPEN,
    ABSTRACT;

    public static final a Companion = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Modality a(boolean z, boolean z2, boolean z3) {
            if (z) {
                return Modality.SEALED;
            }
            if (z2) {
                return Modality.ABSTRACT;
            }
            return z3 ? Modality.OPEN : Modality.FINAL;
        }

        public a() {
        }
    }
}
