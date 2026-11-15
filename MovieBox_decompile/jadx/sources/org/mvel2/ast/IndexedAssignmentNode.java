package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.CompiledAccExpression;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class IndexedAssignmentNode extends ASTNode implements a {
    private transient CompiledAccExpression accExpr;
    private String assignmentVar;
    private boolean col;
    private char[] index;
    private char[] indexTarget;
    private String name;
    private int register;
    private ExecutableStatement statement;
    private char[] stmt;

    public IndexedAssignmentNode(char[] cArr, int i10, int i11, int i12, int i13, String str, int i14, ParserContext parserContext) {
        super(parserContext);
        this.col = false;
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        this.register = i14;
        if (i13 != -1) {
            this.name = str;
            m.k(str);
            char[] cArrW = m.w(str, cArr, i10, i11, i13);
            this.stmt = cArrW;
            ExecutableStatement executableStatement = (ExecutableStatement) m.J0(cArrW, parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
        } else {
            int iB = m.B(cArr, i10, i11, '=');
            if (iB != -1) {
                this.name = m.x(cArr, i10, iB - i10);
                this.assignmentVar = str;
                int i15 = iB + 1;
                int iE0 = m.E0(cArr, i15);
                this.start = iE0;
                if (iE0 >= i10 + i11) {
                    throw new CompileException("unexpected end of statement", cArr, i15);
                }
                int i16 = i11 - (iE0 - i10);
                this.offset = i16;
                this.stmt = m.K0(cArr, iE0, i16);
                ExecutableStatement executableStatement2 = (ExecutableStatement) m.I0(cArr, this.start, this.offset, parserContext);
                this.statement = executableStatement2;
                this.egressType = executableStatement2.getKnownEgressType();
                int length = this.name.length();
                char[] charArray = this.name.toCharArray();
                this.indexTarget = charArray;
                short sA = (short) org.mvel2.util.b.a('[', 0, length, charArray);
                this.endOfName = sA;
                boolean z10 = sA > 0;
                this.col = z10;
                if (z10) {
                    int i17 = this.fields | 256;
                    this.fields = i17;
                    if ((i17 & 16) != 0) {
                        this.accExpr = (CompiledAccExpression) org.mvel2.d.k(this.indexTarget, parserContext);
                    }
                    this.name = this.name.substring(0, this.endOfName);
                    char[] cArr2 = this.indexTarget;
                    int i18 = this.endOfName;
                    this.index = m.K0(cArr2, i18, cArr2.length - i18);
                }
                m.k(this.name);
            } else {
                String str2 = new String(cArr);
                this.name = str2;
                m.k(str2);
                this.assignmentVar = str;
            }
        }
        if ((i12 & 16) != 0) {
            parserContext.addVariable(str, this.egressType);
        }
    }

    @Override
    public String getAbsoluteName() {
        return this.name;
    }

    @Override
    public String getAssignmentVar() {
        return this.assignmentVar;
    }

    public char[] getExpression() {
        return this.stmt;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        m.k(this.name);
        if (this.col) {
            Object value = variableResolverFactory.getIndexedVariableResolver(this.register).getValue();
            String str = new String(this.index);
            Object objQ = org.mvel2.d.q(this.stmt, obj, variableResolverFactory);
            org.mvel2.d.y(value, str, objQ);
            return objQ;
        }
        int i10 = this.register;
        String str2 = this.name;
        Object objQ2 = org.mvel2.d.q(this.stmt, obj, variableResolverFactory);
        variableResolverFactory.createIndexedVariable(i10, str2, objQ2);
        return objQ2;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        char[] cArr;
        if (this.accExpr == null && (cArr = this.indexTarget) != null) {
            this.accExpr = (CompiledAccExpression) org.mvel2.d.h(cArr);
        }
        if (this.col) {
            CompiledAccExpression compiledAccExpression = this.accExpr;
            Object value = this.statement.getValue(obj, obj2, variableResolverFactory);
            compiledAccExpression.setValue(obj, obj2, variableResolverFactory, value);
            return value;
        }
        if (this.statement == null) {
            if (variableResolverFactory.isIndexedFactory()) {
                variableResolverFactory.createIndexedVariable(this.register, this.name, null);
                return Void.class;
            }
            variableResolverFactory.createVariable(this.name, this.statement.getValue(obj, obj2, variableResolverFactory));
            return Void.class;
        }
        if (!variableResolverFactory.isIndexedFactory()) {
            String str = this.name;
            Object value2 = this.statement.getValue(obj, obj2, variableResolverFactory);
            variableResolverFactory.createVariable(str, value2);
            return value2;
        }
        int i10 = this.register;
        String str2 = this.name;
        Object value3 = this.statement.getValue(obj, obj2, variableResolverFactory);
        variableResolverFactory.createIndexedVariable(i10, str2, value3);
        return value3;
    }

    public int getRegister() {
        return this.register;
    }

    public String getVarName() {
        return this.name;
    }

    @Override
    public boolean isAssignment() {
        return true;
    }

    @Override
    public boolean isNewDeclaration() {
        return false;
    }

    public void setRegister(int i10) {
        this.register = i10;
    }

    @Override
    public void setValueStatement(ExecutableStatement executableStatement) {
        this.statement = executableStatement;
    }

    public IndexedAssignmentNode(char[] cArr, int i10, int i11, int i12, int i13, ParserContext parserContext) {
        this(cArr, i10, i11, i12, -1, null, i13, parserContext);
    }
}
