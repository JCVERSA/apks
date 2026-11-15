package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.NoWhenBranchMatchedException;

public abstract class aob {
    public static final String b(qnb qnbVar) {
        if (qnbVar instanceof qnb.a) {
            return "array";
        }
        if (qnbVar instanceof qnb.b) {
            return TypedValues.Custom.S_BOOLEAN;
        }
        if (qnbVar instanceof qnb.c) {
            return "color";
        }
        if (qnbVar instanceof qnb.d) {
            return "dict";
        }
        if (qnbVar instanceof qnb.e) {
            return "number";
        }
        if (qnbVar instanceof qnb.f) {
            return TypedValues.Custom.S_INT;
        }
        if (qnbVar instanceof qnb.g) {
            return "string";
        }
        if (qnbVar instanceof qnb.h) {
            return "url";
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final ynb c(qnb qnbVar, String str) {
        return new ynb(qnbVar.b(), str, b(qnbVar), qnbVar.c().toString());
    }
}
