package org.mozilla.javascript.ast;

import java.util.Iterator;
import java.util.SortedSet;
import java.util.TreeSet;
import org.mozilla.javascript.Node;

public class AstRoot extends ScriptNode {
    private SortedSet<Comment> comments;

    public class a implements NodeVisitor {
        public a() {
        }

        @Override
        public boolean visit(AstNode astNode) {
            if (astNode.getType() == 137 || astNode.getParent() != null) {
                return true;
            }
            throw new IllegalStateException("No parent for node: " + astNode + "\n" + astNode.toSource(0));
        }
    }

    public AstRoot() {
        this.type = 137;
    }

    public void addComment(Comment comment) {
        assertNotNull(comment);
        if (this.comments == null) {
            this.comments = new TreeSet(new AstNode.PositionComparator());
        }
        this.comments.add(comment);
        comment.setParent(this);
    }

    public void checkParentLinks() {
        visit(new a());
    }

    @Override
    public String debugPrint() {
        AstNode.DebugPrintVisitor debugPrintVisitor = new AstNode.DebugPrintVisitor(new StringBuilder(1000));
        visitAll(debugPrintVisitor);
        return debugPrintVisitor.toString();
    }

    public SortedSet<Comment> getComments() {
        return this.comments;
    }

    public void setComments(SortedSet<Comment> sortedSet) {
        if (sortedSet == null) {
            this.comments = null;
            return;
        }
        SortedSet<Comment> sortedSet2 = this.comments;
        if (sortedSet2 != null) {
            sortedSet2.clear();
        }
        Iterator<Comment> it = sortedSet.iterator();
        while (it.hasNext()) {
            addComment(it.next());
        }
    }

    @Override
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        for (Node node : this) {
            sb.append(((AstNode) node).toSource(i));
            if (node.getType() == 162) {
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public void visitAll(NodeVisitor nodeVisitor) {
        visit(nodeVisitor);
        visitComments(nodeVisitor);
    }

    public void visitComments(NodeVisitor nodeVisitor) {
        SortedSet<Comment> sortedSet = this.comments;
        if (sortedSet != null) {
            Iterator<Comment> it = sortedSet.iterator();
            while (it.hasNext()) {
                nodeVisitor.visit(it.next());
            }
        }
    }

    public AstRoot(int i) {
        super(i);
        this.type = 137;
    }
}
