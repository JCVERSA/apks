package androidx.window.embedding;

import android.content.Context;
import androidx.annotation.XmlRes;
import defpackage.y45;
import defpackage.ye9;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\rJ\u001b\u0010\u0010\u001a\u00020\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u000b¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0014¨\u0006\u0016"}, d2 = {"Landroidx/window/embedding/RuleController;", "", "Landroidx/window/embedding/EmbeddingBackend;", "embeddingBackend", MethodDecl.initName, "(Landroidx/window/embedding/EmbeddingBackend;)V", "", "Landroidx/window/embedding/EmbeddingRule;", "getRules", "()Ljava/util/Set;", "rule", "Lzfb;", "addRule", "(Landroidx/window/embedding/EmbeddingRule;)V", "removeRule", "rules", "setRules", "(Ljava/util/Set;)V", "clearRules", "()V", "Landroidx/window/embedding/EmbeddingBackend;", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RuleController {

    public static final Companion INSTANCE = new Companion(null);
    private final EmbeddingBackend embeddingBackend;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\f"}, d2 = {"Landroidx/window/embedding/RuleController$Companion;", "", "()V", "getInstance", "Landroidx/window/embedding/RuleController;", "context", "Landroid/content/Context;", "parseRules", "", "Landroidx/window/embedding/EmbeddingRule;", "staticRuleResourceId", "", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RuleController getInstance(Context context) {
            y45.j(context, "context");
            Context applicationContext = context.getApplicationContext();
            EmbeddingBackend.Companion companion = EmbeddingBackend.INSTANCE;
            y45.i(applicationContext, "applicationContext");
            return new RuleController(companion.getInstance(applicationContext));
        }

        public final Set<EmbeddingRule> parseRules(Context context, @XmlRes int staticRuleResourceId) {
            y45.j(context, "context");
            RuleParser ruleParser = RuleParser.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            y45.i(applicationContext, "context.applicationContext");
            Set<EmbeddingRule> rules$window_release = ruleParser.parseRules$window_release(applicationContext, staticRuleResourceId);
            return rules$window_release == null ? ye9.f() : rules$window_release;
        }

        private Companion() {
        }
    }

    public RuleController(EmbeddingBackend embeddingBackend) {
        y45.j(embeddingBackend, "embeddingBackend");
        this.embeddingBackend = embeddingBackend;
    }

    public static final RuleController getInstance(Context context) {
        return INSTANCE.getInstance(context);
    }

    public static final Set<EmbeddingRule> parseRules(Context context, @XmlRes int i) {
        return INSTANCE.parseRules(context, i);
    }

    public final void addRule(EmbeddingRule rule) {
        y45.j(rule, "rule");
        this.embeddingBackend.addRule(rule);
    }

    public final void clearRules() {
        this.embeddingBackend.setRules(ye9.f());
    }

    public final Set<EmbeddingRule> getRules() {
        return this.embeddingBackend.getRules();
    }

    public final void removeRule(EmbeddingRule rule) {
        y45.j(rule, "rule");
        this.embeddingBackend.removeRule(rule);
    }

    public final void setRules(Set<? extends EmbeddingRule> rules) {
        y45.j(rules, "rules");
        this.embeddingBackend.setRules(rules);
    }
}
