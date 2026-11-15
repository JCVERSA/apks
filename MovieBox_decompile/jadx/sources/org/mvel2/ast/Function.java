package org.mvel2.ast;

import java.util.Iterator;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.compiler.ExpressionCompiler;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.DefaultLocalVariableResolverFactory;
import org.mvel2.integration.impl.FunctionVariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.integration.impl.StackDemarcResolverFactory;
import org.mvel2.util.m;

public class Function extends ASTNode {
    protected ExecutableStatement compiledBlock;
    protected boolean compiledMode;
    protected String name;
    protected String[] parameters;
    protected int parmNum;
    protected boolean singleton;

    public Function(String str, char[] cArr, int i10, int i11, int i12, int i13, int i14, ParserContext parserContext) {
        super(parserContext);
        this.compiledMode = false;
        this.name = str;
        if (str == null || str.length() == 0) {
            this.name = null;
        }
        this.expr = cArr;
        String[] strArrX0 = m.x0(cArr, i10, i11);
        this.parameters = strArrX0;
        this.parmNum = strArrX0.length;
        ParserContext parserContext2 = new ParserContext(parserContext.getParserConfiguration(), parserContext, true);
        if (parserContext.isFunctionContext()) {
            parserContext2.declareFunction(this);
        } else {
            this.singleton = true;
            parserContext.declareFunction(this);
        }
        for (String str2 : this.parameters) {
            parserContext2.addVariable(str2, Object.class);
            parserContext2.addIndexedInput(str2);
        }
        parserContext2.setIndexAllocation(false);
        ExpressionCompiler expressionCompiler = new ExpressionCompiler(cArr, i12, i13, parserContext2);
        expressionCompiler.setVerifyOnly(true);
        expressionCompiler.compile();
        parserContext2.setIndexAllocation(true);
        if (parserContext.getVariables() != null) {
            for (Map.Entry<String, Class> entry : parserContext.getVariables().entrySet()) {
                parserContext2.getVariables().remove(entry.getKey());
                parserContext2.addInput(entry.getKey(), entry.getValue());
            }
            parserContext2.processTables();
        }
        parserContext2.addIndexedInputs(parserContext2.getVariables().keySet());
        parserContext2.getVariables().clear();
        this.compiledBlock = (ExecutableStatement) m.I0(cArr, i12, i13, parserContext2);
        this.parameters = new String[parserContext2.getIndexedInputs().size()];
        Iterator<String> it = parserContext2.getIndexedInputs().iterator();
        int i15 = 0;
        while (it.hasNext()) {
            this.parameters[i15] = it.next();
            i15++;
        }
        this.compiledMode = (i14 & 16) != 0;
        this.egressType = this.compiledBlock.getKnownEgressType();
        parserContext.addVariable(str, Function.class);
    }

    public Object call(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            return this.compiledMode ? this.compiledBlock.getValue(obj2, new StackDemarcResolverFactory(new DefaultLocalVariableResolverFactory(variableResolverFactory, this.parameters))) : this.compiledBlock.getValue(obj2, new StackDemarcResolverFactory(new DefaultLocalVariableResolverFactory(variableResolverFactory, this.parameters)));
        }
        if (variableResolverFactory instanceof FunctionVariableResolverFactory) {
            FunctionVariableResolverFactory functionVariableResolverFactory = (FunctionVariableResolverFactory) variableResolverFactory;
            if (functionVariableResolverFactory.getIndexedVariableResolvers().length == objArr.length && functionVariableResolverFactory.getFunction().equals(this)) {
                VariableResolver[] indexedVariableResolvers = functionVariableResolverFactory.getIndexedVariableResolvers();
                functionVariableResolverFactory.updateParameters(objArr);
                try {
                    return this.compiledBlock.getValue(obj, obj2, functionVariableResolverFactory);
                } finally {
                    functionVariableResolverFactory.setIndexedVariableResolvers(indexedVariableResolvers);
                }
            }
        }
        return this.compiledBlock.getValue(obj2, new StackDemarcResolverFactory(new FunctionVariableResolverFactory(this, variableResolverFactory, this.parameters, objArr)));
    }

    public void checkArgumentCount(int i10) {
        if (i10 != this.parmNum) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("bad number of arguments in function call: ");
            sb2.append(i10);
            sb2.append(" (expected: ");
            int i11 = this.parmNum;
            sb2.append(i11 == 0 ? "none" : Integer.valueOf(i11));
            sb2.append(")");
            throw new CompileException(sb2.toString(), this.expr, this.start);
        }
    }

    public ExecutableStatement getCompiledBlock() {
        return this.compiledBlock;
    }

    @Override
    public String getName() {
        return this.name;
    }

    public String[] getParameters() {
        return this.parameters;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        d dVar = new d(this, new MapVariableResolverFactory());
        if (this.name != null) {
            if (!variableResolverFactory.isIndexedFactory() && variableResolverFactory.isResolveable(this.name)) {
                throw new CompileException("duplicate function: " + this.name, this.expr, this.start);
            }
            variableResolverFactory.createVariable(this.name, dVar);
        }
        return dVar;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        d dVar = new d(this, new MapVariableResolverFactory());
        if (this.name != null) {
            if (!variableResolverFactory.isIndexedFactory() && variableResolverFactory.isResolveable(this.name)) {
                throw new CompileException("duplicate function: " + this.name, this.expr, this.start);
            }
            variableResolverFactory.createVariable(this.name, dVar);
        }
        return dVar;
    }

    public boolean hasParameters() {
        String[] strArr = this.parameters;
        return (strArr == null || strArr.length == 0) ? false : true;
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("FunctionDef:");
        String str = this.name;
        if (str == null) {
            str = "Anonymous";
        }
        sb2.append(str);
        return sb2.toString();
    }
}
