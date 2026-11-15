package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

public class LineLabel extends ASTNode {
    private int lineNumber;
    private String sourceFile;

    public LineLabel(String str, int i10, ParserContext parserContext) {
        super(parserContext);
        this.lineNumber = i10;
        this.sourceFile = str;
        this.fields = -1;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return null;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return null;
    }

    public String getSourceFile() {
        return this.sourceFile;
    }

    public void setLineNumber(int i10) {
        this.lineNumber = i10;
    }

    public void setSourceFile(String str) {
        this.sourceFile = str;
    }

    @Override
    public String toString() {
        return "[SourceLine:" + this.lineNumber + "]";
    }
}
