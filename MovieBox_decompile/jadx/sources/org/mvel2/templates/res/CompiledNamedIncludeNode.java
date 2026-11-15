package org.mvel2.templates.res;

import g00.c;
import g00.d;
import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.StackDelimiterResolverFactory;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.TemplateError;

public class CompiledNamedIncludeNode extends Node {
    private Serializable cIncludeExpression;
    private Serializable cPreExpression;

    public CompiledNamedIncludeNode(int i10, String str, char[] cArr, int i11, int i12, ParserContext parserContext) {
        this.begin = i10;
        this.name = str;
        this.contents = cArr;
        this.cStart = i11;
        this.cEnd = i12 - 1;
        this.end = i12;
        int iA = d.a(cArr, i11);
        char[] cArr2 = this.contents;
        int i13 = this.cStart;
        this.cIncludeExpression = org.mvel2.d.e(cArr2, i13, iA - i13, parserContext);
        char[] cArr3 = this.contents;
        if (iA != cArr3.length) {
            int i14 = iA + 1;
            this.cPreExpression = org.mvel2.d.e(cArr3, i14, this.cEnd - i14, parserContext);
        }
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override
    public Object eval(f00.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        StackDelimiterResolverFactory stackDelimiterResolverFactory = new StackDelimiterResolverFactory(variableResolverFactory);
        Serializable serializable = this.cPreExpression;
        if (serializable != null) {
            org.mvel2.d.r(serializable, obj, stackDelimiterResolverFactory);
        }
        if (this.next == null) {
            return cVar.append(String.valueOf(f00.d.f(dVar.h().a((String) org.mvel2.d.s(this.cIncludeExpression, obj, stackDelimiterResolverFactory, String.class)), obj, stackDelimiterResolverFactory, dVar.h())));
        }
        String str = (String) org.mvel2.d.s(this.cIncludeExpression, obj, stackDelimiterResolverFactory, String.class);
        CompiledTemplate compiledTemplateA = dVar.h().a(str);
        if (compiledTemplateA != null) {
            return this.next.eval(dVar, cVar.append(String.valueOf(f00.d.f(compiledTemplateA, obj, stackDelimiterResolverFactory, dVar.h()))), obj, stackDelimiterResolverFactory);
        }
        throw new TemplateError("named template does not exist: " + str);
    }
}
