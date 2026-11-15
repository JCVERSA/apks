package androidx.window.core;

import com.lzy.okgo.model.Progress;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b \u0018\u0000 \u0011*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J1\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0\u0007H&¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\f\u001a\u0004\u0018\u00018\u0000H&¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0004¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/window/core/SpecificationComputer;", "", "T", MethodDecl.initName, "()V", "", "message", "Lkotlin/Function1;", "", "condition", "require", "(Ljava/lang/String;Le74;)Landroidx/window/core/SpecificationComputer;", "compute", "()Ljava/lang/Object;", ES6Iterator.VALUE_PROPERTY, "createMessage", "(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class SpecificationComputer<T> {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J;\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\b\b\u0001\u0010\u0005*\u00020\u0001*\u0002H\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"Landroidx/window/core/SpecificationComputer$Companion;", "", "()V", "startSpecification", "Landroidx/window/core/SpecificationComputer;", "T", Progress.TAG, "", "verificationMode", "Landroidx/window/core/VerificationMode;", "logger", "Landroidx/window/core/Logger;", "(Ljava/lang/Object;Ljava/lang/String;Landroidx/window/core/VerificationMode;Landroidx/window/core/Logger;)Landroidx/window/core/SpecificationComputer;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static SpecificationComputer startSpecification$default(Companion companion, Object obj, String str, VerificationMode verificationMode, Logger logger, int i, Object obj2) {
            if ((i & 2) != 0) {
                verificationMode = BuildConfig.INSTANCE.getVerificationMode();
            }
            if ((i & 4) != 0) {
                logger = AndroidLogger.INSTANCE;
            }
            return companion.startSpecification(obj, str, verificationMode, logger);
        }

        public final <T> SpecificationComputer<T> startSpecification(T t, String str, VerificationMode verificationMode, Logger logger) {
            y45.j(t, "<this>");
            y45.j(str, Progress.TAG);
            y45.j(verificationMode, "verificationMode");
            y45.j(logger, "logger");
            return new ValidSpecification(t, str, verificationMode, logger);
        }

        private Companion() {
        }
    }

    public abstract T compute();

    public final String createMessage(Object value, String message) {
        y45.j(value, ES6Iterator.VALUE_PROPERTY);
        y45.j(message, "message");
        return message + " value: " + value;
    }

    public abstract SpecificationComputer<T> require(String message, e74 condition);
}
