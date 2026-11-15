package com.yandex.div.evaluable;

import defpackage.y45;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/yandex/div/evaluable/MissingLocalFunctionException;", "Lcom/yandex/div/evaluable/EvaluableException;", "name", "", "args", "", "Lcom/yandex/div/evaluable/EvaluableType;", "(Ljava/lang/String;Ljava/util/List;)V", "div-evaluable"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MissingLocalFunctionException extends EvaluableException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissingLocalFunctionException(String str, List<? extends EvaluableType> list) {
        super("Function '" + str + '(' + EvaluableExceptionKt.j(list) + ")' is missing.", null, 2, null);
        y45.j(str, "name");
        y45.j(list, "args");
    }
}
