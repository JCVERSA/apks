package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.Intrinsics;

public final class b0 implements m {

    private final AnnotatedString f5914a;

    private final int f5915b;

    public b0(AnnotatedString annotatedString, int i10) {
        this.f5914a = annotatedString;
        this.f5915b = i10;
    }

    public final String a() {
        return this.f5914a.i();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) obj;
        return Intrinsics.c(a(), b0Var.a()) && this.f5915b == b0Var.f5915b;
    }

    public int hashCode() {
        return (a().hashCode() * 31) + this.f5915b;
    }

    public String toString() {
        return "SetComposingTextCommand(text='" + a() + "', newCursorPosition=" + this.f5915b + ')';
    }

    public b0(String str, int i10) {
        this(new AnnotatedString(str, null, null, 6, null), i10);
    }
}
