package org.apache.tools.ant;

import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;
import java.util.WeakHashMap;

public class Project {

    private static final String f68043r = System.getProperty("line.separator");

    private static final org.apache.tools.ant.util.d f68044s = org.apache.tools.ant.util.d.k();

    static Class f68045t;

    private String f68046a;

    private String f68050e;

    private org.apache.tools.ant.types.i f68052g;

    private org.apache.tools.ant.types.j f68053h;

    private File f68054i;

    private Vector f68055j;

    private ClassLoader f68056k;

    private Map f68057l;

    private Map f68058m;

    private jz.b f68059n;

    private InputStream f68060o;

    private boolean f68061p;

    private boolean f68062q;

    private Hashtable f68047b = new AntRefTable();

    private HashMap f68048c = new HashMap();

    private Project f68049d = null;

    private Hashtable f68051f = new Hashtable();

    private static class AntRefTable extends Hashtable {
        AntRefTable() {
        }

        public Object a(Object obj) {
            return super.get(obj);
        }

        @Override
        public Object get(Object obj) {
            Object objA = a(obj);
            if (!(objA instanceof w)) {
                return objA;
            }
            w wVar = (w) objA;
            wVar.n();
            return wVar.B();
        }
    }

    public Project() {
        org.apache.tools.ant.types.i iVar = new org.apache.tools.ant.types.i();
        this.f68052g = iVar;
        iVar.setProject(this);
        this.f68053h = new org.apache.tools.ant.types.j(this.f68052g);
        this.f68055j = new Vector();
        this.f68056k = null;
        this.f68057l = Collections.synchronizedMap(new WeakHashMap());
        this.f68058m = Collections.synchronizedMap(new WeakHashMap());
        this.f68059n = null;
        this.f68060o = null;
        this.f68061p = false;
        this.f68062q = false;
        this.f68059n = new jz.a();
    }

