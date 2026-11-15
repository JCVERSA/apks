package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DependencyNode implements u0.a {

    WidgetRun f6605d;

    int f6607f;

    public int f6608g;

    public u0.a f6602a = null;

    public boolean f6603b = false;

    public boolean f6604c = false;

    Type f6606e = Type.UNKNOWN;

    int f6609h = 1;

    e f6610i = null;

    public boolean f6611j = false;

    List f6612k = new ArrayList();

    List f6613l = new ArrayList();

    enum Type {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.f6605d = widgetRun;
    }

    @Override
    public void a(u0.a aVar) {
        Iterator it = this.f6613l.iterator();
        while (it.hasNext()) {
            if (!((DependencyNode) it.next()).f6611j) {
                return;
            }
        }
        this.f6604c = true;
        u0.a aVar2 = this.f6602a;
        if (aVar2 != null) {
            aVar2.a(this);
        }
        if (this.f6603b) {
            this.f6605d.a(this);
            return;
        }
        DependencyNode dependencyNode = null;
        int i10 = 0;
        for (DependencyNode dependencyNode2 : this.f6613l) {
            if (!(dependencyNode2 instanceof e)) {
                i10++;
                dependencyNode = dependencyNode2;
            }
        }
        if (dependencyNode != null && i10 == 1 && dependencyNode.f6611j) {
            e eVar = this.f6610i;
            if (eVar != null) {
                if (!eVar.f6611j) {
                    return;
                } else {
                    this.f6607f = this.f6609h * eVar.f6608g;
                }
            }
            d(dependencyNode.f6608g + this.f6607f);
        }
        u0.a aVar3 = this.f6602a;
        if (aVar3 != null) {
            aVar3.a(this);
        }
    }

    public void b(u0.a aVar) {
        this.f6612k.add(aVar);
        if (this.f6611j) {
            aVar.a(aVar);
        }
    }

    public void c() {
        this.f6613l.clear();
        this.f6612k.clear();
        this.f6611j = false;
        this.f6608g = 0;
        this.f6604c = false;
        this.f6603b = false;
    }

    public void d(int i10) {
        if (this.f6611j) {
            return;
        }
        this.f6611j = true;
        this.f6608g = i10;
        for (u0.a aVar : this.f6612k) {
            aVar.a(aVar);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f6605d.f6615b.v());
        sb2.append(":");
        sb2.append(this.f6606e);
        sb2.append("(");
        sb2.append(this.f6611j ? Integer.valueOf(this.f6608g) : "unresolved");
        sb2.append(") <t=");
        sb2.append(this.f6613l.size());
        sb2.append(":d=");
        sb2.append(this.f6612k.size());
        sb2.append(">");
        return sb2.toString();
    }
}
