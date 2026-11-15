package org.apache.tools.ant;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

public class w extends u {

    private String f68445g;

    private String f68447i;

    private Object f68448j;

    private String f68446h = "";

    private List f68449k = null;

    private boolean f68450l = false;

    public w(String str) {
        this.f68445g = str;
    }

    private boolean E(String str, o oVar, Object obj, w wVar, RuntimeConfigurable runtimeConfigurable) {
        String strE = r.e(wVar.y(), wVar.C());
        if (!oVar.s(str, strE)) {
            return false;
        }
        o.d dVarI = oVar.i(getProject(), str, obj, strE, wVar);
        dVarI.b(runtimeConfigurable.getPolyType());
        Object objA = dVarI.a();
        runtimeConfigurable.setCreator(dVarI);
        runtimeConfigurable.setProxy(objA);
        if (objA instanceof u) {
            u uVar = (u) objA;
            uVar.r(runtimeConfigurable);
            uVar.s(strE);
            uVar.t(strE);
        }
        if (objA instanceof q) {
            ((q) objA).setLocation(wVar.getLocation());
        }
        runtimeConfigurable.maybeConfigure(getProject());
        wVar.F(objA, runtimeConfigurable);
        dVarI.c();
        return true;
    }

    public String A() {
        return this.f68447i;
    }

    public Object B() {
        return this.f68448j;
    }

    public String C() {
        return this.f68445g;
    }

    public u D() {
        Object obj = this.f68448j;
        if (obj instanceof u) {
            return (u) obj;
        }
        return null;
    }

    protected void F(Object obj, RuntimeConfigurable runtimeConfigurable) {
        String strY = y();
        o oVarK = o.k(getProject(), obj.getClass());
        List<w> list = this.f68449k;
        if (list != null) {
            int i10 = 0;
            for (w wVar : list) {
                RuntimeConfigurable child = runtimeConfigurable.getChild(i10);
                try {
                    if (!E(strY, oVarK, obj, wVar, child)) {
                        if (obj instanceof v) {
                            ((v) obj).b(wVar);
                        } else {
                            oVarK.t(getProject(), obj, wVar.C());
                        }
                    }
                    i10++;
                } catch (UnsupportedElementException e10) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(runtimeConfigurable.getElementTag());
                    stringBuffer.append(" doesn't support the nested \"");
                    stringBuffer.append(e10.getElement());
                    stringBuffer.append("\" element.");
                    throw new BuildException(stringBuffer.toString(), e10);
                }
            }
        }
    }

    protected Object G(w wVar, RuntimeConfigurable runtimeConfigurable) {
        ComponentHelper componentHelperJ = ComponentHelper.j(getProject());
        String strX = wVar.x();
        Object objE = componentHelperJ.e(wVar, wVar.y(), strX);
        if (objE == null) {
            throw z("task or type", strX);
        }
        if (objE instanceof w) {
            w wVar2 = (w) objE;
            objE = wVar2.G(wVar2, runtimeConfigurable);
        }
        if (objE instanceof u) {
            ((u) objE).q(g());
        }
        if (objE instanceof q) {
            ((q) objE).setLocation(getLocation());
        }
        return objE;
    }

    public void H(String str) {
        if (str.equals("ant:current")) {
            str = ComponentHelper.j(getProject()).k();
        }
        if (str == null) {
            str = "";
        }
        this.f68446h = str;
    }

    public void I(String str) {
        this.f68447i = str;
    }

    public void J(Object obj) {
        this.f68448j = obj;
    }

    @Override
    public String j() {
        Object obj = this.f68448j;
        return (obj == null || !(obj instanceof u)) ? super.j() : ((u) obj).j();
    }

    @Override
    public RuntimeConfigurable l() {
        return super.l();
    }

    @Override
    public void n() {
        if (this.f68448j != null) {
            return;
        }
        v(G(this, l()));
    }

    public void u(w wVar) {
        if (this.f68449k == null) {
            this.f68449k = new ArrayList();
        }
        this.f68449k.add(wVar);
    }

    public void v(Object obj) {
        u uVar;
        this.f68448j = obj;
        l().setProxy(this.f68448j);
        Object obj2 = this.f68448j;
        if (obj2 instanceof u) {
            uVar = (u) obj2;
            uVar.r(l());
            if (l().getId() != null) {
                g().g(this, (u) this.f68448j);
            }
        } else {
            uVar = null;
        }
        if (uVar != null) {
            uVar.n();
        } else {
            l().maybeConfigure(getProject());
        }
        F(this.f68448j, l());
    }

    public w w(Project project) {
        w wVar = new w(C());
        wVar.H(y());
        wVar.setProject(project);
        wVar.I(A());
        wVar.t(k());
        wVar.s(j());
        wVar.setLocation(getLocation());
        if (g() == null) {
            t tVar = new t();
            tVar.m(getProject());
            wVar.q(tVar);
        } else {
            wVar.q(g());
        }
        RuntimeConfigurable runtimeConfigurable = new RuntimeConfigurable(wVar, j());
        runtimeConfigurable.setPolyType(l().getPolyType());
        for (Map.Entry entry : l().getAttributeMap().entrySet()) {
            runtimeConfigurable.setAttribute((String) entry.getKey(), (String) entry.getValue());
        }
        runtimeConfigurable.addText(l().getText().toString());
        Enumeration children = l().getChildren();
        while (children.hasMoreElements()) {
            w wVarW = ((w) ((RuntimeConfigurable) children.nextElement()).getProxy()).w(project);
            runtimeConfigurable.addChild(wVarW.l());
            wVar.u(wVarW);
        }
        return wVar;
    }

    protected String x() {
        return r.e(y(), C());
    }

    public String y() {
        return this.f68446h;
    }

    protected BuildException z(String str, String str2) {
        return new BuildException(ComponentHelper.j(getProject()).f(str2, str), getLocation());
    }
}
