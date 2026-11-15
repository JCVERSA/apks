package org.mozilla.javascript.ast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.text.StringSubstitutor;

public class ObjectLiteral extends AstNode implements DestructuringForm {
    private static final List<ObjectProperty> NO_ELEMS = Collections.unmodifiableList(new ArrayList());
    private List<ObjectProperty> elements;
    boolean isDestructuring;

    public ObjectLiteral() {
        this.type = 67;
    }

    public void addElement(ObjectProperty objectProperty) {
        assertNotNull(objectProperty);
        if (this.elements == null) {
            this.elements = new ArrayList();
        }
        this.elements.add(objectProperty);
        objectProperty.setParent(this);
    }

    public List<ObjectProperty> getElements() {
        List<ObjectProperty> list = this.elements;
        return list != null ? list : NO_ELEMS;
    }

    @Override
    public boolean isDestructuring() {
        return this.isDestructuring;
    }

    public void setElements(List<ObjectProperty> list) {
        if (list == null) {
            this.elements = null;
            return;
        }
        List<ObjectProperty> list2 = this.elements;
        if (list2 != null) {
            list2.clear();
        }
        Iterator<ObjectProperty> it = list.iterator();
        while (it.hasNext()) {
            addElement(it.next());
        }
    }

    @Override
    public void setIsDestructuring(boolean z) {
        this.isDestructuring = z;
    }

    @Override
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        sb.append("{");
        List<ObjectProperty> list = this.elements;
        if (list != null) {
            printList(list, sb);
        }
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        return sb.toString();
    }

    @Override
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            Iterator<ObjectProperty> it = getElements().iterator();
            while (it.hasNext()) {
                it.next().visit(nodeVisitor);
            }
        }
    }

    public ObjectLiteral(int i) {
        super(i);
        this.type = 67;
    }

    public ObjectLiteral(int i, int i2) {
        super(i, i2);
        this.type = 67;
    }
}
