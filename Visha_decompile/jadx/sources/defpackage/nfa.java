package defpackage;

import freemarker.core.Environment;
import freemarker.template.TemplateException;
import java.io.Writer;

public interface nfa {
    public static final nfa a = new jfa();
    public static final nfa b = new kfa();
    public static final nfa c = new lfa();
    public static final nfa d = new mfa();

    void a(TemplateException templateException, Environment environment, Writer writer);
}
