package com.transsion.dbdata.source.data.repository;

import defpackage.s74;
import defpackage.y45;
import java.util.function.BiFunction;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class SystemAudioQueryRepository$sam$java_util_function_BiFunction$0 implements BiFunction {
    private final s74 function;

    public SystemAudioQueryRepository$sam$java_util_function_BiFunction$0(s74 s74Var) {
        y45.j(s74Var, "function");
        this.function = s74Var;
    }

    @Override
    public final Object apply(Object obj, Object obj2) {
        return this.function.invoke(obj, obj2);
    }

    public SystemAudioQueryRepository$sam$java_util_function_BiFunction$0(s74 s74Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(s74Var);
    }
}
