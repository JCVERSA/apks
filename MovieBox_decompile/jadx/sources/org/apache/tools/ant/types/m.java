package org.apache.tools.ant.types;

import java.io.File;
import java.util.Collections;
import java.util.Iterator;
import java.util.Stack;
import java.util.Vector;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;

public class m extends e implements Cloneable, u {

    public static m f68332c = new m(null, System.getProperty("java.class.path"));

    public static m f68333d = new m(null, System.getProperty("sun.boot.class.path"));

    private static final Iterator f68334e = Collections.EMPTY_SET.iterator();

    static Class f68335f;

    private Boolean f68336a;

    private mz.g f68337b;

    public class a implements u {

        private String[] f68338a;

        public a() {
        }

        @Override
        public boolean a() {
            return true;
        }

        public void b(File file) {
            this.f68338a = new String[]{m.u(file.getAbsolutePath())};
        }

        public void c(String str) {
            this.f68338a = m.w(m.this.getProject(), str);
        }

        @Override
        public Iterator iterator() {
            return new mz.d(null, this.f68338a);
        }

        @Override
        public int size() {
            String[] strArr = this.f68338a;
            if (strArr == null) {
                return 0;
            }
            return strArr.length;
        }
    }

    public m(Project project, String str) {
        this(project);
        o().c(str);
    }

    static Class k(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    private m l(String str, m mVar) {
        String strS;
        m mVar2 = new m(getProject());
        if (getProject() != null && (strS = getProject().s("build.sysclasspath")) != null) {
            str = strS;
        }
        if (str.equals("only")) {
            mVar2.h(mVar, true);
        } else if (str.equals("first")) {
            mVar2.h(mVar, true);
            mVar2.g(this);
        } else if (str.equals("ignore")) {
            mVar2.g(this);
        } else {
            if (!str.equals("last")) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("invalid value for build.sysclasspath: ");
                stringBuffer.append(str);
                log(stringBuffer.toString(), 1);
            }
            mVar2.g(this);
            mVar2.h(mVar, true);
        }
        return mVar2;
    }

