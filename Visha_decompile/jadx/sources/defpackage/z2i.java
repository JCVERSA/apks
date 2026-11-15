package defpackage;

import androidx.media3.common.C;
import java.util.ArrayDeque;
import java.util.List;
import java.util.PriorityQueue;

public final class z2i {
    public final b2i a;
    public final ArrayDeque b = new ArrayDeque();
    public final ArrayDeque c = new ArrayDeque();
    public final PriorityQueue d = new PriorityQueue();
    public int e = -1;
    public h1i f;

    public z2i(b2i b2iVar) {
        this.a = b2iVar;
    }

    public final int a() {
        return this.e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
    
        if (r7 < r0.c) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(long j, u4h u4hVar) {
        int i = this.e;
        if (i != 0) {
            if (i != -1) {
                PriorityQueue priorityQueue = this.d;
                if (priorityQueue.size() >= this.e) {
                    h1i h1iVar = (h1i) priorityQueue.peek();
                    int i2 = kfh.a;
                }
            }
            ArrayDeque arrayDeque = this.b;
            u4h u4hVar2 = arrayDeque.isEmpty() ? new u4h() : (u4h) arrayDeque.pop();
            u4hVar2.i(u4hVar.u());
            System.arraycopy(u4hVar.n(), u4hVar.w(), u4hVar2.n(), 0, u4hVar2.u());
            h1i h1iVar2 = this.f;
            if (h1iVar2 != null && j == h1iVar2.c) {
                h1iVar2.b.add(u4hVar2);
                return;
            }
            ArrayDeque arrayDeque2 = this.c;
            h1i h1iVar3 = arrayDeque2.isEmpty() ? new h1i() : (h1i) arrayDeque2.pop();
            n7g.d(j != C.TIME_UNSET);
            List list = h1iVar3.b;
            n7g.f(list.isEmpty());
            h1iVar3.c = j;
            list.add(u4hVar2);
            this.d.add(h1iVar3);
            this.f = h1iVar3;
            int i3 = this.e;
            if (i3 != -1) {
                f(i3);
                return;
            }
            return;
        }
        this.a.a(j, u4hVar);
    }

    public final void c() {
        this.d.clear();
    }

    public final void d() {
        f(0);
    }

    public final void e(int i) {
        n7g.f(i >= 0);
        this.e = i;
        f(i);
    }

    public final void f(int i) {
        List list;
        while (true) {
            PriorityQueue priorityQueue = this.d;
            if (priorityQueue.size() <= i) {
                return;
            }
            h1i h1iVar = (h1i) priorityQueue.poll();
            int i2 = kfh.a;
            int i3 = 0;
            while (true) {
                list = h1iVar.b;
                if (i3 >= list.size()) {
                    break;
                }
                this.a.a(h1iVar.c, (u4h) list.get(i3));
                this.b.push((u4h) list.get(i3));
                i3++;
            }
            list.clear();
            h1i h1iVar2 = this.f;
            if (h1iVar2 != null && h1iVar2.c == h1iVar.c) {
                this.f = null;
            }
            this.c.push(h1iVar);
        }
    }
}
