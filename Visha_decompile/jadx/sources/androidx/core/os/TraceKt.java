package androidx.core.os;

import android.os.Trace;
import defpackage.c74;
import defpackage.j05;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a,\u0010\u0005\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0087\b¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"T", "", "sectionName", "Lkotlin/Function0;", "block", "trace", "(Ljava/lang/String;Lc74;)Ljava/lang/Object;", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class TraceKt {
    public static final <T> T trace(String str, c74 c74Var) {
        Trace.beginSection(str);
        try {
            return (T) c74Var.invoke();
        } finally {
            j05.b(1);
            Trace.endSection();
            j05.a(1);
        }
    }
}
