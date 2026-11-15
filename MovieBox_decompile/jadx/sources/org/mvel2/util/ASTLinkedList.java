package org.mvel2.util;

import org.mvel2.ast.ASTNode;

public class ASTLinkedList implements ASTIterator {
    private ASTNode current;
    private ASTNode firstASTNode;
    private ASTNode last;
    private int size;

    public ASTLinkedList() {
    }

    @Override
    public void addTokenNode(ASTNode aSTNode) {
        this.size++;
        if (this.firstASTNode == null) {
            this.current = aSTNode;
            this.firstASTNode = aSTNode;
        } else {
            this.current.nextASTNode = aSTNode;
            this.current = aSTNode;
            this.last = aSTNode;
        }
    }

    @Override
    public void back() {
        this.current = this.last;
    }

    @Override
    public void finish() {
        reset();
        ASTNode aSTNodeNextNode = null;
        while (hasMoreNodes()) {
            ASTNode aSTNodeNextNode2 = nextNode();
            if (aSTNodeNextNode2.isDiscard()) {
                if (aSTNodeNextNode == null) {
                    aSTNodeNextNode = nextNode();
                    this.firstASTNode = aSTNodeNextNode;
                } else {
                    aSTNodeNextNode.nextASTNode = nextNode();
                }
            } else if (!hasMoreNodes()) {
                break;
            } else {
                aSTNodeNextNode = aSTNodeNextNode2;
            }
        }
        this.last = aSTNodeNextNode;
        reset();
    }

    @Override
    public ASTNode firstNode() {
        return this.firstASTNode;
    }

    public ASTNode firstNonSymbol() {
        ASTNode aSTNode = this.firstASTNode;
        return aSTNode.fields == -1 ? aSTNode.nextASTNode : aSTNode;
    }

    @Override
    public boolean hasMoreNodes() {
        return this.current != null;
    }

    @Override
    public int index() {
        return -1;
    }

    public boolean isSingleNode() {
        int i10 = this.size;
        if (i10 != 1) {
            return i10 == 2 && this.firstASTNode.fields == -1;
        }
        return true;
    }

    @Override
    public ASTNode nextNode() {
        ASTNode aSTNode = this.current;
        if (aSTNode == null) {
            return null;
        }
        this.last = aSTNode;
        this.current = aSTNode.nextASTNode;
        return aSTNode;
    }

    @Override
    public ASTNode nodesAhead(int i10) {
        if (this.current == null) {
            return null;
        }
        ASTNode aSTNode = null;
        for (int i11 = 0; i11 < i10; i11++) {
            aSTNode = this.current.nextASTNode;
            if (aSTNode == null) {
                return null;
            }
        }
        return aSTNode;
    }

    @Override
    public ASTNode nodesBack(int i10) {
        throw new RuntimeException("unimplemented");
    }

    @Override
    public ASTNode peekLast() {
        return this.last;
    }

    @Override
    public ASTNode peekNext() {
        ASTNode aSTNode;
        ASTNode aSTNode2 = this.current;
        if (aSTNode2 == null || (aSTNode = aSTNode2.nextASTNode) == null) {
            return null;
        }
        return aSTNode;
    }

    @Override
    public ASTNode peekNode() {
        ASTNode aSTNode = this.current;
        if (aSTNode == null) {
            return null;
        }
        return aSTNode;
    }

    public void removeToken() {
        ASTNode aSTNode = this.current;
        if (aSTNode != null) {
            this.current = aSTNode.nextASTNode;
        }
    }

    @Override
    public void reset() {
        this.current = this.firstASTNode;
    }

    public void setCurrentNode(ASTNode aSTNode) {
        this.current = aSTNode;
    }

    @Override
    public String showNodeChain() {
        throw new RuntimeException("unimplemented");
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public void skipNode() {
        ASTNode aSTNode = this.current;
        if (aSTNode != null) {
            this.current = aSTNode.nextASTNode;
        }
    }

    public ASTLinkedList(ASTIterator aSTIterator) {
        ASTNode aSTNodeFirstNode = aSTIterator.firstNode();
        this.firstASTNode = aSTNodeFirstNode;
        this.current = aSTNodeFirstNode;
    }

    public ASTLinkedList(ASTNode aSTNode) {
        this.firstASTNode = aSTNode;
        this.current = aSTNode;
    }

    @Override
    public void addTokenNode(ASTNode aSTNode, ASTNode aSTNode2) {
        this.size += 2;
        if (this.firstASTNode == null) {
            this.firstASTNode = aSTNode;
            aSTNode.nextASTNode = aSTNode2;
            this.current = aSTNode2;
            this.last = aSTNode2;
            return;
        }
        this.current.nextASTNode = aSTNode;
        aSTNode.nextASTNode = aSTNode2;
        this.current = aSTNode2;
        this.last = aSTNode2;
    }

    public ASTLinkedList(ASTNode aSTNode, int i10) {
        this.firstASTNode = aSTNode;
        this.current = aSTNode;
        this.size = i10;
    }
}
