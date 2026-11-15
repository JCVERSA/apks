package com.google.android.exoplayer2.decoder;

import org.mvel2.ast.ASTNode;

public abstract class a {

    private int f24221a;

    public final void a(int i10) {
        this.f24221a = i10 | this.f24221a;
    }

    public void b() {
        this.f24221a = 0;
    }

    public final void d(int i10) {
        this.f24221a = (~i10) & this.f24221a;
    }

    protected final boolean e(int i10) {
        return (this.f24221a & i10) == i10;
    }

    public final boolean f() {
        return e(ASTNode.DEOP);
    }

    public final boolean g() {
        return e(Integer.MIN_VALUE);
    }

    public final boolean h() {
        return e(4);
    }

    public final boolean i() {
        return e(ASTNode.NOJIT);
    }

    public final boolean j() {
        return e(1);
    }

    public final void k(int i10) {
        this.f24221a = i10;
    }
}
