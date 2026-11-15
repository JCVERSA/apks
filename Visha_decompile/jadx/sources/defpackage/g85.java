package defpackage;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.ScriptableObject;

public abstract class g85 {
    public static void a(String str) {
        try {
            Context contextEnter = Context.enter();
            contextEnter.setOptimizationLevel(-1);
            contextEnter.compileString(str, null, 1, null);
        } finally {
            Context.exit();
        }
    }

    public static String b(String str, String str2, String... strArr) {
        try {
            Context contextEnter = Context.enter();
            contextEnter.setOptimizationLevel(-1);
            ScriptableObject scriptableObjectInitSafeStandardObjects = contextEnter.initSafeStandardObjects();
            contextEnter.evaluateString(scriptableObjectInitSafeStandardObjects, str, str2, 1, null);
            return ((Function) scriptableObjectInitSafeStandardObjects.get(str2, scriptableObjectInitSafeStandardObjects)).call(contextEnter, scriptableObjectInitSafeStandardObjects, scriptableObjectInitSafeStandardObjects, strArr).toString();
        } finally {
            Context.exit();
        }
    }
}
