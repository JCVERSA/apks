package javassist.compiler;

import java.util.HashMap;
import javassist.compiler.ast.Declarator;

public final class SymbolTable extends HashMap<String, Declarator> {
    private static final long serialVersionUID = 1;
    private SymbolTable parent;

    public SymbolTable() {
        this(null);
    }

    public void append(String str, Declarator declarator) {
        put(str, declarator);
    }

    public SymbolTable getParent() {
        return this.parent;
    }

    public Declarator lookup(String str) {
        SymbolTable symbolTable;
        Declarator declarator = get(str);
        return (declarator != null || (symbolTable = this.parent) == null) ? declarator : symbolTable.lookup(str);
    }

    public SymbolTable(SymbolTable symbolTable) {
        this.parent = symbolTable;
    }
}
