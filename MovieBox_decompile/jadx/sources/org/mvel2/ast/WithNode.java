package org.mvel2.ast;

import java.io.Serializable;
import java.util.ArrayList;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.f;
import org.mvel2.util.m;
import org.mvel2.util.n;

public class WithNode extends BlockNode {
    protected String nestParm;
    protected ParmValuePair[] withExpressions;

    public static final class ParmValuePair implements Serializable {
        private Serializable setExpression;
        private ExecutableStatement statement;

        public ParmValuePair(String str, ExecutableStatement executableStatement, Class cls, ParserContext parserContext) {
            if (str != null && str.length() != 0) {
                this.setExpression = org.mvel2.d.g(str, cls != null ? n.h(cls, str, parserContext) : Object.class, parserContext);
            }
            this.statement = executableStatement;
        }

        public void eval(Object obj, VariableResolverFactory variableResolverFactory) {
            Serializable serializable = this.setExpression;
            if (serializable == null) {
                this.statement.getValue(obj, variableResolverFactory);
            } else {
                org.mvel2.d.t(serializable, obj, variableResolverFactory, this.statement.getValue(obj, variableResolverFactory));
            }
        }

        public Serializable getSetExpression() {
            return this.setExpression;
        }

        public ExecutableStatement getStatement() {
            return this.statement;
        }
    }

