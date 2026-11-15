package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import java.util.Collections;
import java.util.List;

public final class v42 extends sk implements Handler.Callback {
    private int A;
    private long B;

    @Nullable
    private final Handler n;
    private final u42 o;
    private final q32 p;
    private final kc0 q;
    private boolean r;
    private boolean s;
    private boolean t;
    private int u;

    @Nullable
    private jc0 v;

    @Nullable
    private o32 w;

    @Nullable
    private r32 x;

    @Nullable
    private s32 y;

    @Nullable
    private s32 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v42(u42 u42Var, @Nullable Looper looper) {
        super(3);
        q32 q32Var = q32.a;
        this.o = (u42) hg.a(u42Var);
        this.n = looper == null ? null : f92.a(looper, (Handler.Callback) this);
        this.p = q32Var;
        this.q = new kc0();
        this.B = C.TIME_UNSET;
    }

    private void A() {
        this.x = null;
        this.A = -1;
        s32 s32Var = this.y;
        if (s32Var != null) {
            s32Var.h();
            this.y = null;
        }
        s32 s32Var2 = this.z;
        if (s32Var2 != null) {
            s32Var2.h();
            this.z = null;
        }
    }

    private void B() {
        A();
        o32 o32Var = this.w;
        o32Var.getClass();
        o32Var.release();
        this.w = null;
        this.u = 0;
    }

    private long y() {
        if (this.A == -1) {
            return Long.MAX_VALUE;
        }
        this.y.getClass();
        if (this.A >= this.y.a()) {
            return Long.MAX_VALUE;
        }
        return this.y.a(this.A);
    }

    private void z() {
        this.t = true;
        q32 q32Var = this.p;
        jc0 jc0Var = this.v;
        jc0Var.getClass();
        this.w = ((q32.a) q32Var).a(jc0Var);
    }

    @Override
    public final boolean a() {
        return this.s;
    }

    public final void c(long j) {
        if (!k()) {
            throw new IllegalStateException();
        }
        this.B = j;
    }

    @Override
    public final boolean d() {
        return true;
    }

    @Override
    public final String getName() {
        return "TextRenderer";
    }

