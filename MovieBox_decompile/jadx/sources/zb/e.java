package zb;

import java.util.Stack;

public class e {

    public final String f76763a;

    public final String f76764b;

    public final StackTraceElement[] f76765c;

    public final e f76766d;

    private e(String str, String str2, StackTraceElement[] stackTraceElementArr, e eVar) {
        this.f76763a = str;
        this.f76764b = str2;
        this.f76765c = stackTraceElementArr;
        this.f76766d = eVar;
    }

    public static e a(Throwable th2, d dVar) {
        Stack stack = new Stack();
        while (th2 != null) {
            stack.push(th2);
            th2 = th2.getCause();
        }
        e eVar = null;
        while (!stack.isEmpty()) {
            Throwable th3 = (Throwable) stack.pop();
            eVar = new e(th3.getLocalizedMessage(), th3.getClass().getName(), dVar.a(th3.getStackTrace()), eVar);
        }
        return eVar;
    }
}
