package androidx.compose.ui.text.input;

import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SaversKt;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class TextFieldValue {

    public static final a f5892d = new a(null);

    private static final androidx.compose.runtime.saveable.d f5893e = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, TextFieldValue, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, TextFieldValue textFieldValue) {
            return CollectionsKt.h(SaversKt.y(textFieldValue.c(), SaversKt.h(), eVar), SaversKt.y(androidx.compose.ui.text.b0.b(textFieldValue.e()), SaversKt.l(androidx.compose.ui.text.b0.f5774b), eVar));
        }
    }, new Function1<Object, TextFieldValue>() {
        @Override
        public final TextFieldValue invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            androidx.compose.runtime.saveable.d dVarH = SaversKt.h();
            Boolean bool = Boolean.FALSE;
            androidx.compose.ui.text.b0 b0Var = null;
            AnnotatedString annotatedString = ((!Intrinsics.c(obj2, bool) || (dVarH instanceof androidx.compose.ui.text.j)) && obj2 != null) ? (AnnotatedString) dVarH.b(obj2) : null;
            Intrinsics.e(annotatedString);
            Object obj3 = list.get(1);
            androidx.compose.runtime.saveable.d dVarL = SaversKt.l(androidx.compose.ui.text.b0.f5774b);
            if ((!Intrinsics.c(obj3, bool) || (dVarL instanceof androidx.compose.ui.text.j)) && obj3 != null) {
                b0Var = (androidx.compose.ui.text.b0) dVarL.b(obj3);
            }
            Intrinsics.e(b0Var);
            return new TextFieldValue(annotatedString, b0Var.n(), (androidx.compose.ui.text.b0) null, 4, (DefaultConstructorMarker) null);
        }
    });

    private final AnnotatedString f5894a;

    private final long f5895b;

    private final androidx.compose.ui.text.b0 f5896c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public TextFieldValue(AnnotatedString annotatedString, long j10, androidx.compose.ui.text.b0 b0Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, j10, b0Var);
    }

    public static TextFieldValue b(TextFieldValue textFieldValue, AnnotatedString annotatedString, long j10, androidx.compose.ui.text.b0 b0Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            annotatedString = textFieldValue.f5894a;
        }
        if ((i10 & 2) != 0) {
            j10 = textFieldValue.f5895b;
        }
        if ((i10 & 4) != 0) {
            b0Var = textFieldValue.f5896c;
        }
        return textFieldValue.a(annotatedString, j10, b0Var);
    }

    public final TextFieldValue a(AnnotatedString annotatedString, long j10, androidx.compose.ui.text.b0 b0Var) {
        return new TextFieldValue(annotatedString, j10, b0Var, (DefaultConstructorMarker) null);
    }

    public final AnnotatedString c() {
        return this.f5894a;
    }

    public final androidx.compose.ui.text.b0 d() {
        return this.f5896c;
    }

    public final long e() {
        return this.f5895b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldValue)) {
            return false;
        }
        TextFieldValue textFieldValue = (TextFieldValue) obj;
        return androidx.compose.ui.text.b0.e(this.f5895b, textFieldValue.f5895b) && Intrinsics.c(this.f5896c, textFieldValue.f5896c) && Intrinsics.c(this.f5894a, textFieldValue.f5894a);
    }

    public final String f() {
        return this.f5894a.i();
    }

    public int hashCode() {
        int iHashCode = ((this.f5894a.hashCode() * 31) + androidx.compose.ui.text.b0.l(this.f5895b)) * 31;
        androidx.compose.ui.text.b0 b0Var = this.f5896c;
        return iHashCode + (b0Var != null ? androidx.compose.ui.text.b0.l(b0Var.n()) : 0);
    }

    public String toString() {
        return "TextFieldValue(text='" + ((Object) this.f5894a) + "', selection=" + ((Object) androidx.compose.ui.text.b0.m(this.f5895b)) + ", composition=" + this.f5896c + ')';
    }

    public TextFieldValue(String str, long j10, androidx.compose.ui.text.b0 b0Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j10, b0Var);
    }

    private TextFieldValue(AnnotatedString annotatedString, long j10, androidx.compose.ui.text.b0 b0Var) {
        this.f5894a = annotatedString;
        this.f5895b = androidx.compose.ui.text.c0.c(j10, 0, f().length());
        this.f5896c = b0Var != null ? androidx.compose.ui.text.b0.b(androidx.compose.ui.text.c0.c(b0Var.n(), 0, f().length())) : null;
    }

    public TextFieldValue(AnnotatedString annotatedString, long j10, androidx.compose.ui.text.b0 b0Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, (i10 & 2) != 0 ? androidx.compose.ui.text.b0.f5774b.a() : j10, (i10 & 4) != 0 ? null : b0Var, (DefaultConstructorMarker) null);
    }

    public TextFieldValue(String str, long j10, androidx.compose.ui.text.b0 b0Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? androidx.compose.ui.text.b0.f5774b.a() : j10, (i10 & 4) != 0 ? null : b0Var, (DefaultConstructorMarker) null);
    }

    private TextFieldValue(String str, long j10, androidx.compose.ui.text.b0 b0Var) {
        this(new AnnotatedString(str, null, null, 6, null), j10, b0Var, (DefaultConstructorMarker) null);
    }
}
