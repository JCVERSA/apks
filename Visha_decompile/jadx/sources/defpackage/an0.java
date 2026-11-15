package defpackage;

import freemarker.core.Environment;
import freemarker.core._TemplateModelException;
import freemarker.core.j;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import java.io.UnsupportedEncodingException;
import java.util.List;

public abstract class an0 implements mga, xfa {
    public final j b;
    public final String c;
    public final Environment d;
    public String e;

    public an0(j jVar, String str, Environment environment) {
        this.b = jVar;
        this.c = str;
        this.d = environment;
    }

    public abstract String b(String str);

    @Override
    public Object exec(List list) throws TemplateModelException {
        this.b.X(list.size(), 1);
        try {
            return new SimpleScalar(b((String) list.get(0)));
        } catch (UnsupportedEncodingException e) {
            throw new _TemplateModelException(e, "Failed to execute URL encoding.");
        }
    }

    @Override
    public String getAsString() throws _TemplateModelException {
        if (this.e == null) {
            String strG0 = this.d.G0();
            if (strG0 == null) {
                throw new _TemplateModelException("To do URL encoding, the framework that encloses FreeMarker must specify the output encoding or the URL encoding charset, so ask the programmers to fix it. Or, as a last chance, you can set the url_encoding_charset setting in the template, e.g. <#setting url_escaping_charset='ISO-8859-1'>, or give the charset explicitly to the buit-in, e.g. foo?url('ISO-8859-1').");
            }
            try {
                this.e = b(strG0);
            } catch (UnsupportedEncodingException e) {
                throw new _TemplateModelException(e, "Failed to execute URL encoding.");
            }
        }
        return this.e;
    }
}
