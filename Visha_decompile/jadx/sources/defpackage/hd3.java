package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.b;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorEntity;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;

public final class hd3 implements sbb {
    public final ErrorTypeKind a;
    public final String[] b;
    public final String c;

    public hd3(ErrorTypeKind errorTypeKind, String... strArr) {
        y45.j(errorTypeKind, "kind");
        y45.j(strArr, "formatParams");
        this.a = errorTypeKind;
        this.b = strArr;
        String debugText = ErrorEntity.ERROR_TYPE.getDebugText();
        String debugMessage = errorTypeKind.getDebugMessage();
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length);
        String str = String.format(debugMessage, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        y45.i(str, "format(this, *args)");
        String str2 = String.format(debugText, Arrays.copyOf(new Object[]{str}, 1));
        y45.i(str2, "format(this, *args)");
        this.c = str2;
    }

    @Override
    public sbb a(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        return this;
    }

    @Override
    public px0 c() {
        return id3.a.h();
    }

    @Override
    public boolean d() {
        return false;
    }

    public final ErrorTypeKind e() {
        return this.a;
    }

    public final String f(int i) {
        return this.b[i];
    }

    @Override
    public List getParameters() {
        return y71.k();
    }

    @Override
    public Collection k() {
        return y71.k();
    }

    @Override
    public d o() {
        return b.h.a();
    }

    public String toString() {
        return this.c;
    }
}
