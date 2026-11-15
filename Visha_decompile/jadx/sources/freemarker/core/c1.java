package freemarker.core;

import defpackage.i0d;
import defpackage.jw7;
import defpackage.k0d;
import defpackage.nga;
import defpackage.zfa;
import freemarker.template.SimpleSequence;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

public final class c1 extends t0 {
    public final ArrayList h;

    public c1(ArrayList arrayList) {
        this.h = arrayList;
        arrayList.trimToSize();
    }

    private void X(int i) {
        ArrayList arrayList = this.h;
        if (arrayList == null || i >= arrayList.size()) {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override
    public zfa F(Environment environment) throws InvalidReferenceException {
        SimpleSequence simpleSequence = new SimpleSequence(this.h.size());
        for (t0 t0Var : this.h) {
            zfa zfaVarK = t0Var.K(environment);
            if (environment == null || !environment.J()) {
                t0Var.G(zfaVarK, environment);
            }
            simpleSequence.add(zfaVarK);
        }
        return simpleSequence;
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        ArrayList arrayList = (ArrayList) this.h.clone();
        ListIterator listIterator = arrayList.listIterator();
        while (listIterator.hasNext()) {
            listIterator.set(((t0) listIterator.next()).I(str, t0Var, aVar));
        }
        return new c1(arrayList);
    }

    @Override
    public boolean T() {
        if (this.g != null) {
            return true;
        }
        for (int i = 0; i < this.h.size(); i++) {
            if (!((t0) this.h.get(i)).T()) {
                return false;
            }
        }
        return true;
    }

    public nga Y(Environment environment) throws _MiscTemplateException {
        nga ngaVar = (nga) K(environment);
        SimpleSequence simpleSequence = new SimpleSequence(ngaVar.size());
        for (int i = 0; i < this.h.size(); i++) {
            Object obj = this.h.get(i);
            if (obj instanceof r1) {
                r1 r1Var = (r1) obj;
                String asString = r1Var.getAsString();
                try {
                    simpleSequence.add(environment.p1(asString, null));
                } catch (IOException e) {
                    throw new _MiscTemplateException(r1Var, new Object[]{"Couldn't import library ", new k0d(asString), ": ", new i0d(e)});
                }
            } else {
                simpleSequence.add(ngaVar.get(i));
            }
        }
        return simpleSequence;
    }

    public List Z(Environment environment) {
        int size = this.h.size();
        if (size == 0) {
            return Collections.EMPTY_LIST;
        }
        if (size == 1) {
            return Collections.singletonList(((t0) this.h.get(0)).K(environment));
        }
        ArrayList arrayList = new ArrayList(this.h.size());
        ListIterator listIterator = this.h.listIterator();
        while (listIterator.hasNext()) {
            arrayList.add(((t0) listIterator.next()).K(environment));
        }
        return arrayList;
    }

    public List a0(Environment environment) {
        int size = this.h.size();
        if (size == 0) {
            return Collections.EMPTY_LIST;
        }
        if (size == 1) {
            return Collections.singletonList(((t0) this.h.get(0)).L(environment));
        }
        ArrayList arrayList = new ArrayList(this.h.size());
        ListIterator listIterator = this.h.listIterator();
        while (listIterator.hasNext()) {
            arrayList.add(((t0) listIterator.next()).L(environment));
        }
        return arrayList;
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer("[");
        int size = this.h.size();
        for (int i = 0; i < size; i++) {
            stringBuffer.append(((t0) this.h.get(i)).o());
            if (i != size - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "[...]";
    }

    @Override
    public int s() {
        ArrayList arrayList = this.h;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Override
    public jw7 t(int i) {
        X(i);
        return jw7.f;
    }

    @Override
    public Object u(int i) {
        X(i);
        return this.h.get(i);
    }
}
