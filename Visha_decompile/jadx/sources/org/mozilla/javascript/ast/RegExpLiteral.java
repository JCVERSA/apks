package org.mozilla.javascript.ast;

public class RegExpLiteral extends AstNode {
    private String flags;
    private String value;

    public RegExpLiteral() {
        this.type = 48;
    }

    public String getFlags() {
        return this.flags;
    }

    public String getValue() {
        return this.value;
    }

    public void setFlags(String str) {
        this.flags = str;
    }

    public void setValue(String str) {
        assertNotNull(str);
        this.value = str;
    }

    @Override
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        sb.append("/");
        sb.append(this.value);
        sb.append("/");
        String str = this.flags;
        if (str == null) {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    @Override
    public void visit(NodeVisitor nodeVisitor) {
        nodeVisitor.visit(this);
    }

    public RegExpLiteral(int i) {
        super(i);
        this.type = 48;
    }

    public RegExpLiteral(int i, int i2) {
        super(i, i2);
        this.type = 48;
    }
}
