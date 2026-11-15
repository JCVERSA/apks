package androidx.compose.ui.text.platform.extensions;

import android.text.Spannable;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.t;
import androidx.emoji2.text.i;
import java.util.List;

public abstract class e {
    private static final void a(Spannable spannable, t tVar, int i10, int i11, o0.e eVar) {
        Object[] spans = spannable.getSpans(i10, i11, i.class);
        for (Object obj : spans) {
            spannable.removeSpan((i) obj);
        }
        throw null;
    }

    public static final void b(Spannable spannable, List list, o0.e eVar) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            AnnotatedString.c cVar = (AnnotatedString.c) list.get(i10);
            android.support.v4.media.session.c.a(cVar.a());
            a(spannable, null, cVar.b(), cVar.c(), eVar);
        }
    }
}
