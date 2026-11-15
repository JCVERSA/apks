package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ClassImportResolverFactory;
import org.mvel2.integration.impl.ImmutableDefaultFactory;
import org.mvel2.integration.impl.StackResetResolverFactory;
import org.mvel2.util.m;

public class ImportNode extends ASTNode {
    private static final char[] WC_TEST = {'.', '*'};
    private int _offset;
    private Class importClass;
    private boolean packageImport;

    public ImportNode(char[] cArr, int i10, int i11, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        this.pCtx = parserContext;
        if (m.A(cArr, i10, i11, WC_TEST)) {
            this.packageImport = true;
            short sG = (short) m.G(cArr, i10, i11, '.');
            this._offset = sG;
            if (sG == -1) {
                this._offset = 0;
                return;
            }
            return;
        }
        String str = new String(cArr, i10, i11);
        ClassLoader classLoader = getClassLoader();
        try {
            this.importClass = Class.forName(str, true, classLoader);
        } catch (ClassNotFoundException unused) {
            StringBuilder sb2 = new StringBuilder();
            int iLastIndexOf = str.lastIndexOf(46);
            sb2.append(str.substring(0, iLastIndexOf));
            sb2.append("$");
            sb2.append(str.substring(iLastIndexOf + 1));
            try {
                this.importClass = Class.forName(sb2.toString().trim(), true, classLoader);
            } catch (ClassNotFoundException unused2) {
                throw new CompileException("class not found: " + new String(cArr), cArr, i10);
            }
        }
    }

    public Class getImportClass() {
        return this.importClass;
    }

    public String getPackageImport() {
        char[] cArr = this.expr;
        int i10 = this.start;
        return new String(cArr, i10, this._offset - i10);
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.packageImport) {
            if (!org.mvel2.d.f68810k) {
                return m.E(variableResolverFactory, this.pCtx).addClass(this.importClass);
            }
            variableResolverFactory.createVariable(this.importClass.getSimpleName(), this.importClass);
            return this.importClass;
        }
        if (variableResolverFactory instanceof ImmutableDefaultFactory) {
            return null;
        }
        if ((variableResolverFactory instanceof StackResetResolverFactory) && (((StackResetResolverFactory) variableResolverFactory).getDelegate() instanceof ImmutableDefaultFactory)) {
            return null;
        }
        ClassImportResolverFactory classImportResolverFactoryE = m.E(variableResolverFactory, this.pCtx);
        char[] cArr = this.expr;
        int i10 = this.start;
        classImportResolverFactoryE.addPackageImport(new String(cArr, i10, this._offset - i10));
        return null;
    }

    public boolean isPackageImport() {
        return this.packageImport;
    }

    public void setPackageImport(boolean z10) {
        this.packageImport = z10;
    }
}
