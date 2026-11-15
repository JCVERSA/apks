package org.mvel2.templates.res;

import f00.d;
import g00.c;
import java.io.Serializable;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public abstract class Node implements Serializable {
    protected int begin;
    protected int cEnd;
    protected int cStart;
    protected char[] contents;
    protected int end;
    protected String name;
    public Node next;
    protected Node terminus;

    public Node() {
    }

    public void calculateContents(char[] cArr) {
        int i10 = this.cStart;
        this.contents = m.K0(cArr, i10, this.end - i10);
    }

    public abstract boolean demarcate(Node node, char[] cArr);

    public abstract Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory);

    public int getBegin() {
        return this.begin;
    }

    public int getCEnd() {
        return this.cEnd;
    }

    public int getCStart() {
        return this.cStart;
    }

    public char[] getContents() {
        return this.contents;
    }

    public int getEnd() {
        return this.end;
    }

    public int getLength() {
        return this.end - this.begin;
    }

    public String getName() {
        return this.name;
    }

    public Node getNext() {
        return this.next;
    }

    public Node getTerminus() {
        return this.terminus;
    }

    public boolean isOpenNode() {
        return false;
    }

    public void setBegin(int i10) {
        this.begin = i10;
    }

    public void setCEnd(int i10) {
        this.cEnd = i10;
    }

    public void setCStart(int i10) {
        this.cStart = i10;
    }

    public void setContents(char[] cArr) {
        this.contents = cArr;
    }

    public void setEnd(int i10) {
        this.end = i10;
    }

    public void setName(String str) {
        this.name = str;
    }

    public Node setNext(Node node) {
        this.next = node;
        return node;
    }

    public void setTerminus(Node node) {
        this.terminus = node;
    }

    public Node(int i10, String str, char[] cArr, int i11, int i12) {
        this.begin = i10;
        this.cStart = i11;
        this.cEnd = i12 - 1;
        this.end = i12;
        this.name = str;
        this.contents = cArr;
    }

    public Node(int i10, String str, char[] cArr, int i11, int i12, Node node) {
        this.name = str;
        this.begin = i10;
        this.cStart = i11;
        this.cEnd = i12 - 1;
        this.end = i12;
        this.contents = cArr;
        this.next = node;
    }
}
