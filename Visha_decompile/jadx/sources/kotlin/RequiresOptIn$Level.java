package kotlin;

import defpackage.db3;
import javassist.compiler.ast.MethodDecl;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"kotlin/RequiresOptIn$Level", "", "Lkotlin/RequiresOptIn$Level;", MethodDecl.initName, "(Ljava/lang/String;I)V", "WARNING", "ERROR", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum RequiresOptIn$Level {
    WARNING,
    ERROR;

    private static final db3 $ENTRIES = kotlin.enums.a.a(values());

    public static db3 getEntries() {
        return $ENTRIES;
    }
}
