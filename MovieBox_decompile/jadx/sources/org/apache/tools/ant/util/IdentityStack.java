package org.apache.tools.ant.util;

import java.util.Stack;

public class IdentityStack extends Stack {
    private static final long serialVersionUID = -5555522620060077046L;

    public IdentityStack() {
    }

    public static IdentityStack getInstance(Stack stack) {
        if (stack instanceof IdentityStack) {
            return (IdentityStack) stack;
        }
        IdentityStack identityStack = new IdentityStack();
        if (stack != null) {
            identityStack.addAll(stack);
        }
        return identityStack;
    }

    @Override
    public synchronized boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    public synchronized int indexOf(Object obj, int i10) {
        while (i10 < size()) {
            if (get(i10) == obj) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public synchronized int lastIndexOf(Object obj, int i10) {
        while (i10 >= 0) {
            if (get(i10) == obj) {
                return i10;
            }
            i10--;
        }
        return -1;
    }

    public IdentityStack(Object obj) {
        push(obj);
    }
}
