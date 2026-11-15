package org.apache.tools.ant.types;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;

public class b extends e implements Cloneable {

    private Boolean f68284a;

    private ArrayList f68285b = new ArrayList();

    public static abstract class a {

        private String f68286a;

        private String f68287b;

        protected String a() {
            return this.f68287b;
        }

        public abstract String b();

        protected String c() {
            return this.f68286a;
        }

        public String d() {
            if (c() != null && a() != null) {
                throw new BuildException("Both package and class have been set");
            }
            StringBuffer stringBuffer = new StringBuffer(b());
            if (c() != null) {
                stringBuffer.append(':');
                stringBuffer.append(c());
                if (!stringBuffer.toString().endsWith("...")) {
                    stringBuffer.append("...");
                }
            } else if (a() != null) {
                stringBuffer.append(':');
                stringBuffer.append(a());
            }
            return stringBuffer.toString();
        }
    }

    private b e() {
        if (getRefid() == null) {
            return this;
        }
        Object objB = getRefid().b(getProject());
        if (objB instanceof b) {
            return (b) objB;
        }
        throw new BuildException("reference is of wrong type");
    }

    @Override
    public Object clone() {
        b bVar = (b) super.clone();
        bVar.f68285b = (ArrayList) this.f68285b.clone();
        return bVar;
    }

    public void d(ListIterator listIterator) {
        getProject().x("Applying assertions", 4);
        b bVarE = e();
        if (Boolean.TRUE.equals(bVarE.f68284a)) {
            getProject().x("Enabling system assertions", 4);
            listIterator.add("-enablesystemassertions");
        } else if (Boolean.FALSE.equals(bVarE.f68284a)) {
            getProject().x("disabling system assertions", 4);
            listIterator.add("-disablesystemassertions");
        }
        Iterator it = bVarE.f68285b.iterator();
        while (it.hasNext()) {
            String strD = ((a) it.next()).d();
            Project project = getProject();
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("adding assertion ");
            stringBuffer.append(strD);
            project.x(stringBuffer.toString(), 4);
            listIterator.add(strD);
        }
    }

    @Override
    public void setRefid(r rVar) {
        if (this.f68285b.size() > 0 || this.f68284a != null) {
            throw tooManyAttributes();
        }
        super.setRefid(rVar);
    }
}
