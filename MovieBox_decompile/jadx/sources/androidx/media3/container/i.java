package androidx.media3.container;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.PriorityQueue;

public final class i {

    private final b f10365a;

    private final ArrayDeque f10366b = new ArrayDeque();

    private final ArrayDeque f10367c = new ArrayDeque();

    private final PriorityQueue f10368d = new PriorityQueue();

    private int f10369e = -1;

    private a f10370f;

    private static final class a implements Comparable {

        public long f10372b = C.TIME_UNSET;

        public final List f10371a = new ArrayList();

        @Override
        public int compareTo(a aVar) {
            return Long.compare(this.f10372b, aVar.f10372b);
        }

        public void b(long j10, j0 j0Var) {
            androidx.media3.common.util.a.a(j10 != C.TIME_UNSET);
            androidx.media3.common.util.a.g(this.f10371a.isEmpty());
            this.f10372b = j10;
            this.f10371a.add(j0Var);
        }
    }

    public interface b {
        void a(long j10, j0 j0Var);
    }

    public i(b bVar) {
        this.f10365a = bVar;
    }

    private j0 c(j0 j0Var) {
        j0 j0Var2 = this.f10366b.isEmpty() ? new j0() : (j0) this.f10366b.pop();
        j0Var2.S(j0Var.a());
        System.arraycopy(j0Var.e(), j0Var.f(), j0Var2.e(), 0, j0Var2.a());
        return j0Var2;
    }

    private void e(int i10) {
        while (this.f10368d.size() > i10) {
            a aVar = (a) a1.i((a) this.f10368d.poll());
            for (int i11 = 0; i11 < aVar.f10371a.size(); i11++) {
                this.f10365a.a(aVar.f10372b, (j0) aVar.f10371a.get(i11));
                this.f10366b.push((j0) aVar.f10371a.get(i11));
            }
            aVar.f10371a.clear();
            a aVar2 = this.f10370f;
            if (aVar2 != null && aVar2.f10372b == aVar.f10372b) {
                this.f10370f = null;
            }
            this.f10367c.push(aVar);
        }
    }

    public void a(long j10, j0 j0Var) {
        int i10 = this.f10369e;
        if (i10 == 0 || (i10 != -1 && this.f10368d.size() >= this.f10369e && j10 < ((a) a1.i((a) this.f10368d.peek())).f10372b)) {
            this.f10365a.a(j10, j0Var);
            return;
        }
        j0 j0VarC = c(j0Var);
        a aVar = this.f10370f;
        if (aVar != null && j10 == aVar.f10372b) {
            aVar.f10371a.add(j0VarC);
            return;
        }
        a aVar2 = this.f10367c.isEmpty() ? new a() : (a) this.f10367c.pop();
        aVar2.b(j10, j0VarC);
        this.f10368d.add(aVar2);
        this.f10370f = aVar2;
        int i11 = this.f10369e;
        if (i11 != -1) {
            e(i11);
        }
    }

    public void b() {
        this.f10368d.clear();
    }

    public void d() {
        e(0);
    }

    public int f() {
        return this.f10369e;
    }

    public void g(int i10) {
        androidx.media3.common.util.a.g(i10 >= 0);
        this.f10369e = i10;
        e(i10);
    }
}
