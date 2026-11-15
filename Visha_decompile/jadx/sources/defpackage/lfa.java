package defpackage;

import freemarker.core.Environment;
import freemarker.template.TemplateException;
import java.io.PrintWriter;
import java.io.Writer;

public final class lfa implements nfa {
    @Override
    public void a(TemplateException templateException, Environment environment, Writer writer) throws TemplateException {
        if (environment.x1()) {
            throw templateException;
        }
        PrintWriter printWriter = writer instanceof PrintWriter ? (PrintWriter) writer : new PrintWriter(writer);
        printWriter.print("FreeMarker template error (DEBUG mode; use RETHROW in production!):\n");
        templateException.printStackTrace(printWriter, false, true, true);
        printWriter.flush();
        throw templateException;
    }
}
