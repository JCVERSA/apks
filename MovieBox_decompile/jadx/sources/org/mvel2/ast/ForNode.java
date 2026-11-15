package org.mvel2.ast;

import java.util.HashMap;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.util.e;
import org.mvel2.util.m;

public class ForNode extends BlockNode {
    protected ExecutableStatement after;
    protected ExecutableStatement condition;
    protected boolean indexAlloc;
    protected ExecutableStatement initializer;
    protected String item;

    public ForNode(char[] cArr, int i10, int i11, int i12, int i13, int i14, ParserContext parserContext) {
        super(parserContext);
        boolean z10 = false;
        this.indexAlloc = false;
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        this.blockStart = i12;
        this.blockOffset = i13;
        boolean zBuildForEach = buildForEach(cArr, i10, i11, i12, i13, i14, parserContext);
        if (parserContext != null && parserContext.isIndexAllocation()) {
            z10 = true;
        }
        this.indexAlloc = z10;
        if ((i14 & 16) != 0 && this.compiledBlock.isEmptyStatement() && !zBuildForEach) {
            throw new RedundantCodeException();
        }
        if (parserContext != null) {
            parserContext.popVariableScope();
        }
    }

    private boolean buildForEach(char[] cArr, int i10, int i11, int i12, int i13, int i14, ParserContext parserContext) {
        int i15 = i11 + i10;
        boolean z10 = false;
        int iNextCondPart = nextCondPart(cArr, i10, i15, false);
        try {
            ParserContext parserContextCreateColoringSubcontext = parserContext != null ? parserContext.createSubcontext().createColoringSubcontext() : new ParserContext();
            this.initializer = (ExecutableStatement) m.I0(cArr, i10, (iNextCondPart - i10) - 1, parserContextCreateColoringSubcontext);
            if (parserContext != null) {
                parserContext.pushVariableScope();
            }
            try {
                try {
                    i10 = nextCondPart(cArr, iNextCondPart, i15, false);
                    ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, iNextCondPart, (i10 - iNextCondPart) - 1, parserContextCreateColoringSubcontext);
                    this.condition = executableStatement;
                    int i16 = i14 & 16;
                    e.c(parserContext, executableStatement, Boolean.class, i16 != 0);
                    this.after = (ExecutableStatement) m.I0(cArr, i10, nextCondPart(cArr, i10, i15, true) - i10, parserContextCreateColoringSubcontext);
                    if (parserContextCreateColoringSubcontext != null && i16 != 0 && parserContextCreateColoringSubcontext.isVariablesEscape()) {
                        if (parserContext != parserContextCreateColoringSubcontext) {
                            parserContext.addVariables(parserContextCreateColoringSubcontext.getVariables());
                        }
                        z10 = true;
                    } else if (parserContextCreateColoringSubcontext != null && parserContext != null) {
                        parserContext.addVariables(parserContextCreateColoringSubcontext.getVariables());
                    }
                    this.compiledBlock = (ExecutableStatement) m.I0(this.expr, i12, i13, parserContextCreateColoringSubcontext);
                    if (parserContext != null) {
                        parserContext.setInputs(parserContextCreateColoringSubcontext.getInputs());
                    }
                    return z10;
                } catch (CompileException e10) {
                    if (e10.getExpr().length == 0) {
                        e10.setExpr(this.expr);
                        int i17 = iNextCondPart;
                        while (true) {
                            char[] cArr2 = this.expr;
                            if (i17 >= cArr2.length || !m.q0(cArr2[i17])) {
                                break;
                            }
                            i17++;
                        }
                        e10.setCursor(i17);
                    }
                    throw e10;
                }
            } catch (NegativeArraySizeException unused) {
                i10 = iNextCondPart;
                throw new CompileException("wrong syntax; did you mean to use 'foreach'?", this.expr, i10);
            }
        } catch (NegativeArraySizeException unused2) {
        }
    }

    private static int nextCondPart(char[] cArr, int i10, int i11, boolean z10) {
        while (i10 < i11) {
            if (cArr[i10] == ';') {
                return i10 + 1;
            }
            i10++;
        }
        if (z10) {
            return i10;
        }
        throw new CompileException("expected ;", cArr, i10);
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ExecutableStatement executableStatement = this.initializer;
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory(new HashMap(1), variableResolverFactory);
        executableStatement.getValue(obj, obj2, mapVariableResolverFactory);
        while (((Boolean) this.condition.getValue(obj, obj2, mapVariableResolverFactory)).booleanValue()) {
            Object value = this.compiledBlock.getValue(obj, obj2, mapVariableResolverFactory);
            if (mapVariableResolverFactory.tiltFlag()) {
                return value;
            }
            this.after.getValue(obj, obj2, mapVariableResolverFactory);
        }
        return null;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.indexAlloc) {
            variableResolverFactory = new MapVariableResolverFactory(new HashMap(1), variableResolverFactory);
        }
        ExecutableStatement executableStatement = this.initializer;
        while (true) {
            executableStatement.getValue(obj, obj2, variableResolverFactory);
            if (!((Boolean) this.condition.getValue(obj, obj2, variableResolverFactory)).booleanValue()) {
                return null;
            }
            Object value = this.compiledBlock.getValue(obj, obj2, variableResolverFactory);
            if (variableResolverFactory.tiltFlag()) {
                return value;
            }
            executableStatement = this.after;
        }
    }
}
