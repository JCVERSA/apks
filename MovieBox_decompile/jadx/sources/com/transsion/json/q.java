package com.transsion.json;

import java.util.LinkedList;
import java.util.List;

public class q {

    final LinkedList f44739a = new LinkedList();

    public q a(String str) {
        this.f44739a.add(str);
        return this;
    }

    public List b() {
        return this.f44739a;
    }

    public int c() {
        return this.f44739a.size();
    }

    public String d() {
        return (String) this.f44739a.removeLast();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        return this.f44739a.equals(((q) obj).f44739a);
    }

    public int hashCode() {
        return this.f44739a.hashCode();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("[ ");
        boolean z10 = false;
        for (String str : this.f44739a) {
            if (z10) {
                sb2.append(".");
            }
            sb2.append(str);
            z10 = true;
        }
        sb2.append(" ]");
        return sb2.toString();
    }
}
