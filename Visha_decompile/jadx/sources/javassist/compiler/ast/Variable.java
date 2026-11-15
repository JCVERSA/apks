package javassist.compiler.ast;

import defpackage.vfc;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import javassist.compiler.CompileError;

public class Variable extends Symbol {
    private static final long serialVersionUID = 1;
    protected Declarator declarator;

    public Variable(String str, Declarator declarator) {
        super(str);
        this.declarator = declarator;
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public Declarator getDeclarator() {
        return this.declarator;
    }

    @Override
    public String toString() {
        return this.identifier + StringUtils.PROCESS_POSTFIX_DELIMITER + this.declarator.getType();
    }
}