    private Object E(String str, Project project) {
        w wVar = (w) this.f68048c.get(str);
        if (wVar == null) {
            Project project2 = this.f68049d;
            if (project2 == null) {
                return null;
            }
            return project2.E(str, project);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Warning: Reference ");
        stringBuffer.append(str);
        stringBuffer.append(" has not been set at runtime,");
        stringBuffer.append(" but was found during");
        String str2 = f68043r;
        stringBuffer.append(str2);
        stringBuffer.append("build file parsing, attempting to resolve.");
        stringBuffer.append(" Future versions of Ant may support");
        stringBuffer.append(str2);
        stringBuffer.append(" referencing ids defined in non-executed targets.");
        project.x(stringBuffer.toString(), 1);
        w wVarW = wVar.w(project);
        wVarW.n();
        return wVarW.B();
    }

    private void L(String str, String str2) {
        s.d(this).l(null, str, str2, false);
    }

    public static boolean N(String str) {
        return "on".equalsIgnoreCase(str) || "true".equalsIgnoreCase(str) || "yes".equalsIgnoreCase(str);
    }

    static Class f(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    private void j(BuildEvent buildEvent, String str, int i10) {
        String str2 = org.apache.tools.ant.util.p.f68442a;
        if (str.endsWith(str2)) {
            buildEvent.setMessage(str.substring(0, str.length() - str2.length()), i10);
        } else {
            buildEvent.setMessage(str, i10);
        }
        synchronized (this) {
            if (this.f68062q) {
                return;
            }
            try {
                this.f68062q = true;
                Iterator it = this.f68055j.iterator();
                while (it.hasNext()) {
                    ((c) it.next()).a(buildEvent);
                }
                this.f68062q = false;
            } catch (Throwable th2) {
                this.f68062q = false;
                throw th2;
            }
        }
    }

    public static Project q(Object obj) {
        if (obj instanceof q) {
            return ((q) obj).getProject();
        }
        try {
            Method method = obj.getClass().getMethod("getProject", null);
            Class<?> clsF = f68045t;
            if (clsF == null) {
                clsF = f("org.apache.tools.ant.Project");
                f68045t = clsF;
            }
            if (clsF == method.getReturnType()) {
                return (Project) method.invoke(obj, null);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public synchronized void A(Thread thread, u uVar) {
        try {
            if (uVar != null) {
                this.f68057l.put(thread, uVar);
                this.f68058m.put(thread.getThreadGroup(), uVar);
            } else {
                this.f68057l.remove(thread);
                this.f68058m.remove(thread.getThreadGroup());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void B(c cVar) {
        Vector vectorN = n();
        vectorN.removeElement(cVar);
        this.f68055j = vectorN;
    }

    public String C(String str) {
        return s.d(this).i(null, str, null);
    }

    public File D(String str) {
        return f68044s.q(this.f68054i, str);
    }

    public void F(File file) {
        File fileO = f68044s.o(file.getAbsolutePath());
        if (!fileO.exists()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Basedir ");
            stringBuffer.append(fileO.getAbsolutePath());
            stringBuffer.append(" does not exist");
            throw new BuildException(stringBuffer.toString());
        }
        if (!fileO.isDirectory()) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Basedir ");
            stringBuffer2.append(fileO.getAbsolutePath());
            stringBuffer2.append(" is not a directory");
            throw new BuildException(stringBuffer2.toString());
        }
        this.f68054i = fileO;
        L("basedir", fileO.getPath());
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append("Project base dir set to: ");
        stringBuffer3.append(this.f68054i);
        x(stringBuffer3.toString(), 3);
    }

    public void G(String str) {
        F(new File(str));
    }

    public void H(String str) {
        this.f68050e = str;
    }

    public void I(String str) {
        M("ant.project.name", str);
        this.f68046a = str;
    }

    public void J(String str, String str2) {
        s.d(this).j(null, str, str2);
    }

    public final void K(Object obj) {
        if (obj instanceof q) {
            ((q) obj).setProject(this);
            return;
        }
        try {
            Class<?> cls = obj.getClass();
            Class<?> clsF = f68045t;
            if (clsF == null) {
                clsF = f("org.apache.tools.ant.Project");
                f68045t = clsF;
            }
            Method method = cls.getMethod("setProject", clsF);
            if (method != null) {
                method.invoke(obj, this);
            }
        } catch (Throwable unused) {
        }
    }

    public void M(String str, String str2) {
        s.d(this).n(null, str, str2);
    }

    public synchronized void a(c cVar) {
        if (this.f68055j.contains(cVar)) {
            return;
        }
        Vector vectorN = n();
        vectorN.addElement(cVar);
        this.f68055j = vectorN;
    }

    public void b(String str, Object obj) {
        this.f68048c.put(str, obj);
    }

    public void c(String str, t tVar) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(" +Target: ");
        stringBuffer.append(str);
        x(stringBuffer.toString(), 4);
        tVar.m(this);
        this.f68051f.put(str, tVar);
    }

    public void d(String str, Object obj) {
        synchronized (this.f68047b) {
            try {
                Object objA = ((AntRefTable) this.f68047b).a(str);
                if (objA == obj) {
                    return;
                }
                if (objA != null && !(objA instanceof w)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Overriding previous definition of reference to ");
                    stringBuffer.append(str);
                    x(stringBuffer.toString(), 3);
                }
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Adding reference: ");
                stringBuffer2.append(str);
                x(stringBuffer2.toString(), 4);
                this.f68047b.put(str, obj);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(String str, t tVar) {
        if (this.f68051f.get(str) == null) {
            c(str, tVar);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Duplicate target: `");
        stringBuffer.append(str);
        stringBuffer.append("'");
        throw new BuildException(stringBuffer.toString());
    }

    public a g(org.apache.tools.ant.types.m mVar) {
        return new a(getClass().getClassLoader(), this, mVar);
    }

    protected void h(Project project, String str, Throwable th2, int i10) {
        BuildEvent buildEvent = new BuildEvent(project);
        buildEvent.setException(th2);
        j(buildEvent, str, i10);
    }

    protected void i(u uVar, String str, Throwable th2, int i10) {
        BuildEvent buildEvent = new BuildEvent(uVar);
        buildEvent.setException(th2);
        j(buildEvent, str, i10);
    }

    protected void k(u uVar, Throwable th2) {
        A(Thread.currentThread(), null);
        System.out.flush();
        System.err.flush();
        BuildEvent buildEvent = new BuildEvent(uVar);
        buildEvent.setException(th2);
        Iterator it = this.f68055j.iterator();
        while (it.hasNext()) {
            ((c) it.next()).c(buildEvent);
        }
    }

    protected void l(u uVar) {
        A(Thread.currentThread(), uVar);
        BuildEvent buildEvent = new BuildEvent(uVar);
        Iterator it = this.f68055j.iterator();
        while (it.hasNext()) {
            ((c) it.next()).b(buildEvent);
        }
    }

    public File m() {
        if (this.f68054i == null) {
            try {
                G(".");
            } catch (BuildException e10) {
                e10.printStackTrace();
            }
        }
        return this.f68054i;
    }

    public Vector n() {
        return (Vector) this.f68055j.clone();
    }

    public ClassLoader o() {
        return this.f68056k;
    }

    public String p(Object obj) {
        return ComponentHelper.j(this).m(obj);
    }

    public Hashtable r() {
        return s.d(this).b();
    }

    public String s(String str) {
        return (String) s.d(this).c(null, str);
    }

    public Object t(String str) {
        Object obj = this.f68047b.get(str);
        if (obj != null) {
            return obj;
        }
        Object objE = E(str, this);
        if (objE == null && !str.equals("ant.PropertyHelper")) {
            Vector vector = new Vector();
            s.d(this).g(str, new Vector(), vector);
            if (vector.size() == 1) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unresolvable reference ");
                stringBuffer.append(str);
                stringBuffer.append(" might be a misuse of property expansion syntax.");
                x(stringBuffer.toString(), 1);
            }
        }
        return objE;
    }

    public Hashtable u() {
        return this.f68051f;
    }

    public u v(Thread thread) {
        u uVar = (u) this.f68057l.get(thread);
        if (uVar == null) {
            for (ThreadGroup threadGroup = thread.getThreadGroup(); uVar == null && threadGroup != null; threadGroup = threadGroup.getParent()) {
                uVar = (u) this.f68058m.get(threadGroup);
            }
        }
        return uVar;
    }

    public Hashtable w() {
        return s.d(this).f();
    }

    public void x(String str, int i10) {
        y(str, null, i10);
    }

    public void y(String str, Throwable th2, int i10) {
        h(this, str, th2, i10);
    }

    public void z(u uVar, String str, int i10) {
        i(uVar, str, null, i10);
    }
}
