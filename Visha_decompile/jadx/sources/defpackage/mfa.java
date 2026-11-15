package defpackage;

import freemarker.core.Environment;
import freemarker.template.TemplateException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

public final class mfa implements nfa {
    @Override
    public void a(TemplateException templateException, Environment environment, Writer writer) throws TemplateException {
        if (environment.x1()) {
            throw templateException;
        }
        boolean z = writer instanceof PrintWriter;
        PrintWriter printWriter = z ? (PrintWriter) writer : new PrintWriter(writer);
        try {
            printWriter.print("<!-- FREEMARKER ERROR MESSAGE STARTS HERE --><!-- ]]> --><script language=javascript>//\"></script><script language=javascript>//'></script><script language=javascript>//\"></script><script language=javascript>//'></script></title></xmp></script></noscript></style></object></head></pre></table></form></table></table></table></a></u></i></b><div align='left' style='background-color:#FFFF7C; display:block; border-top:double; padding:4px; margin:0; font-family:Arial,sans-serif; ");
            printWriter.print("color:#A80000; font-size:12px; font-style:normal; font-variant:normal; font-weight:normal; text-decoration:none; text-transform: none");
            printWriter.print("'><b style='font-size:12px; font-style:normal; font-weight:bold; text-decoration:none; text-transform: none;'>FreeMarker template error  (HTML_DEBUG mode; use RETHROW in production!)</b><pre style='display:block; background: none; border: 0; margin:0; padding: 0;font-family:monospace; ");
            printWriter.print("color:#A80000; font-size:12px; font-style:normal; font-variant:normal; font-weight:normal; text-decoration:none; text-transform: none");
            printWriter.println("; white-space: pre-wrap; white-space: -moz-pre-wrap; white-space: -pre-wrap; white-space: -o-pre-wrap; word-wrap: break-word;'>");
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter2 = new PrintWriter(stringWriter);
            templateException.printStackTrace(printWriter2, false, true, true);
            printWriter2.close();
            printWriter.println();
            printWriter.println(n0a.l(stringWriter.toString()));
            printWriter.println("</pre></div></html>");
            printWriter.flush();
            if (!z) {
                throw templateException;
            }
            throw templateException;
        } finally {
            if (!z) {
                printWriter.close();
            }
        }
    }
}
