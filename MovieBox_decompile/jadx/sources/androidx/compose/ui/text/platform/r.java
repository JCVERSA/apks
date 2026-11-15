package androidx.compose.ui.text.platform;

import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.g0;
import java.util.WeakHashMap;

public final class r {

    private final WeakHashMap f6027a = new WeakHashMap();

    private final WeakHashMap f6028b = new WeakHashMap();

    private final WeakHashMap f6029c = new WeakHashMap();

    public final ClickableSpan a(AnnotatedString.c cVar) {
        WeakHashMap weakHashMap = this.f6029c;
        Object hVar = weakHashMap.get(cVar);
        if (hVar == null) {
            hVar = new h((androidx.compose.ui.text.f) cVar.e());
            weakHashMap.put(cVar, hVar);
        }
        return (ClickableSpan) hVar;
    }

    public final URLSpan b(AnnotatedString.c cVar) {
        WeakHashMap weakHashMap = this.f6028b;
        Object uRLSpan = weakHashMap.get(cVar);
        if (uRLSpan == null) {
            uRLSpan = new URLSpan(((androidx.compose.ui.text.f.b) cVar.e()).c());
            weakHashMap.put(cVar, uRLSpan);
        }
        return (URLSpan) uRLSpan;
    }

    public final URLSpan c(g0 g0Var) {
        WeakHashMap weakHashMap = this.f6027a;
        Object uRLSpan = weakHashMap.get(g0Var);
        if (uRLSpan == null) {
            uRLSpan = new URLSpan(g0Var.a());
            weakHashMap.put(g0Var, uRLSpan);
        }
        return (URLSpan) uRLSpan;
    }
}
