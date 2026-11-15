package org.mvel2.ast;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableLiteral;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class RegExMatch extends ASTNode {

    private Pattern f68786p;
    private int patternOffset;
    private int patternStart;
    private ExecutableStatement patternStmt;
    private ExecutableStatement stmt;

    public RegExMatch(char[] cArr, int i10, int i11, int i12, int i13, int i14, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        this.patternStart = i13;
        this.patternOffset = i14;
        if ((i12 & 16) != 0) {
            this.stmt = (ExecutableStatement) m.I0(cArr, i10, i11, parserContext);
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i13, i14, parserContext);
            this.patternStmt = executableStatement;
            if (executableStatement instanceof ExecutableLiteral) {
                try {
                    this.f68786p = Pattern.compile(String.valueOf(executableStatement.getValue(null, null)));
                } catch (PatternSyntaxException e10) {
                    throw new CompileException("bad regular expression", cArr, i13, e10);
                }
            }
        }
    }

    @Override
    public Class getEgressType() {
        return Boolean.class;
    }

    public Pattern getPattern() {
        return this.f68786p;
    }

    public ExecutableStatement getPatternStatement() {
        return this.patternStmt;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            return Boolean.valueOf(Pattern.compile(String.valueOf(org.mvel2.d.o(this.expr, this.patternStart, this.patternOffset, obj, variableResolverFactory))).matcher(String.valueOf(org.mvel2.d.o(this.expr, this.start, this.offset, obj, variableResolverFactory))).matches());
        } catch (PatternSyntaxException e10) {
            throw new CompileException("bad regular expression", this.expr, this.patternStart, e10);
        }
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Pattern pattern = this.f68786p;
        return pattern == null ? Boolean.valueOf(Pattern.compile(String.valueOf(this.patternStmt.getValue(obj, obj2, variableResolverFactory))).matcher(String.valueOf(this.stmt.getValue(obj, obj2, variableResolverFactory))).matches()) : Boolean.valueOf(pattern.matcher(String.valueOf(this.stmt.getValue(obj, obj2, variableResolverFactory))).matches());
    }

    public ExecutableStatement getStatement() {
        return this.stmt;
    }
}
