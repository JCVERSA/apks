package defpackage;

import freemarker.core.Environment;

public final class aq6 extends ifa {
    @Override
    public void F(Environment environment) {
        int iW = W();
        for (int i = 0; i < iW; i++) {
            environment.X1(V(i));
        }
    }

    @Override
    public String J(boolean z) {
        if (!z) {
            return U() == null ? "root" : r();
        }
        StringBuffer stringBuffer = new StringBuffer();
        int iW = W();
        for (int i = 0; i < iW; i++) {
            stringBuffer.append(V(i).o());
        }
        return stringBuffer.toString();
    }

    @Override
    public boolean Z() {
        return W() == 0;
    }

    @Override
    public boolean b0() {
        return false;
    }

    @Override
    public ifa e0(boolean z) {
        super.e0(z);
        return W() == 1 ? V(0) : this;
    }

    public void l0(ifa ifaVar) {
        H(ifaVar);
    }

    @Override
    public String r() {
        return "#mixed_content";
    }

    @Override
    public int s() {
        return 0;
    }

    @Override
    public jw7 t(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        throw new IndexOutOfBoundsException();
    }
}
