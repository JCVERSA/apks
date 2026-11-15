package org.mvel2;

public class PropertyAccessException extends CompileException {
    public PropertyAccessException(String str, char[] cArr, int i10, Throwable th2, ParserContext parserContext) {
        super(str, cArr, i10, th2);
        setParserContext(parserContext);
    }

    private void setParserContext(ParserContext parserContext) {
        if (parserContext != null) {
            setEvaluationContext(parserContext.getEvaluationContext());
        }
    }

    public PropertyAccessException(String str, char[] cArr, int i10, ParserContext parserContext) {
        super(str, cArr, i10);
        setParserContext(parserContext);
    }
}
