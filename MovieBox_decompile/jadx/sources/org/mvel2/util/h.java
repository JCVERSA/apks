package org.mvel2.util;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.ast.EndOfStatement;
import org.mvel2.ast.Function;

public class h {

    private String f68887a;

    private int f68888b;

    private int f68889c;

    private int f68890d;

    private char[] f68891e;

    private ParserContext f68892f;

    private g f68893g;

    public h(String str, int i10, int i11, char[] cArr, int i12, ParserContext parserContext, g gVar) {
        this.f68887a = str;
        this.f68888b = i10;
        this.f68889c = i11;
        this.f68891e = cArr;
        this.f68890d = i12;
        this.f68892f = parserContext;
        this.f68893g = gVar;
    }

    public int a() {
        return this.f68888b;
    }

    public String b() {
        return this.f68887a;
    }

    public Function c() {
        int i10;
        int i11;
        int iE;
        int i12 = this.f68888b;
        int i13 = this.f68889c + i12;
        int iJ = m.j(this.f68891e, i12, i13, this.f68892f);
        this.f68888b = iJ;
        char[] cArr = this.f68891e;
        int iS0 = m.s0(cArr, iJ);
        this.f68888b = iS0;
        if (cArr[iS0] == '(') {
            iE = m.e(this.f68891e, iS0, i13, '(', this.f68892f);
            int i14 = iS0 + 1;
            int i15 = iE + 1;
            this.f68888b = i15;
            int iE0 = m.E0(this.f68891e, i15);
            this.f68888b = iE0;
            if (iE0 >= i13) {
                throw new CompileException("incomplete statement", this.f68891e, this.f68888b);
            }
            char[] cArr2 = this.f68891e;
            if (cArr2[iE0] == '{') {
                i11 = m.e(cArr2, iE0, i13, '{', this.f68892f);
                this.f68888b = i11;
                i10 = i14;
                iS0 = iE0;
            } else {
                i11 = m.i(cArr2, iE0, i13, this.f68892f);
                this.f68888b = i11;
                i10 = i14;
                iS0 = iE0 - 1;
            }
        } else {
            char[] cArr3 = this.f68891e;
            i10 = 0;
            if (cArr3[iS0] == '{') {
                i11 = m.e(cArr3, iS0, i13, '{', this.f68892f);
                this.f68888b = i11;
            } else {
                i11 = m.i(cArr3, iS0, i13, this.f68892f);
                this.f68888b = i11;
                iS0--;
            }
            iE = 0;
        }
        int iN0 = m.N0(this.f68891e, iS0 + 1);
        int iM0 = m.M0(this.f68891e, i12, i11);
        int i16 = this.f68888b + 1;
        this.f68888b = i16;
        if (this.f68893g != null && m.p0(this.f68891e, i16)) {
            this.f68893g.a(new EndOfStatement(this.f68892f));
        }
        return new Function(this.f68887a, this.f68891e, i10, iE - i10, iN0, iM0 - iN0, this.f68890d, this.f68892f);
    }
}
