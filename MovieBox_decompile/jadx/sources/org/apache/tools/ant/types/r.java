package org.apache.tools.ant.types;

import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;

public class r {

    private String f68367a;

    private Project f68368b;

    public String a() {
        return this.f68367a;
    }

    public Object b(Project project) {
        String str = this.f68367a;
        if (str == null) {
            throw new BuildException("No reference specified");
        }
        Project project2 = this.f68368b;
        Object objT = project2 == null ? project.t(str) : project2.t(str);
        if (objT != null) {
            return objT;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Reference ");
        stringBuffer.append(this.f68367a);
        stringBuffer.append(" not found.");
        throw new BuildException(stringBuffer.toString());
    }
}
