package kotlinx.serialization.modules;

import androidx.core.app.NotificationCompat;
import defpackage.de5;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B!\b\u0010\u0012\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007\u0012\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0007¢\u0006\u0004\b\u0005\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/serialization/modules/SerializerAlreadyRegisteredException;", "Ljava/lang/IllegalArgumentException;", "Lkotlin/IllegalArgumentException;", "", NotificationCompat.CATEGORY_MESSAGE, MethodDecl.initName, "(Ljava/lang/String;)V", "Lde5;", "baseClass", "concreteClass", "(Lde5;Lde5;)V", "kotlinx-serialization-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class SerializerAlreadyRegisteredException extends IllegalArgumentException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SerializerAlreadyRegisteredException(String str) {
        super(str);
        y45.j(str, NotificationCompat.CATEGORY_MESSAGE);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SerializerAlreadyRegisteredException(de5 de5Var, de5 de5Var2) {
        this("Serializer for " + de5Var2 + " already registered in the scope of " + de5Var);
        y45.j(de5Var, "baseClass");
        y45.j(de5Var2, "concreteClass");
    }
}
