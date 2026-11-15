package kotlin;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.c74;
import defpackage.u3;
import defpackage.web;
import defpackage.y45;
import defpackage.yi5;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import javassist.compiler.ast.MethodDecl;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\b\u0002\u0018\u0000 \u001a*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004:\u0001\u001bB\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0012R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0014\u0012\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00028\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u000b¨\u0006\u001c"}, d2 = {"Lkotlin/SafePublicationLazyImpl;", "T", "Lyi5;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "Lkotlin/Function0;", "initializer", MethodDecl.initName, "(Lc74;)V", "", "writeReplace", "()Ljava/lang/Object;", "", "isInitialized", "()Z", "", "toString", "()Ljava/lang/String;", "Lc74;", "_value", "Ljava/lang/Object;", "final", "getFinal$annotations", "()V", "getValue", ES6Iterator.VALUE_PROPERTY, "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SafePublicationLazyImpl<T> implements yi5, Serializable {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(SafePublicationLazyImpl.class, Object.class, "_value");
    private volatile Object _value;
    private final Object final;
    private volatile c74 initializer;

    public SafePublicationLazyImpl(c74 c74Var) {
        y45.j(c74Var, "initializer");
        this.initializer = c74Var;
        web webVar = web.a;
        this._value = webVar;
        this.final = webVar;
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    @Override
    public T getValue() {
        T t = (T) this._value;
        web webVar = web.a;
        if (t != webVar) {
            return t;
        }
        c74 c74Var = this.initializer;
        if (c74Var != null) {
            T t2 = (T) c74Var.invoke();
            if (u3.a(b, this, webVar, t2)) {
                this.initializer = null;
                return t2;
            }
        }
        return (T) this._value;
    }

    @Override
    public boolean isInitialized() {
        return this._value != web.a;
    }

    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
