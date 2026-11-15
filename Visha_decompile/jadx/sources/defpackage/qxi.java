package defpackage;

import com.transsion.apiinvoke.common.router.ProcessInfo;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public abstract class qxi implements Iterator, Closeable, rne {
    public static final qne h = new pxi("eof ");
    public nne b;
    public rxi c;
    public qne d = null;
    public long e = 0;
    public long f = 0;
    public final List g = new ArrayList();

    static {
        xxi.b(qxi.class);
    }

    @Override
    public final qne next() {
        qne qneVarA;
        qne qneVar = this.d;
        if (qneVar != null && qneVar != h) {
            this.d = null;
            return qneVar;
        }
        rxi rxiVar = this.c;
        if (rxiVar == null || this.e >= this.f) {
            this.d = h;
            throw new NoSuchElementException();
        }
        try {
            synchronized (rxiVar) {
                this.c.c(this.e);
                qneVarA = this.b.a(this.c, this);
                this.e = this.c.zzb();
            }
            return qneVarA;
        } catch (EOFException unused) {
            throw new NoSuchElementException();
        } catch (IOException unused2) {
            throw new NoSuchElementException();
        }
    }

    public void close() {
    }

    public final List d() {
        return (this.c == null || this.d == h) ? this.g : new wxi(this.g, this);
    }

    public final void e(rxi rxiVar, long j, nne nneVar) {
        this.c = rxiVar;
        this.e = rxiVar.zzb();
        rxiVar.c(rxiVar.zzb() + j);
        this.f = rxiVar.zzb();
        this.b = nneVar;
    }

    @Override
    public final boolean hasNext() {
        qne qneVar = this.d;
        if (qneVar == h) {
            return false;
        }
        if (qneVar != null) {
            return true;
        }
        try {
            this.d = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.d = h;
            return false;
        }
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        int i = 0;
        while (true) {
            List list = this.g;
            if (i >= list.size()) {
                sb.append("]");
                return sb.toString();
            }
            if (i > 0) {
                sb.append(ProcessInfo.SPLIT_NEW_VERSION);
            }
            sb.append(((qne) list.get(i)).toString());
            i++;
        }
    }
}
