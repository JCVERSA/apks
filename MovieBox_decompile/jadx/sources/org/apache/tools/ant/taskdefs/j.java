package org.apache.tools.ant.taskdefs;

import java.io.IOException;
import org.apache.tools.ant.q;

public class j extends org.apache.tools.ant.util.j {

    private q f68233c;

    private int f68234d;

    public j(q qVar) {
        this.f68234d = 2;
        this.f68233c = qVar;
    }

    @Override
    protected void d() {
        try {
            super.d();
        } catch (IOException e10) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Impossible IOException caught: ");
            stringBuffer.append(e10);
            throw new RuntimeException(stringBuffer.toString());
        }
    }

    @Override
    protected void f(String str) {
        h(str, this.f68234d);
    }

    protected void h(String str, int i10) {
        this.f68233c.log(str, i10);
    }

    public j(q qVar, int i10) {
        this(qVar);
        this.f68234d = i10;
    }
}
