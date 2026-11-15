package org.apache.tools.ant.types;

import java.util.Vector;
import org.apache.tools.ant.BuildException;

public class h extends e implements Cloneable {

    private Vector f68310a = new Vector();

    public Vector e() {
        return this.f68310a;
    }

    @Override
    public void setRefid(r rVar) {
        if (!this.f68310a.isEmpty()) {
            throw tooManyAttributes();
        }
        Object objB = rVar.b(getProject());
        if (objB instanceof h) {
            this.f68310a = ((h) objB).e();
            super.setRefid(rVar);
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(rVar.a());
            stringBuffer.append(" doesn't refer to a FilterChain");
            throw new BuildException(stringBuffer.toString());
        }
    }
}
