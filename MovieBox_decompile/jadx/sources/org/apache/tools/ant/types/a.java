package org.apache.tools.ant.types;

import java.util.Vector;
import org.apache.tools.ant.BuildException;

public final class a extends e implements Cloneable {

    private String f68281a;

    private final Vector f68282b = new Vector();

    private m f68283c;

    public void d(l lVar) {
        this.f68282b.addElement(lVar);
    }

    public String e() {
        return this.f68281a;
    }

    public m g() {
        return this.f68283c;
    }

    public l[] i() {
        l[] lVarArr = new l[this.f68282b.size()];
        this.f68282b.copyInto(lVarArr);
        return lVarArr;
    }

    public void j(String str) {
        this.f68281a = str;
    }

    public void k(m mVar) {
        if (isReference()) {
            throw tooManyAttributes();
        }
        m mVar2 = this.f68283c;
        if (mVar2 == null) {
            this.f68283c = mVar;
        } else {
            mVar2.i(mVar);
        }
    }

    @Override
    public void setRefid(r rVar) {
        if (!this.f68282b.isEmpty() || this.f68281a != null || this.f68283c != null) {
            throw tooManyAttributes();
        }
        Object objB = rVar.b(getProject());
        if (!(objB instanceof a)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(rVar.a());
            stringBuffer.append(" doesn't refer to a FilterReader");
            throw new BuildException(stringBuffer.toString());
        }
        a aVar = (a) objB;
        j(aVar.e());
        k(aVar.g());
        l[] lVarArrI = aVar.i();
        if (lVarArrI != null) {
            for (l lVar : lVarArrI) {
                d(lVar);
            }
        }
        super.setRefid(rVar);
    }
}
