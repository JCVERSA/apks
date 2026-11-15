package org.mvel2.compiler;

import java.io.Serializable;
import org.mvel2.ParserConfiguration;
import org.mvel2.ast.ASTNode;
import org.mvel2.ast.TypeCast;
import org.mvel2.e;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ClassImportResolverFactory;
import org.mvel2.integration.impl.StackResetResolverFactory;
import org.mvel2.util.ASTLinkedList;

public class CompiledExpression implements Serializable, ExecutableStatement {
    private Class<? extends org.mvel2.optimizers.a> accessorOptimizer;
    private boolean convertableIngressEgress;
    private ASTNode firstNode;
    private boolean importInjectionRequired;
    private Class knownEgressType;
    private Class knownIngressType;
    private boolean literalOnly;
    private boolean optimized = false;
    private ParserConfiguration parserConfiguration;
    private String sourceName;

    public CompiledExpression(ASTLinkedList aSTLinkedList, String str, Class cls, ParserConfiguration parserConfiguration, boolean z10) {
        this.importInjectionRequired = false;
        this.firstNode = aSTLinkedList.firstNode();
        this.sourceName = str;
        this.knownEgressType = aSTLinkedList.isSingleNode() ? aSTLinkedList.firstNonSymbol().getEgressType() : cls;
        this.literalOnly = z10;
        this.parserConfiguration = parserConfiguration;
        this.importInjectionRequired = !parserConfiguration.getImports().isEmpty();
    }

    private void setupOptimizers() {
        Class<? extends org.mvel2.optimizers.a> cls = this.accessorOptimizer;
        if (cls != null) {
            org.mvel2.optimizers.b.f(cls);
        }
        this.optimized = true;
    }

    @Override
    public void computeTypeConversionRule() {
        Class<?> cls;
        Class cls2 = this.knownIngressType;
        if (cls2 == null || (cls = this.knownEgressType) == null) {
            return;
        }
        this.convertableIngressEgress = cls2.isAssignableFrom(cls);
    }

    public Class<? extends org.mvel2.optimizers.a> getAccessorOptimizer() {
        return this.accessorOptimizer;
    }

    public Object getDirectValue(Object obj, VariableResolverFactory variableResolverFactory) {
        return e.a(false, this, obj, this.importInjectionRequired ? new ClassImportResolverFactory(this.parserConfiguration, variableResolverFactory, true) : new StackResetResolverFactory(variableResolverFactory));
    }

    public ASTNode getFirstNode() {
        return this.firstNode;
    }

    @Override
    public Class getKnownEgressType() {
        return this.knownEgressType;
    }

    @Override
    public Class getKnownIngressType() {
        return this.knownIngressType;
    }

    public ParserConfiguration getParserConfiguration() {
        return this.parserConfiguration;
    }

    public String getSourceName() {
        return this.sourceName;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.optimized) {
            return getValue(obj, variableResolverFactory);
        }
        setupOptimizers();
        try {
            return getValue(obj, variableResolverFactory);
        } finally {
            org.mvel2.optimizers.b.a();
        }
    }

    @Override
    public boolean intOptimized() {
        return false;
    }

    @Override
    public boolean isConvertableIngressEgress() {
        return this.convertableIngressEgress;
    }

    @Override
    public boolean isEmptyStatement() {
        return this.firstNode == null;
    }

    @Override
    public boolean isExplicitCast() {
        ASTNode aSTNode = this.firstNode;
        return aSTNode != null && (aSTNode instanceof TypeCast);
    }

    public boolean isImportInjectionRequired() {
        return this.importInjectionRequired;
    }

    @Override
    public boolean isLiteralOnly() {
        return this.literalOnly;
    }

    public boolean isOptimized() {
        return this.optimized;
    }

    public boolean isSingleNode() {
        ASTNode aSTNode = this.firstNode;
        return aSTNode != null && aSTNode.nextASTNode == null;
    }

    @Override
    public void setKnownEgressType(Class cls) {
        this.knownEgressType = cls;
    }

    @Override
    public void setKnownIngressType(Class cls) {
        this.knownIngressType = cls;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        for (ASTNode aSTNode = this.firstNode; aSTNode != null; aSTNode = aSTNode.nextASTNode) {
            sb2.append(aSTNode.toString());
            sb2.append(";\n");
        }
        return sb2.toString();
    }

    @Override
    public Object getValue(Object obj, VariableResolverFactory variableResolverFactory) {
        if (!this.optimized) {
            setupOptimizers();
            try {
                return getValue(obj, variableResolverFactory);
            } finally {
                org.mvel2.optimizers.b.a();
            }
        }
        return getDirectValue(obj, variableResolverFactory);
    }
}
