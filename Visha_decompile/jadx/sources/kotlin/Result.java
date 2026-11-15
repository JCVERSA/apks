package kotlin;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.y45;
import java.io.Serializable;
import javassist.compiler.ast.MethodDecl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0087@\u0018\u0000  *\u0006\b\u0000\u0010\u0001 \u00012\u00060\u0002j\u0002`\u0003:\u0002!\"B\u0013\b\u0001\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00018\u0000H\u0087\b¢\u0006\u0004\b\b\u0010\u0007J\u000f\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0019\u0012\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001d\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0018R\u0011\u0010\u001f\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0018\u0088\u0001\u0005\u0092\u0001\u0004\u0018\u00010\u0004¨\u0006#"}, d2 = {"Lkotlin/Result;", "T", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", ES6Iterator.VALUE_PROPERTY, "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "getOrNull-impl", "getOrNull", "", "exceptionOrNull-impl", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "exceptionOrNull", "", "toString-impl", "(Ljava/lang/Object;)Ljava/lang/String;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Object;", "getValue$annotations", "()V", "isSuccess-impl", "isSuccess", "isFailure-impl", "isFailure", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Failure", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Result<T> implements Serializable {

    public static final Companion INSTANCE = new Companion(null);
    private final Object value;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlin/Result$Failure;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "exception", "", MethodDecl.initName, "(Ljava/lang/Throwable;)V", "equals", "", "other", "", "hashCode", "", "toString", "", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Failure implements Serializable {
        public final Throwable exception;

        public Failure(Throwable th) {
            y45.j(th, "exception");
            this.exception = th;
        }

        public boolean equals(Object other) {
            return (other instanceof Failure) && y45.e(this.exception, ((Failure) other).exception);
        }

        public int hashCode() {
            return this.exception.hashCode();
        }

        public String toString() {
            return "Failure(" + this.exception + ')';
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    private Result(Object obj) {
        this.value = obj;
    }

    public static final Result m278boximpl(Object obj) {
        return new Result(obj);
    }

    public static <T> Object m279constructorimpl(Object obj) {
        return obj;
    }

    public static boolean m280equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof Result) && y45.e(obj, ((Result) obj2).getValue());
    }

    public static final boolean m281equalsimpl0(Object obj, Object obj2) {
        return y45.e(obj, obj2);
    }

    public static final Throwable m282exceptionOrNullimpl(Object obj) {
        if (obj instanceof Failure) {
            return ((Failure) obj).exception;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final T m283getOrNullimpl(Object obj) {
        if (m285isFailureimpl(obj)) {
            return null;
        }
        return obj;
    }

    public static void getValue$annotations() {
    }

    public static int m284hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean m285isFailureimpl(Object obj) {
        return obj instanceof Failure;
    }

    public static final boolean m286isSuccessimpl(Object obj) {
        return !(obj instanceof Failure);
    }

    public static String m287toStringimpl(Object obj) {
        if (obj instanceof Failure) {
            return ((Failure) obj).toString();
        }
        return "Success(" + obj + ')';
    }

    public boolean equals(Object other) {
        return m280equalsimpl(this.value, other);
    }

    public int hashCode() {
        return m284hashCodeimpl(this.value);
    }

    public String toString() {
        return m287toStringimpl(this.value);
    }

    public final Object getValue() {
        return this.value;
    }
}
