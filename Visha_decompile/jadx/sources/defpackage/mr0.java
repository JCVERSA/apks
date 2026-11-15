package defpackage;

import freemarker.core.Environment;
import freemarker.template.TemplateModelException;
import java.io.Writer;
import java.util.Map;

public class mr0 implements pga {
    @Override
    public Writer h(Writer writer, Map map) throws TemplateModelException {
        boolean z;
        boolean z2;
        boolean z3;
        if (map == null) {
            throw new TemplateModelException("Must specify the name of the variable in which to capture the output with the 'var' or 'local' or 'global' parameter.");
        }
        zfa zfaVar = (zfa) map.get("namespace");
        Object obj = map.get("var");
        boolean z4 = false;
        if (obj == null) {
            obj = map.get("local");
            if (obj == null) {
                obj = map.get("global");
                z3 = true;
            } else {
                z3 = false;
                z4 = true;
            }
            if (obj == null) {
                throw new TemplateModelException("Must specify the name of the variable in which to capture the output with the 'var' or 'local' or 'global' parameter.");
            }
            z = z4;
            z2 = z3;
        } else {
            z = false;
            z2 = false;
        }
        if (map.size() == 2) {
            if (zfaVar == null) {
                throw new TemplateModelException("Second parameter can only be namespace");
            }
            if (z) {
                throw new TemplateModelException("Cannot specify namespace for a local assignment");
            }
            if (z2) {
                throw new TemplateModelException("Cannot specify namespace for a global assignment");
            }
            if (!(zfaVar instanceof Environment.Namespace)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("namespace parameter does not specify a namespace. It is a ");
                stringBuffer.append(zfaVar.getClass().getName());
                throw new TemplateModelException(stringBuffer.toString());
            }
        } else if (map.size() != 1) {
            throw new TemplateModelException("Bad parameters. Use only one of 'var' or 'local' or 'global' parameters.");
        }
        if (!(obj instanceof mga)) {
            throw new TemplateModelException("'var' or 'local' or 'global' parameter doesn't evaluate to a string");
        }
        String asString = ((mga) obj).getAsString();
        if (asString != null) {
            return new lr0(this, new StringBuffer(), writer, z, Environment.y0(), asString, z2, zfaVar);
        }
        throw new TemplateModelException("'var' or 'local' or 'global' parameter evaluates to null string");
    }
}
