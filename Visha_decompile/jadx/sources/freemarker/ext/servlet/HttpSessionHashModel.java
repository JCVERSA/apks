package freemarker.ext.servlet;

import defpackage.gc7;
import defpackage.ofa;
import defpackage.zfa;
import freemarker.template.TemplateModelException;
import java.io.Serializable;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public final class HttpSessionHashModel implements ofa, Serializable {
    private static final long serialVersionUID = 1;
    private final transient HttpServletRequest request;
    private final transient HttpServletResponse response;
    private final transient FreemarkerServlet servlet;
    private transient HttpSession session;
    private final transient gc7 wrapper;

    public HttpSessionHashModel(HttpSession httpSession, gc7 gc7Var) {
        this.session = httpSession;
        this.wrapper = gc7Var;
        this.request = null;
        this.response = null;
    }

    private void checkSessionExistence() throws TemplateModelException {
        HttpServletRequest httpServletRequest;
        if (this.session != null || (httpServletRequest = this.request) == null) {
            return;
        }
        this.session = httpServletRequest.getSession(false);
    }

    @Override
    public zfa get(String str) throws TemplateModelException {
        checkSessionExistence();
        gc7 gc7Var = this.wrapper;
        HttpSession httpSession = this.session;
        return gc7Var.c(httpSession != null ? httpSession.getAttribute(str) : null);
    }

    @Override
    public boolean isEmpty() throws TemplateModelException {
        checkSessionExistence();
        HttpSession httpSession = this.session;
        return httpSession == null || !httpSession.getAttributeNames().hasMoreElements();
    }

    public boolean isOrphaned(HttpSession httpSession) {
        HttpSession httpSession2 = this.session;
        return !(httpSession2 == null || httpSession2 == httpSession) || (httpSession2 == null && this.request == null);
    }

    public HttpSessionHashModel(FreemarkerServlet freemarkerServlet, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, gc7 gc7Var) {
        this.wrapper = gc7Var;
        this.request = httpServletRequest;
        this.response = httpServletResponse;
    }
}
