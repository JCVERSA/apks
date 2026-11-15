package org.apache.tools.ant.util;

import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;

public class a {

    public static class C0835a {

        private final org.apache.tools.ant.q f68385a;

        private org.apache.tools.ant.types.m f68386b;

        private String f68387c;

        private String f68388d;

        private boolean f68389e = false;

        C0835a(org.apache.tools.ant.q qVar) {
            this.f68385a = qVar;
        }

        private Project c() {
            return this.f68385a.getProject();
        }

        public String a() {
            String str = this.f68388d;
            if (str != null || this.f68387c == null) {
                return str;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("ant.loader.");
            stringBuffer.append(this.f68387c);
            return stringBuffer.toString();
        }

        public ClassLoader b() {
            return a.b(c(), this.f68386b, a(), this.f68389e, this.f68388d != null || a.e(c()));
        }
    }

    public static ClassLoader b(Project project, org.apache.tools.ant.types.m mVar, String str, boolean z10, boolean z11) {
        ClassLoader classLoaderD;
        if (str == null || !z11) {
            classLoaderD = null;
        } else {
            Object objT = project.t(str);
            if (objT != null && !(objT instanceof ClassLoader)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("The specified loader id ");
                stringBuffer.append(str);
                stringBuffer.append(" does not reference a class loader");
                throw new BuildException(stringBuffer.toString());
            }
            classLoaderD = (ClassLoader) objT;
        }
        if (classLoaderD == null) {
            classLoaderD = d(project, mVar, z10);
            if (str != null && z11) {
                project.d(str, classLoaderD);
            }
        }
        return classLoaderD;
    }

    public static C0835a c(org.apache.tools.ant.q qVar) {
        return new C0835a(qVar);
    }

    public static ClassLoader d(Project project, org.apache.tools.ant.types.m mVar, boolean z10) {
        org.apache.tools.ant.a aVarG = project.g(mVar);
        if (z10) {
            aVarG.G(false);
            aVarG.e();
        }
        return aVarG;
    }

    public static boolean e(Project project) {
        return project.s("ant.reuse.loader") != null;
    }

    public static Object f(String str, ClassLoader classLoader, Class cls) {
        try {
            Object objNewInstance = Class.forName(str, true, classLoader).newInstance();
            if (cls.isInstance(objNewInstance)) {
                return objNewInstance;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Class of unexpected Type: ");
            stringBuffer.append(str);
            stringBuffer.append(" expected :");
            stringBuffer.append(cls);
            throw new BuildException(stringBuffer.toString());
        } catch (ClassNotFoundException e10) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Class not found: ");
            stringBuffer2.append(str);
            throw new BuildException(stringBuffer2.toString(), e10);
        } catch (IllegalAccessException e11) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("Could not instantiate ");
            stringBuffer3.append(str);
            stringBuffer3.append(". Specified class should have a ");
            stringBuffer3.append("public constructor.");
            throw new BuildException(stringBuffer3.toString(), e11);
        } catch (InstantiationException e12) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("Could not instantiate ");
            stringBuffer4.append(str);
            stringBuffer4.append(". Specified class should have a no ");
            stringBuffer4.append("argument constructor.");
            throw new BuildException(stringBuffer4.toString(), e12);
        } catch (LinkageError e13) {
            StringBuffer stringBuffer5 = new StringBuffer();
            stringBuffer5.append("Class ");
            stringBuffer5.append(str);
            stringBuffer5.append(" could not be loaded because of an invalid dependency.");
            throw new BuildException(stringBuffer5.toString(), e13);
        }
    }
}
