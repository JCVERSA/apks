package defpackage;

import kotlinx.coroutines.internal.LockFreeLinkedListNode;

public final class es8 {
    public final LockFreeLinkedListNode a;

    public es8(LockFreeLinkedListNode lockFreeLinkedListNode) {
        this.a = lockFreeLinkedListNode;
    }

    public String toString() {
        return "Removed[" + this.a + ']';
    }
}