    @Override
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        List<hv> list = (List) message.obj;
        this.o.onCues(list);
        this.o.a(new jv(list));
        return true;
    }

    @Override
    public final void u() {
        this.v = null;
        this.B = C.TIME_UNSET;
        List<hv> listEmptyList = Collections.emptyList();
        Handler handler = this.n;
        if (handler != null) {
            handler.obtainMessage(0, listEmptyList).sendToTarget();
        } else {
            this.o.onCues(listEmptyList);
            this.o.a(new jv(listEmptyList));
        }
        B();
    }

    @Override
    public final void a(long j, boolean z) {
        List<hv> listEmptyList = Collections.emptyList();
        Handler handler = this.n;
        if (handler != null) {
            handler.obtainMessage(0, listEmptyList).sendToTarget();
        } else {
            this.o.onCues(listEmptyList);
            this.o.a(new jv(listEmptyList));
        }
        this.r = false;
        this.s = false;
        this.B = C.TIME_UNSET;
        if (this.u != 0) {
            B();
            z();
        } else {
            A();
            o32 o32Var = this.w;
            o32Var.getClass();
            o32Var.flush();
        }
    }

    @Override
    public final void a(jc0[] jc0VarArr, long j, long j2) {
        this.v = jc0VarArr[0];
        if (this.w != null) {
            this.u = 1;
        } else {
            z();
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f4  */
    @Override
    public final void a(long j, long j2) throws qy {
        boolean z;
        List<hv> listB;
        Handler handler;
        if (k()) {
            long j3 = this.B;
            if (j3 != C.TIME_UNSET && j >= j3) {
                A();
                this.s = true;
            }
        }
        if (this.s) {
            return;
        }
        if (this.z == null) {
            o32 o32Var = this.w;
            o32Var.getClass();
            o32Var.a(j);
            try {
                o32 o32Var2 = this.w;
                o32Var2.getClass();
                this.z = o32Var2.a();
            } catch (p32 e) {
                et0.a("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.v, e);
                List<hv> listEmptyList = Collections.emptyList();
                Handler handler2 = this.n;
                if (handler2 != null) {
                    handler2.obtainMessage(0, listEmptyList).sendToTarget();
                } else {
                    this.o.onCues(listEmptyList);
                    this.o.a(new jv(listEmptyList));
                }
                B();
                z();
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.y != null) {
            long jY = y();
            z = false;
            while (jY <= j) {
                this.A++;
                jY = y();
                z = true;
            }
        } else {
            z = false;
        }
        s32 s32Var = this.z;
        if (s32Var != null) {
            if (!s32Var.f()) {
                if (s32Var.c <= j) {
                    s32 s32Var2 = this.y;
                    if (s32Var2 != null) {
                        s32Var2.h();
                    }
                    this.A = s32Var.a(j);
                    this.y = s32Var;
                    this.z = null;
                }
                this.y.getClass();
                listB = this.y.b(j);
                handler = this.n;
                if (handler != null) {
                    handler.obtainMessage(0, listB).sendToTarget();
                } else {
                    this.o.onCues(listB);
                    this.o.a(new jv(listB));
                }
            } else if (!z && y() == Long.MAX_VALUE) {
                if (this.u == 2) {
                    B();
                    z();
                } else {
                    A();
                    this.s = true;
                }
            }
            if (z) {
                this.y.getClass();
                listB = this.y.b(j);
                handler = this.n;
                if (handler != null) {
                    handler.obtainMessage(0, listB).sendToTarget();
                } else {
                    this.o.onCues(listB);
                    this.o.a(new jv(listB));
                }
            }
        } else if (z) {
            this.y.getClass();
            listB = this.y.b(j);
            handler = this.n;
            if (handler != null) {
                handler.obtainMessage(0, listB).sendToTarget();
            } else {
                this.o.onCues(listB);
                this.o.a(new jv(listB));
            }
        }
        if (this.u == 2) {
            return;
        }
        while (!this.r) {
            try {
                r32 r32VarB = this.x;
                if (r32VarB == null) {
                    o32 o32Var3 = this.w;
                    o32Var3.getClass();
                    r32VarB = o32Var3.b();
                    if (r32VarB == null) {
                        return;
                    } else {
                        this.x = r32VarB;
                    }
                }
                if (this.u == 1) {
                    r32VarB.d(4);
                    o32 o32Var4 = this.w;
                    o32Var4.getClass();
                    o32Var4.a(r32VarB);
                    this.x = null;
                    this.u = 2;
                    return;
                }
                int iA = a(this.q, r32VarB, 0);
                if (iA == -4) {
                    if (r32VarB.f()) {
                        this.r = true;
                        this.t = false;
                    } else {
                        jc0 jc0Var = this.q.b;
                        if (jc0Var == null) {
                            return;
                        }
                        r32VarB.j = jc0Var.q;
                        r32VarB.h();
                        this.t &= !r32VarB.g();
                    }
                    if (!this.t) {
                        o32 o32Var5 = this.w;
                        o32Var5.getClass();
                        o32Var5.a(r32VarB);
                        this.x = null;
                    }
                } else if (iA == -3) {
                    return;
                }
            } catch (p32 e2) {
                et0.a("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.v, e2);
                List<hv> listEmptyList2 = Collections.emptyList();
                Handler handler3 = this.n;
                if (handler3 != null) {
                    handler3.obtainMessage(0, listEmptyList2).sendToTarget();
                } else {
                    this.o.onCues(listEmptyList2);
                    this.o.a(new jv(listEmptyList2));
                }
                B();
                z();
                return;
            }
        }
    }

    @Override
    public final int a(jc0 jc0Var) {
        if (((q32.a) this.p).b(jc0Var)) {
            return zo1.a(jc0Var.F == 0 ? 4 : 2, 0, 0);
        }
        if (w01.e(jc0Var.m)) {
            return zo1.a(1, 0, 0);
        }
        return zo1.a(0, 0, 0);
    }
}
