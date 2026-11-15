package freemarker.ext.servlet;

import defpackage.gc7;
import defpackage.zfa;
import freemarker.template.SimpleHash;
import freemarker.template.TemplateModelException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class AllHttpScopesHashModel extends SimpleHash {
    private final ServletContext context;
    private final HttpServletRequest request;
    private final Map unlistedModels = new HashMap();

    public AllHttpScopesHashModel(gc7 gc7Var, ServletContext servletContext, HttpServletRequest httpServletRequest) {
        setObjectWrapper(gc7Var);
        this.context = servletContext;
        this.request = httpServletRequest;
    }

    @Override
    public zfa get(String str) throws TemplateModelException {
        Object attribute;
        zfa zfaVar = super.get(str);
        if (zfaVar != null) {
            return zfaVar;
        }
        zfa zfaVar2 = (zfa) this.unlistedModels.get(str);
        if (zfaVar2 != null) {
            return zfaVar2;
        }
        Object attribute2 = this.request.getAttribute(str);
        if (attribute2 != null) {
            return wrap(attribute2);
        }
        HttpSession session = this.request.getSession(false);
        if (session != null && (attribute = session.getAttribute(str)) != null) {
            return wrap(attribute);
        }
        Object attribute3 = this.context.getAttribute(str);
        return attribute3 != null ? wrap(attribute3) : wrap(null);
    }

    public void putUnlistedModel(String str, zfa zfaVar) {
        this.unlistedModels.put(str, zfaVar);
    }
}
