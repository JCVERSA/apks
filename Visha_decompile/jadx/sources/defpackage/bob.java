package defpackage;

import com.yandex.div.core.expression.local.RuntimeStore;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.data.VariableMutationException;
import kotlin.Result;
import kotlin.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

public abstract class bob {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final VariableMutationException a(Throwable th, Div2View div2View, String str) {
            VariableMutationException variableMutationException = new VariableMutationException(str, th);
            eg2.e(div2View, variableMutationException);
            return variableMutationException;
        }

        public final qnb b(Div2View div2View, String str, oj3 oj3Var) {
            vj3 expressionsRuntime;
            snb snbVarG;
            RuntimeStore runtimeStore = div2View.getRuntimeStore();
            if (runtimeStore == null || (expressionsRuntime = runtimeStore.j(oj3Var)) == null) {
                expressionsRuntime = div2View.getExpressionsRuntime();
            }
            if (expressionsRuntime == null || (snbVarG = expressionsRuntime.g()) == null) {
                return null;
            }
            return snbVarG.a(str);
        }

        public final VariableMutationException c(Div2View div2View, String str, oj3 oj3Var, e74 e74Var) {
            Object objM279constructorimpl;
            y45.j(div2View, "div2View");
            y45.j(str, "name");
            y45.j(oj3Var, "resolver");
            y45.j(e74Var, "valueMutation");
            qnb qnbVarB = b(div2View, str, oj3Var);
            if (qnbVarB == null) {
                return a(null, div2View, "Variable '" + str + "' not defined!");
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                qnbVarB.o((qnb) e74Var.invoke(qnbVarB));
                objM279constructorimpl = Result.m279constructorimpl(zfb.a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(c.a(th));
            }
            Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
            if (thM282exceptionOrNullimpl == null) {
                return null;
            }
            return bob.a.a(thM282exceptionOrNullimpl, div2View, "Variable '" + str + "' mutation failed!");
        }

        public final VariableMutationException d(Div2View div2View, String str, String str2, oj3 oj3Var) {
            Object objM279constructorimpl;
            y45.j(div2View, "div2View");
            y45.j(str, "name");
            y45.j(str2, ES6Iterator.VALUE_PROPERTY);
            y45.j(oj3Var, "resolver");
            qnb qnbVarB = b(div2View, str, oj3Var);
            if (qnbVarB == null) {
                return a(null, div2View, "Variable '" + str + "' not defined!");
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                qnbVarB.n(str2);
                objM279constructorimpl = Result.m279constructorimpl(zfb.a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(c.a(th));
            }
            Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
            if (thM282exceptionOrNullimpl == null) {
                return null;
            }
            return bob.a.a(thM282exceptionOrNullimpl, div2View, "Variable '" + str + "' mutation failed!");
        }

        public a() {
        }
    }

    public static final VariableMutationException a(Div2View div2View, String str, String str2, oj3 oj3Var) {
        return a.d(div2View, str, str2, oj3Var);
    }
}
