package org.mvel2.util;

import org.mvel2.ScriptRuntimeException;

public class g {

    private StackElement f68885a;

    private int f68886b = 0;

    public void a(Object obj) {
        this.f68886b++;
        StackElement stackElement = this.f68885a;
        if (stackElement == null) {
            this.f68885a = new StackElement(null, obj);
            return;
        }
        while (true) {
            StackElement stackElement2 = stackElement.next;
            if (stackElement2 == null) {
                stackElement.next = new StackElement(null, obj);
                return;
            }
            stackElement = stackElement2;
        }
    }

    public void b() {
        this.f68886b = 0;
        this.f68885a = null;
    }

    public void c(g gVar) {
        this.f68885a = new StackElement(new StackElement(this.f68885a, gVar.f68885a.value), gVar.f68885a.next.value);
        gVar.f68885a = gVar.f68885a.next.next;
        this.f68886b += 2;
        gVar.f68886b -= 2;
    }

    public void d(g gVar) {
        this.f68885a = new StackElement(new StackElement(this.f68885a, gVar.f68885a.next.value), gVar.f68885a.value);
        gVar.f68885a = gVar.f68885a.next.next;
        this.f68886b += 2;
        gVar.f68886b -= 2;
    }

    public void e() {
        int i10 = this.f68886b;
        if (i10 != 0) {
            this.f68886b = i10 - 1;
            this.f68885a = this.f68885a.next;
        }
    }

    public void f() {
        this.f68886b++;
        StackElement stackElement = this.f68885a;
        this.f68885a = new StackElement(stackElement, stackElement.value);
    }

    public boolean g() {
        return this.f68886b == 0;
    }

    public boolean h() {
        return this.f68886b > 1;
    }

    public void i() {
        StackElement stackElement = this.f68885a;
        StackElement stackElement2 = stackElement.next.next;
        this.f68885a = new StackElement(stackElement2.next, a00.a.g(stackElement2.value, ((Integer) stackElement.value).intValue(), this.f68885a.next.value));
        this.f68886b -= 2;
    }

    public void j(int i10) {
        StackElement stackElement = this.f68885a;
        StackElement stackElement2 = stackElement.next;
        this.f68885a = new StackElement(stackElement2.next, a00.a.g(stackElement2.value, i10, stackElement.value));
        this.f68886b--;
    }

    public Object k() {
        if (this.f68886b == 0) {
            return null;
        }
        return this.f68885a.value;
    }

    public Object l() {
        return this.f68885a.next.value;
    }

    public Boolean m() {
        if (this.f68886b == 0) {
            return null;
        }
        Object obj = this.f68885a.value;
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("expected Boolean; but found: ");
        Object obj2 = this.f68885a.value;
        sb2.append(obj2 == null ? "null" : obj2.getClass().getName());
        throw new ScriptRuntimeException(sb2.toString());
    }

    public Object n() {
        int i10 = this.f68886b;
        if (i10 == 0) {
            return null;
        }
        try {
            this.f68886b = i10 - 1;
            return this.f68885a.value;
        } finally {
            this.f68885a = this.f68885a.next;
        }
    }

    public Object o() {
        try {
            this.f68886b -= 2;
            return this.f68885a.value;
        } finally {
            this.f68885a = this.f68885a.next.next;
        }
    }

    public Boolean p() {
        int i10 = this.f68886b;
        this.f68886b = i10 - 1;
        if (i10 == 0) {
            return null;
        }
        try {
            StackElement stackElement = this.f68885a;
            Object obj = stackElement.value;
            if (obj instanceof Boolean) {
                Boolean bool = (Boolean) obj;
                this.f68885a = stackElement.next;
                return bool;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("expected Boolean; but found: ");
            Object obj2 = this.f68885a.value;
            sb2.append(obj2 == null ? "null" : obj2.getClass().getName());
            throw new ScriptRuntimeException(sb2.toString());
        } catch (Throwable th2) {
            this.f68885a = this.f68885a.next;
            throw th2;
        }
    }

    public void q(Object obj) {
        this.f68886b++;
        this.f68885a = new StackElement(this.f68885a, obj);
    }

    public void r(Object obj, Object obj2) {
        this.f68886b += 2;
        this.f68885a = new StackElement(new StackElement(this.f68885a, obj), obj2);
    }

    public void s(Object obj, Object obj2, Object obj3) {
        this.f68886b += 3;
        this.f68885a = new StackElement(new StackElement(new StackElement(this.f68885a, obj), obj2), obj3);
    }

    public int t() {
        return this.f68886b;
    }

    public String toString() {
        StackElement stackElement = this.f68885a;
        if (stackElement == null) {
            return "<EMPTY>";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        do {
            sb2.append(String.valueOf(stackElement.value));
            if (stackElement.next != null) {
                sb2.append(", ");
            }
            stackElement = stackElement.next;
        } while (stackElement != null);
        sb2.append("]");
        return sb2.toString();
    }

    public void u() {
        StackElement stackElement = this.f68885a;
        StackElement stackElement2 = stackElement.next;
        StackElement stackElement3 = stackElement2.next;
        stackElement2.next = stackElement;
        this.f68885a = stackElement2;
        stackElement.next = stackElement3;
    }

    public void v() {
        StackElement stackElement = this.f68885a;
        StackElement stackElement2 = stackElement.next;
        StackElement stackElement3 = stackElement2.next;
        stackElement2.next = stackElement;
        stackElement.next = stackElement3.next;
        this.f68885a = stackElement3;
        stackElement3.next = stackElement2;
    }

    public void w() {
        StackElement stackElement = this.f68885a.next;
        StackElement stackElement2 = stackElement.next;
        this.f68885a = new StackElement(stackElement2.next, a00.a.g(stackElement2.value, ((Integer) stackElement.value).intValue(), this.f68885a.value));
        this.f68886b -= 2;
    }
}
