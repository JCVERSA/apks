package org.mozilla.javascript.ast;

public class Label extends Jump {
    private String name;

    public Label() {
        this.type = 131;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        String strTrim = str == null ? null : str.trim();
        if (strTrim == null || "".equals(strTrim)) {
            throw new IllegalArgumentException("invalid label name");
        }
        this.name = strTrim;
    }

    @Override
    public String toSource(int i) {
        return makeIndent(i) + this.name + ":\n";
    }

    @Override
    public void visit(NodeVisitor nodeVisitor) {
        nodeVisitor.visit(this);
    }

    public Label(int i) {
        this(i, -1);
    }

    public Label(int i, int i2) {
        this.type = 131;
        this.position = i;
        this.length = i2;
    }

    public Label(int i, int i2, String str) {
        this(i, i2);
        setName(str);
    }
}
