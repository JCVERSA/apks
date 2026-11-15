package org.apache.tools.ant;

import java.util.Enumeration;

public abstract class u extends q {

    protected t f68379a;

    protected String f68380b;

    protected String f68381c;

    protected RuntimeConfigurable f68382d;

    private boolean f68383e;

    private w f68384f;

    private w i() {
        if (this.f68384f == null) {
            w wVar = new w(this.f68381c);
            this.f68384f = wVar;
            wVar.setProject(getProject());
            this.f68384f.t(this.f68381c);
            this.f68384f.s(this.f68380b);
            this.f68384f.setLocation(this.location);
            this.f68384f.q(this.f68379a);
            this.f68384f.r(this.f68382d);
            this.f68382d.setProxy(this.f68384f);
            p(this.f68382d, this.f68384f);
            this.f68379a.g(this, this.f68384f);
            this.f68384f.n();
        }
        return this.f68384f;
    }

    private void p(RuntimeConfigurable runtimeConfigurable, w wVar) {
        Enumeration children = runtimeConfigurable.getChildren();
        while (children.hasMoreElements()) {
            RuntimeConfigurable runtimeConfigurable2 = (RuntimeConfigurable) children.nextElement();
            w wVar2 = new w(runtimeConfigurable2.getElementTag());
            wVar.u(wVar2);
            wVar2.setProject(getProject());
            wVar2.r(runtimeConfigurable2);
            runtimeConfigurable2.setProxy(wVar2);
            p(runtimeConfigurable2, wVar2);
        }
    }

    public void e() {
    }

    public t g() {
        return this.f68379a;
    }

    public String j() {
        return this.f68380b;
    }

    public String k() {
        return this.f68381c;
    }

    protected RuntimeConfigurable l() {
        return this.f68382d;
    }

    @Override
    public void log(String str) {
        log(str, 2);
    }

    public void m() {
    }

    public void n() {
        if (this.f68383e) {
            i();
            return;
        }
        RuntimeConfigurable runtimeConfigurable = this.f68382d;
        if (runtimeConfigurable != null) {
            runtimeConfigurable.maybeConfigure(getProject());
        }
    }

    public final void o() throws Throwable {
        Throwable th2;
        if (this.f68383e) {
            i().D().o();
            return;
        }
        getProject().l(this);
        BuildException buildException = null;
        try {
            try {
                n();
                fz.a.a(this);
                getProject().k(this, null);
            } catch (Error e10) {
                throw e10;
            } catch (BuildException e11) {
                if (e11.getLocation() == Location.UNKNOWN_LOCATION) {
                    e11.setLocation(getLocation());
                }
                try {
                    throw e11;
                } catch (Throwable th3) {
                    th2 = th3;
                    buildException = e11;
                    getProject().k(this, buildException);
                    throw th2;
                }
            } catch (Exception e12) {
                BuildException buildException2 = new BuildException(e12);
                buildException2.setLocation(getLocation());
                throw buildException2;
            }
        } catch (Throwable th4) {
            th2 = th4;
            getProject().k(this, buildException);
            throw th2;
        }
    }

    public void q(t tVar) {
        this.f68379a = tVar;
    }

    public void r(RuntimeConfigurable runtimeConfigurable) {
        this.f68382d = runtimeConfigurable;
    }

    public void s(String str) {
        this.f68380b = str;
    }

    public void t(String str) {
        this.f68381c = str;
    }

    @Override
    public void log(String str, int i10) {
        if (getProject() != null) {
            getProject().z(this, str, i10);
        } else {
            super.log(str, i10);
        }
    }
}
