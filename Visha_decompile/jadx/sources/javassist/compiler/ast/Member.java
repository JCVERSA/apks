package javassist.compiler.ast;

import defpackage.dm1;
import defpackage.vfc;
import javassist.compiler.CompileError;

public class Member extends Symbol {
    private static final long serialVersionUID = 1;
    private dm1 field;

    public Member(String str) {
        super(str);
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public dm1 getField() {
        return null;
    }

    public void setField(dm1 dm1Var) {
    }
}
