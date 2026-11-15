package defpackage;

import freemarker.template.TemplateModelException;
import freemarker.template.a;
import java.util.Iterator;
import java.util.List;
import org.python.core.Py;
import org.python.core.PyException;
import org.python.core.PyObject;

public class ud5 implements a, mga, ofa, yfa, c8, lpc {
    public static final fq6 d = new td5();
    public static Class e;
    public final PyObject b;
    public final xd5 c;

    public ud5(PyObject pyObject, xd5 xd5Var) {
        this.b = pyObject;
        this.c = xd5Var;
    }

    public static Class b(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    @Override
    public Object exec(List list) throws TemplateModelException {
        int size = list.size();
        try {
            if (size == 0) {
                return this.c.c(this.b.__call__());
            }
            int i = 0;
            if (size == 1) {
                xd5 xd5Var = this.c;
                return xd5Var.c(this.b.__call__(xd5Var.f((zfa) list.get(0))));
            }
            PyObject[] pyObjectArr = new PyObject[size];
            Iterator it = list.iterator();
            while (it.hasNext()) {
                pyObjectArr[i] = this.c.f((zfa) it.next());
                i++;
            }
            return this.c.c(this.b.__call__(pyObjectArr));
        } catch (PyException e2) {
            throw new TemplateModelException((Exception) e2);
        }
    }

    @Override
    public zfa get(String str) throws TemplateModelException {
        PyObject pyObject__finditem__;
        if (str != null) {
            str = str.intern();
        }
        try {
            if (this.c.e()) {
                pyObject__finditem__ = this.b.__findattr__(str);
                if (pyObject__finditem__ == null) {
                    pyObject__finditem__ = this.b.__finditem__(str);
                }
            } else {
                pyObject__finditem__ = this.b.__finditem__(str);
                if (pyObject__finditem__ == null) {
                    pyObject__finditem__ = this.b.__findattr__(str);
                }
            }
            return this.c.c(pyObject__finditem__);
        } catch (PyException e2) {
            throw new TemplateModelException((Exception) e2);
        }
    }

    @Override
    public Object getAdaptedObject(Class cls) throws Throwable {
        PyObject pyObject = this.b;
        if (pyObject == null) {
            return null;
        }
        Object obj__tojava__ = pyObject.__tojava__(cls);
        if (obj__tojava__ != Py.NoConversion) {
            return obj__tojava__;
        }
        PyObject pyObject2 = this.b;
        Class clsB = e;
        if (clsB == null) {
            clsB = b("java.lang.Object");
            e = clsB;
        }
        return pyObject2.__tojava__(clsB);
    }

    @Override
    public boolean getAsBoolean() throws TemplateModelException {
        try {
            return this.b.__nonzero__();
        } catch (PyException e2) {
            throw new TemplateModelException((Exception) e2);
        }
    }

    @Override
    public String getAsString() throws TemplateModelException {
        try {
            return this.b.toString();
        } catch (PyException e2) {
            throw new TemplateModelException((Exception) e2);
        }
    }

    @Override
    public Object getWrappedObject() throws Throwable {
        PyObject pyObject = this.b;
        if (pyObject == null) {
            return null;
        }
        Class clsB = e;
        if (clsB == null) {
            clsB = b("java.lang.Object");
            e = clsB;
        }
        return pyObject.__tojava__(clsB);
    }

    @Override
    public boolean isEmpty() throws TemplateModelException {
        try {
            return this.b.__len__() == 0;
        } catch (PyException e2) {
            throw new TemplateModelException((Exception) e2);
        }
    }
}
