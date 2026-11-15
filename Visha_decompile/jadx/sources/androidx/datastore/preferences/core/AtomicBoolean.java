package androidx.datastore.preferences.core;

import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u0005J\r\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/datastore/preferences/core/AtomicBoolean;", "", "", "initialValue", MethodDecl.initName, "(Z)V", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "set", "get", "()Z", "Ljava/util/concurrent/atomic/AtomicBoolean;", "delegate", "Ljava/util/concurrent/atomic/AtomicBoolean;", "datastore-preferences-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AtomicBoolean {
    private final java.util.concurrent.atomic.AtomicBoolean delegate;

    public AtomicBoolean(boolean z) {
        this.delegate = new java.util.concurrent.atomic.AtomicBoolean(z);
    }

    public final boolean get() {
        return this.delegate.get();
    }

    public final void set(boolean value) {
        this.delegate.set(value);
    }
}
