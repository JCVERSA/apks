package org.apache.tools.ant.taskdefs;

import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.u;

public class b extends u {

    private String f68185g = "";

    private ClassLoader f68186h;

    public ClassLoader u() {
        return this.f68186h;
    }

    public String v() {
        return this.f68185g;
    }

    public void w(ClassLoader classLoader) {
        this.f68186h = classLoader;
    }

    public void x(String str) {
        if (str.equals("antlib:org.apache.tools.ant")) {
            str = "";
        }
        if (!str.startsWith("ant:")) {
            this.f68185g = str;
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Attempt to use a reserved URI ");
        stringBuffer.append(str);
        throw new BuildException(stringBuffer.toString());
    }
}
