package org.mvel2;

import org.mvel2.ast.ASTNode;

public class UnresolveablePropertyException extends RuntimeException {
    private String name;

    public UnresolveablePropertyException(ASTNode aSTNode, Throwable th2) {
        super("unable to resolve token: " + aSTNode.getName(), th2);
        this.name = aSTNode.getName();
    }

    @Override
    public synchronized Throwable fillInStackTrace() {
        return null;
    }

    public String getName() {
        return this.name;
    }

    public UnresolveablePropertyException(ASTNode aSTNode) {
        super("unable to resolve token: " + aSTNode.getName());
        this.name = aSTNode.getName();
    }

    public UnresolveablePropertyException(String str) {
        super("unable to resolve token: " + str);
        this.name = str;
    }
}