    private synchronized boolean q() {
        try {
            if (this.f68336a == null) {
                this.f68336a = p() ? Boolean.TRUE : Boolean.FALSE;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f68336a.booleanValue();
    }

    private static File s(Project project, String str) {
        return org.apache.tools.ant.util.d.k().q(project == null ? null : project.m(), str);
    }

    public static String u(String str) {
        if (str == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        for (int i10 = 0; i10 < stringBuffer.length(); i10++) {
            v(stringBuffer, i10);
        }
        return stringBuffer.toString();
    }

    protected static boolean v(StringBuffer stringBuffer, int i10) {
        if (stringBuffer.charAt(i10) != '/' && stringBuffer.charAt(i10) != '\\') {
            return false;
        }
        stringBuffer.setCharAt(i10, File.separatorChar);
        return true;
    }

    public static String[] w(Project project, String str) {
        Vector vector = new Vector();
        if (str == null) {
            return new String[0];
        }
        org.apache.tools.ant.p pVar = new org.apache.tools.ant.p(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (pVar.a()) {
            String strB = pVar.b();
            try {
                stringBuffer.append(s(project, strB).getPath());
            } catch (BuildException unused) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Dropping path element ");
                stringBuffer2.append(strB);
                stringBuffer2.append(" as it is not valid relative to the project");
                project.x(stringBuffer2.toString(), 3);
            }
            for (int i10 = 0; i10 < stringBuffer.length(); i10++) {
                v(stringBuffer, i10);
            }
            vector.addElement(stringBuffer.toString());
            stringBuffer = new StringBuffer();
        }
        String[] strArr = new String[vector.size()];
        vector.copyInto(strArr);
        return strArr;
    }

    @Override
    public synchronized boolean a() {
        if (isReference()) {
            return ((m) getCheckedRef()).a();
        }
        dieOnCircularReference();
        j(this.f68337b);
        return true;
    }

    @Override
    public Object clone() {
        try {
            m mVar = (m) super.clone();
            mz.g gVar = this.f68337b;
            if (gVar != null) {
                gVar = (mz.g) gVar.clone();
            }
            mVar.f68337b = gVar;
            return mVar;
        } catch (CloneNotSupportedException e10) {
            throw new BuildException(e10);
        }
    }

    public void d(m mVar) {
        if (mVar == this) {
            throw circularReference();
        }
        if (mVar.getProject() == null) {
            mVar.setProject(getProject());
        }
        e(mVar);
    }

    @Override
    protected synchronized void dieOnCircularReference(Stack stack, Project project) {
        try {
            if (isChecked()) {
                return;
            }
            if (isReference()) {
                super.dieOnCircularReference(stack, project);
            } else {
                mz.g gVar = this.f68337b;
                if (gVar != null) {
                    stack.push(gVar);
                    e.invokeCircularReferenceCheck(this.f68337b, stack, project);
                    stack.pop();
                }
                setChecked(true);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void e(u uVar) {
        checkChildrenAllowed();
        if (uVar == null) {
            return;
        }
        if (this.f68337b == null) {
            mz.g gVar = new mz.g();
            this.f68337b = gVar;
            gVar.setProject(getProject());
            this.f68337b.k(false);
        }
        this.f68337b.d(uVar);
        setChecked(false);
    }

    public void g(m mVar) {
        h(mVar, false);
    }

    public void h(m mVar, boolean z10) {
        String[] strArrR = mVar.r();
        File file = z10 ? new File(System.getProperty("user.dir")) : null;
        for (int i10 = 0; i10 < strArrR.length; i10++) {
            File fileS = s(getProject(), strArrR[i10]);
            if (z10 && !fileS.exists()) {
                fileS = new File(file, strArrR[i10]);
            }
            if (fileS.exists()) {
                t(fileS);
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("dropping ");
                stringBuffer.append(fileS);
                stringBuffer.append(" from path as it doesn't exist");
                log(stringBuffer.toString(), 3);
            }
        }
    }

    public void i(m mVar) {
        if (mVar == null) {
            return;
        }
        d(mVar);
    }

    @Override
    public final synchronized Iterator iterator() {
        if (isReference()) {
            return ((m) getCheckedRef()).iterator();
        }
        dieOnCircularReference();
        if (q()) {
            return new mz.d(null, r());
        }
        mz.g gVar = this.f68337b;
        return gVar == null ? f68334e : j(gVar).iterator();
    }

    protected u j(u uVar) {
        if (uVar == null || uVar.a()) {
            return uVar;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getDataTypeName());
        stringBuffer.append(" allows only filesystem resources.");
        throw new BuildException(stringBuffer.toString());
    }

    public m m(String str) {
        return l(str, f68333d);
    }

    public m n(String str) {
        return l(str, f68332c);
    }

    public a o() {
        if (isReference()) {
            throw noChildrenAllowed();
        }
        a aVar = new a();
        e(aVar);
        return aVar;
    }

    protected boolean p() {
        Class<?> cls = getClass();
        Class clsK = f68335f;
        if (clsK == null) {
            clsK = k("org.apache.tools.ant.types.Path");
            f68335f = clsK;
        }
        if (cls.equals(clsK)) {
            return false;
        }
        try {
            Class<?> declaringClass = getClass().getMethod("list", null).getDeclaringClass();
            Class clsK2 = f68335f;
            if (clsK2 == null) {
                clsK2 = k("org.apache.tools.ant.types.Path");
                f68335f = clsK2;
            }
            return !declaringClass.equals(clsK2);
        } catch (Exception unused) {
            return false;
        }
    }

    public String[] r() {
        if (isReference()) {
            return ((m) getCheckedRef()).r();
        }
        return j(this.f68337b) == null ? new String[0] : this.f68337b.m();
    }

    @Override
    public void setRefid(r rVar) {
        if (this.f68337b != null) {
            throw tooManyAttributes();
        }
        super.setRefid(rVar);
    }

    @Override
    public synchronized int size() {
        if (isReference()) {
            return ((m) getCheckedRef()).size();
        }
        dieOnCircularReference();
        mz.g gVar = this.f68337b;
        return gVar == null ? 0 : j(gVar).size();
    }

    public void t(File file) {
        checkAttributesAllowed();
        o().b(file);
    }

    @Override
    public String toString() {
        if (isReference()) {
            return getCheckedRef().toString();
        }
        mz.g gVar = this.f68337b;
        return gVar == null ? "" : gVar.toString();
    }

    public m(Project project) {
        this.f68337b = null;
        setProject(project);
    }
}