    public WithNode(char[] cArr, int i10, int i11, int i12, int i13, int i14, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        this.nestParm = m.x(cArr, i10, i11);
        this.blockStart = i12;
        this.blockOffset = i13;
        if ((i14 & 16) != 0) {
            parserContext.setBlockSymbols(true);
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i10, i11, parserContext);
            this.compiledBlock = executableStatement;
            Class knownEgressType = executableStatement.getKnownEgressType();
            this.egressType = knownEgressType;
            this.withExpressions = compileWithExpressions(cArr, i12, i13, this.nestParm, knownEgressType, parserContext);
            parserContext.setBlockSymbols(false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x01b6 A[Catch: CompileException -> 0x019f, TryCatch #2 {CompileException -> 0x019f, blocks: (B:94:0x0173, B:98:0x017c, B:100:0x0181, B:101:0x019c, B:105:0x01a7, B:104:0x01a1, B:106:0x01ae, B:107:0x01b3, B:109:0x01b6, B:111:0x01d4, B:110:0x01bd), top: B:121:0x0173 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x01bd A[Catch: CompileException -> 0x019f, TryCatch #2 {CompileException -> 0x019f, blocks: (B:94:0x0173, B:98:0x017c, B:100:0x0181, B:101:0x019c, B:105:0x01a7, B:104:0x01a1, B:106:0x01ae, B:107:0x01b3, B:109:0x01b6, B:111:0x01d4, B:110:0x01bd), top: B:121:0x0173 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x011d A[PHI: r9
      0x011d: PHI (r9v8 int) = (r9v6 int), (r9v9 int) binds: [B:76:0x0145, B:63:0x011b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:82:0x0152  */
    /* JADX WARN: Instruction removed from duplicated block: B:110:0x01bd, please report this as an issue */
    public static ParmValuePair[] compileWithExpressions(char[] cArr, int i10, int i11, String str, Class cls, ParserContext parserContext) {
        String str2;
        String str3;
        int i12;
        String str4;
        ArrayList arrayList = new ArrayList();
        int i13 = i10 + i11;
        String str5 = "";
        int iD = i10;
        int i14 = iD;
        String strX = "";
        int iU0 = -1;
        while (iD < i13) {
            char c10 = cArr[iD];
            if (c10 != '\"') {
                str3 = str5;
                if (c10 == '%') {
                    i12 = iD + 1;
                    if (i12 < i13 && cArr[i12] == '=') {
                        iU0 = m.u0(c10);
                    }
                } else if (c10 != '/') {
                    if (c10 == '=') {
                        strX = m.x(cArr, i14, (iD - i14) - (iU0 != -1 ? 1 : 0));
                        i14 = iD + 1;
                    } else if (c10 != '[' && c10 != '{' && c10 != '\'' && c10 != '(') {
                        switch (c10) {
                            case '*':
                            case '+':
                            case '-':
                                i12 = iD + 1;
                                if (i12 < i13) {
                                }
                                break;
                            case ',':
                                if (strX == null || strX.length() == 0) {
                                    if (str == null) {
                                        try {
                                            str4 = new String(cArr, i14, iD - i14);
                                        } catch (CompileException e10) {
                                            e10.setCursor(i14 + (e10.getCursor() - (e10.getExpr().length - i11)));
                                            e10.setExpr(cArr);
                                            throw e10;
                                        }
                                    } else {
                                        str4 = str + '.' + new String(cArr, i14, iD - i14);
                                    }
                                    arrayList.add(new ParmValuePair(null, (ExecutableStatement) m.G0(str4, parserContext), cls, parserContext));
                                    iD++;
                                    break;
                                } else {
                                    if (str == null) {
                                        throw new CompileException("operative assignment not possible here", cArr, i10);
                                    }
                                    try {
                                        arrayList.add(new ParmValuePair(strX, (ExecutableStatement) (iU0 != -1 ? m.J0(m.w(str + "." + strX, cArr, i14, iD - i14, iU0), parserContext) : m.I0(cArr, i14, iD - i14, parserContext)), cls, parserContext));
                                        iD++;
                                        strX = null;
                                    } catch (CompileException e11) {
                                        e11.setCursor(i14 + (e11.getCursor() - (e11.getExpr().length - i11)));
                                        e11.setExpr(cArr);
                                        throw e11;
                                    }
                                }
                                i14 = iD;
                                iU0 = -1;
                                break;
                        }
                    }
                } else if (iD < i13 && cArr[iD + 1] == '/') {
                    while (iD < i13 && cArr[iD] != '\n') {
                        cArr[iD] = ' ';
                        iD++;
                    }
                    if (strX == null) {
                        i14 = iD;
                    }
                } else if (iD < i13 && cArr[iD + 1] == '*') {
                    int i15 = i13 - 1;
                    while (iD < i15 && (cArr[iD] != '*' || cArr[iD + 1] != '/')) {
                        cArr[iD] = ' ';
                        iD++;
                    }
                    int i16 = iD + 1;
                    cArr[iD] = ' ';
                    iD += 2;
                    cArr[i16] = ' ';
                    if (strX == null) {
                        i14 = iD;
                    }
                } else if (iD < i13 && cArr[iD + 1] == '=') {
                    iU0 = 3;
                }
                iD++;
                str5 = str3;
            } else {
                str3 = str5;
            }
            iD = m.d(cArr, iD, i13, c10);
            iD++;
            str5 = str3;
        }
        String str6 = str5;
        if (i14 != i13) {
            if (strX != null) {
                try {
                    if (str6.equals(strX)) {
                        if (str == null) {
                            str2 = new String(cArr, i14, i13 - i14);
                        } else {
                            str2 = str + '.' + new String(cArr, i14, i13 - i14);
                        }
                        arrayList.add(new ParmValuePair(null, (ExecutableStatement) m.G0(str2, parserContext), cls, parserContext));
                    } else {
                        if (str == null) {
                            throw new CompileException("operative assignment not possible here", cArr, i10);
                        }
                        arrayList.add(new ParmValuePair(strX, (ExecutableStatement) (iU0 != -1 ? m.J0(m.w(str + "." + strX, cArr, i14, i13 - i14, iU0), parserContext) : m.I0(cArr, i14, i13 - i14, parserContext)), cls, parserContext));
                    }
                } catch (CompileException e12) {
                    throw f.a(e12, cArr, i14);
                }
            } else {
                if (str == null) {
                    str2 = new String(cArr, i14, i13 - i14);
                } else {
                    str2 = str + '.' + new String(cArr, i14, i13 - i14);
                }
                arrayList.add(new ParmValuePair(null, (ExecutableStatement) m.G0(str2, parserContext), cls, parserContext));
            }
        }
        ParmValuePair[] parmValuePairArr = new ParmValuePair[arrayList.size()];
        arrayList.toArray(parmValuePairArr);
        return parmValuePairArr;
    }

    public ExecutableStatement getNestedStatement() {
        return this.compiledBlock;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        String str = this.nestParm;
        char[] cArr = this.expr;
        int i10 = this.blockStart;
        int i11 = this.blockOffset;
        Object objO = org.mvel2.d.o(cArr, this.start, this.offset, obj, variableResolverFactory);
        m.z0(str, cArr, i10, i11, objO, variableResolverFactory);
        return objO;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object value = this.compiledBlock.getValue(obj, obj2, variableResolverFactory);
        if (value == null) {
            throw new CompileException("with-block against null pointer", this.expr, this.start);
        }
        for (ParmValuePair parmValuePair : this.withExpressions) {
            parmValuePair.eval(value, variableResolverFactory);
        }
        return value;
    }

    public ParmValuePair[] getWithExpressions() {
        return this.withExpressions;
    }
}
