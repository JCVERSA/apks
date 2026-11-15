package defpackage;

import java.io.Closeable;

public final class one extends qxi implements Closeable {
    static {
        xxi.b(one.class);
    }

    public one(rxi rxiVar, nne nneVar) {
        e(rxiVar, rxiVar.zzc(), nneVar);
    }

    @Override
    public final void close() {
    }

    @Override
    public final String toString() {
        String string = this.c.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 7);
        sb.append("model(");
        sb.append(string);
        sb.append(")");
        return sb.toString();
    }
}
