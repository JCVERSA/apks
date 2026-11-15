package org.apache.tools.ant;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public class b {

    static Class f68082g;

    private String f68083a;

    private Class f68084b;

    private Class f68085c;

    private Class f68086d;

    private String f68087e;

    private ClassLoader f68088f;

    static Class b(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    private Object d(Project project, Class cls) {
        try {
            return l(cls, project);
        } catch (IllegalAccessException unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Could not create type ");
            stringBuffer.append(this.f68083a);
            stringBuffer.append(" as the constructor ");
            stringBuffer.append(cls);
            stringBuffer.append(" is not accessible");
            throw new BuildException(stringBuffer.toString());
        } catch (InstantiationException unused2) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Could not create type ");
            stringBuffer2.append(this.f68083a);
            stringBuffer2.append(" as the class ");
            stringBuffer2.append(cls);
            stringBuffer2.append(" is abstract");
            throw new BuildException(stringBuffer2.toString());
        } catch (NoClassDefFoundError e10) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("Type ");
            stringBuffer3.append(this.f68083a);
            stringBuffer3.append(": A class needed by class ");
            stringBuffer3.append(cls);
            stringBuffer3.append(" cannot be found: ");
            stringBuffer3.append(e10.getMessage());
            throw new BuildException(stringBuffer3.toString(), e10);
        } catch (NoSuchMethodException unused3) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("Could not create type ");
            stringBuffer4.append(this.f68083a);
            stringBuffer4.append(" as the class ");
            stringBuffer4.append(cls);
            stringBuffer4.append(" has no compatible constructor");
            throw new BuildException(stringBuffer4.toString());
        } catch (InvocationTargetException e11) {
            Throwable targetException = e11.getTargetException();
            StringBuffer stringBuffer5 = new StringBuffer();
            stringBuffer5.append("Could not create type ");
            stringBuffer5.append(this.f68083a);
            stringBuffer5.append(" due to ");
            stringBuffer5.append(targetException);
            throw new BuildException(stringBuffer5.toString(), targetException);
        } catch (Throwable th2) {
            StringBuffer stringBuffer6 = new StringBuffer();
            stringBuffer6.append("Could not create type ");
            stringBuffer6.append(this.f68083a);
            stringBuffer6.append(" due to ");
            stringBuffer6.append(th2);
            throw new BuildException(stringBuffer6.toString(), th2);
        }
    }

    private String e(Class cls) {
        return cls == null ? "<null>" : cls.getClass().getName();
    }

    private Object k(Project project) {
        Class clsJ = j(project);
        if (clsJ == null) {
            return null;
        }
        Object objD = d(project, clsJ);
        if (objD == null || this.f68085c == null) {
            return objD;
        }
        Class cls = this.f68086d;
        if (cls != null && cls.isAssignableFrom(objD.getClass())) {
            return objD;
        }
        android.support.v4.media.session.c.a(d(project, this.f68085c));
        return null;
    }

    public void a(Project project) {
        if (this.f68084b == null) {
            Class clsJ = j(project);
            this.f68084b = clsJ;
            if (clsJ == null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unable to create class for ");
                stringBuffer.append(i());
                throw new BuildException(stringBuffer.toString());
            }
        }
        if (this.f68085c != null) {
            Class cls = this.f68086d;
            if (cls == null || !cls.isAssignableFrom(this.f68084b)) {
                android.support.v4.media.session.c.a(d(project, this.f68085c));
                throw new BuildException("Unable to create adapter object");
            }
        }
    }

    public Object c(Project project) {
        return k(project);
    }

    public ClassLoader f() {
        return this.f68088f;
    }

    public String g() {
        return this.f68087e;
    }

    public Class h(Project project) {
        Class<?> clsJ;
        if (this.f68086d != null && ((clsJ = j(project)) == null || this.f68086d.isAssignableFrom(clsJ))) {
            return clsJ;
        }
        Class cls = this.f68085c;
        return cls == null ? j(project) : cls;
    }

    public String i() {
        return this.f68083a;
    }

    public Class j(Project project) {
        try {
            return m();
        } catch (ClassNotFoundException unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Could not load class (");
            stringBuffer.append(this.f68087e);
            stringBuffer.append(") for type ");
            stringBuffer.append(this.f68083a);
            project.x(stringBuffer.toString(), 4);
            return null;
        } catch (NoClassDefFoundError e10) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Could not load a dependent class (");
            stringBuffer2.append(e10.getMessage());
            stringBuffer2.append(") for type ");
            stringBuffer2.append(this.f68083a);
            project.x(stringBuffer2.toString(), 4);
            return null;
        }
    }

    public Object l(Class cls, Project project) {
        Constructor constructor;
        boolean z10;
        try {
            constructor = cls.getConstructor(null);
            z10 = true;
        } catch (NoSuchMethodException unused) {
            Class<?> clsB = f68082g;
            if (clsB == null) {
                clsB = b("org.apache.tools.ant.Project");
                f68082g = clsB;
            }
            constructor = cls.getConstructor(clsB);
            z10 = false;
        }
        Object objNewInstance = constructor.newInstance(z10 ? new Object[0] : new Object[]{project});
        project.K(objNewInstance);
        return objNewInstance;
    }

    public Class m() {
        Class cls = this.f68084b;
        if (cls != null) {
            return cls;
        }
        ClassLoader classLoader = this.f68088f;
        if (classLoader == null) {
            this.f68084b = Class.forName(this.f68087e);
        } else {
            this.f68084b = classLoader.loadClass(this.f68087e);
        }
        return this.f68084b;
    }

    public boolean n(b bVar, Project project) {
        return bVar != null && bVar.getClass() == getClass() && bVar.j(project).equals(j(project)) && bVar.h(project).equals(h(project)) && bVar.f68085c == this.f68085c && bVar.f68086d == this.f68086d;
    }

    public void o(Class cls) {
        this.f68086d = cls;
    }

    public void p(Class cls) {
        this.f68085c = cls;
    }

    public void q(Class cls) {
        this.f68084b = cls;
        if (cls == null) {
            return;
        }
        ClassLoader classLoader = this.f68088f;
        if (classLoader == null) {
            classLoader = cls.getClassLoader();
        }
        this.f68088f = classLoader;
        String name = this.f68087e;
        if (name == null) {
            name = cls.getName();
        }
        this.f68087e = name;
    }

    public void r(ClassLoader classLoader) {
        this.f68088f = classLoader;
    }

    public void s(String str) {
        this.f68087e = str;
    }

    public void t(String str) {
        this.f68083a = str;
    }

    public boolean u(b bVar, Project project) {
        if (bVar == null || getClass() != bVar.getClass() || !g().equals(bVar.g()) || !e(this.f68085c).equals(e(bVar.f68085c)) || !e(this.f68086d).equals(e(bVar.f68086d))) {
            return false;
        }
        ClassLoader classLoaderF = bVar.f();
        ClassLoader classLoaderF2 = f();
        return classLoaderF == classLoaderF2 || ((classLoaderF instanceof a) && (classLoaderF2 instanceof a) && ((a) classLoaderF).s().equals(((a) classLoaderF2).s()));
    }
}
