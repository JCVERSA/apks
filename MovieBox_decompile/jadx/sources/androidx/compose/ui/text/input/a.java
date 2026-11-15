package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.Intrinsics;

public final class a implements m {

    private final AnnotatedString f5910a;

    private final int f5911b;

    public a(AnnotatedString annotatedString, int i10) {
        this.f5910a = annotatedString;
        this.f5911b = i10;
    }

    public final String a() {
        return this.f5910a.i();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(a(), aVar.a()) && this.f5911b == aVar.f5911b;
    }

    public int hashCode() {
        return (a().hashCode() * 31) + this.f5911b;
    }

    public String toString() {
        return "CommitTextCommand(text='" + a() + "', newCursorPosition=" + this.f5911b + ')';
    }

    public a(String str, int i10) {
        this(new AnnotatedString(str, null, null, 6, null), i10);
    }
}
