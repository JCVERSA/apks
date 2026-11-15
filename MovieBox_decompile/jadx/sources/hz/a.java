package hz;

import android.support.v4.media.session.c;
import java.io.Reader;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Vector;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.types.h;
import org.apache.tools.ant.types.m;

public final class a {

    static Class f61582e;

    static Class f61583f;

    static Class f61584g;

    public Reader f61585a;

    public int f61586b = 8192;

    public Vector f61587c = new Vector();

    private Project f61588d = null;

    static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    private void f(Object obj) {
        Project project = this.f61588d;
        if (project == null) {
            return;
        }
        if (obj instanceof gz.a) {
            ((gz.a) obj).b(project);
        } else {
            project.K(obj);
        }
    }

    public Reader b() {
        Class<?> cls;
        Reader reader = this.f61585a;
        if (reader == null) {
            throw new BuildException("primaryReader must not be null.");
        }
        int size = this.f61587c.size();
        Vector vector = new Vector();
        for (int i10 = 0; i10 < size; i10++) {
            Vector vectorE = ((h) this.f61587c.elementAt(i10)).e();
            int size2 = vectorE.size();
            for (int i11 = 0; i11 < size2; i11++) {
                vector.addElement(vectorE.elementAt(i11));
            }
        }
        int size3 = vector.size();
        if (size3 > 0) {
            for (int i12 = 0; i12 < size3; i12++) {
                if (vector.elementAt(i12) instanceof org.apache.tools.ant.types.a) {
                    org.apache.tools.ant.types.a aVar = (org.apache.tools.ant.types.a) vector.elementAt(i12);
                    String strE = aVar.e();
                    m mVarG = aVar.g();
                    Project project = aVar.getProject();
                    if (strE == null) {
                        continue;
                    } else {
                        if (mVarG == null) {
                            try {
                                cls = Class.forName(strE);
                            } catch (ClassNotFoundException e10) {
                                throw new BuildException(e10);
                            } catch (IllegalAccessException e11) {
                                throw new BuildException(e11);
                            } catch (InstantiationException e12) {
                                throw new BuildException(e12);
                            } catch (InvocationTargetException e13) {
                                throw new BuildException(e13);
                            }
                        } else {
                            cls = Class.forName(strE, true, project.g(mVarG));
                        }
                        if (cls == null) {
                            continue;
                        } else {
                            Class clsA = f61582e;
                            if (clsA == null) {
                                clsA = a("java.io.FilterReader");
                                f61582e = clsA;
                            }
                            if (!clsA.isAssignableFrom(cls)) {
                                StringBuffer stringBuffer = new StringBuffer();
                                stringBuffer.append(strE);
                                stringBuffer.append(" does not extend java.io.FilterReader");
                                throw new BuildException(stringBuffer.toString());
                            }
                            Constructor<?>[] constructors = cls.getConstructors();
                            int i13 = 0;
                            while (true) {
                                if (i13 >= constructors.length) {
                                    StringBuffer stringBuffer2 = new StringBuffer();
                                    stringBuffer2.append(strE);
                                    stringBuffer2.append(" does not define a public constructor");
                                    stringBuffer2.append(" that takes in a Reader as its ");
                                    stringBuffer2.append("single argument.");
                                    throw new BuildException(stringBuffer2.toString());
                                }
                                Class<?>[] parameterTypes = constructors[i13].getParameterTypes();
                                if (parameterTypes.length == 1) {
                                    Class<?> cls2 = parameterTypes[0];
                                    Class<?> clsA2 = f61583f;
                                    if (clsA2 == null) {
                                        clsA2 = a("java.io.Reader");
                                        f61583f = clsA2;
                                    }
                                    if (cls2.isAssignableFrom(clsA2)) {
                                        reader = (Reader) constructors[i13].newInstance(reader);
                                        f(reader);
                                        Class clsA3 = f61584g;
                                        if (clsA3 == null) {
                                            clsA3 = a("org.apache.tools.ant.types.Parameterizable");
                                            f61584g = clsA3;
                                        }
                                        if (!clsA3.isAssignableFrom(cls)) {
                                            break;
                                        }
                                        aVar.i();
                                        c.a(reader);
                                        throw null;
                                    }
                                }
                                i13++;
                            }
                        }
                    }
                }
            }
        }
        return reader;
    }

    public void c(Vector vector) {
        this.f61587c = vector;
    }

    public void d(Reader reader) {
        this.f61585a = reader;
    }

    public void e(Project project) {
        this.f61588d = project;
    }
}
