package javassist.compiler.ast;

import defpackage.vfc;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import javassist.compiler.CompileError;

public class InstanceOfExpr extends CastExpr {
    private static final long serialVersionUID = 1;

    public InstanceOfExpr(ASTList aSTList, int i, ASTree aSTree) {
        super(aSTList, i, aSTree);
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    @Override
    public String getTag() {
        return "instanceof:" + this.castType + StringUtils.PROCESS_POSTFIX_DELIMITER + this.arrayDim;
    }

    public InstanceOfExpr(int i, int i2, ASTree aSTree) {
        super(i, i2, aSTree);
    }
}
