package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;

public abstract class d0 {
    public static final AnnotatedString a(TextFieldValue textFieldValue) {
        return textFieldValue.c().p(textFieldValue.e());
    }

    public static final AnnotatedString b(TextFieldValue textFieldValue, int i10) {
        return textFieldValue.c().subSequence(androidx.compose.ui.text.b0.i(textFieldValue.e()), Math.min(androidx.compose.ui.text.b0.i(textFieldValue.e()) + i10, textFieldValue.f().length()));
    }

    public static final AnnotatedString c(TextFieldValue textFieldValue, int i10) {
        return textFieldValue.c().subSequence(Math.max(0, androidx.compose.ui.text.b0.j(textFieldValue.e()) - i10), androidx.compose.ui.text.b0.j(textFieldValue.e()));
    }
}
