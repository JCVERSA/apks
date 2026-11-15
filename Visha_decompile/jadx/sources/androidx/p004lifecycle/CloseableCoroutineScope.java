package androidx.p004lifecycle;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.nk1;
import defpackage.y45;
import java.io.Closeable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.d;
import kotlinx.coroutines.JobKt__JobKt;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/lifecycle/CloseableCoroutineScope;", "Ljava/io/Closeable;", "Lnk1;", "Lkotlin/coroutines/d;", "context", MethodDecl.initName, "(Lkotlin/coroutines/d;)V", "Lzfb;", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "()V", "coroutineContext", "Lkotlin/coroutines/d;", "getCoroutineContext", "()Lkotlin/coroutines/d;", "lifecycle-viewmodel-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CloseableCoroutineScope implements Closeable, nk1 {
    private final d coroutineContext;

    public CloseableCoroutineScope(d dVar) {
        y45.j(dVar, "context");
        this.coroutineContext = dVar;
    }

    @Override
    public void close() {
        JobKt__JobKt.d(getCoroutineContext(), null, 1, null);
    }

    @Override
    public d getCoroutineContext() {
        return this.coroutineContext;
    }
}
