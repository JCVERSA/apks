package kotlin.reflect;

import defpackage.db3;
import defpackage.ff5;
import defpackage.zd5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

public interface KParameter extends zd5 {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/KParameter$Kind;", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "INSTANCE", "EXTENSION_RECEIVER", "VALUE", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum Kind {
        INSTANCE,
        EXTENSION_RECEIVER,
        VALUE;

        private static final db3 $ENTRIES = kotlin.enums.a.a(values());

        public static db3 getEntries() {
            return $ENTRIES;
        }
    }

    boolean b();

    boolean f();

    int getIndex();

    Kind getKind();

    String getName();

    ff5 getType();
}
