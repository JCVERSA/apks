package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.PriorityQueue;

abstract class bo implements o32 {
    private final ArrayDeque<a> a = new ArrayDeque<>();
    private final ArrayDeque<s32> b;
    private final PriorityQueue<a> c;

    @Nullable
    private a d;
    private long e;
    private long f;

    public static final class a extends r32 implements Comparable<a> {
        private long k;

        /* JADX WARN: Code duplicated, block: B:14:0x002d A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:15:0x002f A[ORIG_RETURN, RETURN] */
        @Override
        public final int compareTo(a aVar) {
            a aVar2 = aVar;
            if (f() != aVar2.f()) {
                if (f()) {
                    return 1;
                }
                return -1;
            }
            long j = this.f - aVar2.f;
            if (j == 0) {
                j = this.k - aVar2.k;
                if (j == 0) {
                    return 0;
                }
            }
            if (j > 0) {
                return 1;
            }
            return -1;
        }

        private a() {
        }
    }

    public static final class b extends s32 {
        private sy.a<b> f;

        public b(sy.a<b> aVar) {
            this.f = aVar;
        }

        @Override
        public final void h() {
            this.f.a(this);
        }
    }

    public bo() {
        for (int i = 0; i < 10; i++) {
            this.a.add(new a());
        }
        this.b = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.b.add(new b(new sy.a() {
                @Override
                public final void a(sy syVar) {
                    this.a.a((bo.b) syVar);
                }
            }));
        }
        this.c = new PriorityQueue<>();
    }

    public abstract void b(r32 r32Var);

    public abstract n32 c();

    @Override
    public void a(r32 r32Var) throws p32 {
        if (r32Var != this.d) {
            throw new IllegalArgumentException();
        }
        a aVar = (a) r32Var;
        if (aVar.e()) {
            aVar.b();
            this.a.add(aVar);
        } else {
            long j = this.f;
            this.f = 1 + j;
            aVar.k = j;
            this.c.add(aVar);
        }
        this.d = null;
    }

    @Override
    @Nullable
    public r32 b() throws p32 {
        if (this.d != null) {
            throw new IllegalStateException();
        }
        if (this.a.isEmpty()) {
            return null;
        }
        a aVarPollFirst = this.a.pollFirst();
        this.d = aVarPollFirst;
        return aVarPollFirst;
    }

    @Override
    @Nullable
    public s32 a() throws p32 {
        if (this.b.isEmpty()) {
            return null;
        }
        while (!this.c.isEmpty()) {
            a aVarPeek = this.c.peek();
            int i = f92.a;
            if (aVarPeek.f > this.e) {
                break;
            }
            a aVarPoll = this.c.poll();
            if (aVarPoll.f()) {
                s32 s32VarPollFirst = this.b.pollFirst();
                s32VarPollFirst.b(4);
                aVarPoll.b();
                this.a.add(aVarPoll);
                return s32VarPollFirst;
            }
            b(aVarPoll);
            if (h()) {
                n32 n32VarC = c();
                s32 s32VarPollFirst2 = this.b.pollFirst();
                s32VarPollFirst2.a(aVarPoll.f, n32VarC, Long.MAX_VALUE);
                aVarPoll.b();
                this.a.add(aVarPoll);
                return s32VarPollFirst2;
            }
            aVarPoll.b();
            this.a.add(aVarPoll);
        }
        return null;
    }

    @Nullable
    public final s32 f() {
        return this.b.pollFirst();
    }

    @Override
    public void flush() {
        this.f = 0L;
        this.e = 0L;
        while (!this.c.isEmpty()) {
            a aVarPoll = this.c.poll();
            int i = f92.a;
            aVarPoll.b();
            this.a.add(aVarPoll);
        }
        a aVar = this.d;
        if (aVar != null) {
            aVar.b();
            this.a.add(aVar);
            this.d = null;
        }
    }

    public final long g() {
        return this.e;
    }

    public abstract boolean h();

    public final void a(s32 s32Var) {
        s32Var.b();
        this.b.add(s32Var);
    }

    @Override
    public void a(long j) {
        this.e = j;
    }
}
