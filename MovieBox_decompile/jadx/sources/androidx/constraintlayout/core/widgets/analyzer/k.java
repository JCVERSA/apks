package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;

class k {

    public static int f6658h;

    WidgetRun f6661c;

    WidgetRun f6662d;

    int f6664f;

    int f6665g;

    public int f6659a = 0;

    public boolean f6660b = false;

    ArrayList f6663e = new ArrayList();

    public k(WidgetRun widgetRun, int i10) {
        this.f6661c = null;
        this.f6662d = null;
        int i11 = f6658h;
        this.f6664f = i11;
        f6658h = i11 + 1;
        this.f6661c = widgetRun;
        this.f6662d = widgetRun;
        this.f6665g = i10;
    }

    private long c(DependencyNode dependencyNode, long j10) {
        WidgetRun widgetRun = dependencyNode.f6605d;
        if (widgetRun instanceof i) {
            return j10;
        }
        int size = dependencyNode.f6612k.size();
        long jMin = j10;
        for (int i10 = 0; i10 < size; i10++) {
            u0.a aVar = (u0.a) dependencyNode.f6612k.get(i10);
            if (aVar instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) aVar;
                if (dependencyNode2.f6605d != widgetRun) {
                    jMin = Math.min(jMin, c(dependencyNode2, ((long) dependencyNode2.f6607f) + j10));
                }
            }
        }
        if (dependencyNode != widgetRun.f6622i) {
            return jMin;
        }
        long j11 = j10 - widgetRun.j();
        return Math.min(Math.min(jMin, c(widgetRun.f6621h, j11)), j11 - ((long) widgetRun.f6621h.f6607f));
    }

    private long d(DependencyNode dependencyNode, long j10) {
        WidgetRun widgetRun = dependencyNode.f6605d;
        if (widgetRun instanceof i) {
            return j10;
        }
        int size = dependencyNode.f6612k.size();
        long jMax = j10;
        for (int i10 = 0; i10 < size; i10++) {
            u0.a aVar = (u0.a) dependencyNode.f6612k.get(i10);
            if (aVar instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) aVar;
                if (dependencyNode2.f6605d != widgetRun) {
                    jMax = Math.max(jMax, d(dependencyNode2, ((long) dependencyNode2.f6607f) + j10));
                }
            }
        }
        if (dependencyNode != widgetRun.f6621h) {
            return jMax;
        }
        long j11 = j10 + widgetRun.j();
        return Math.max(Math.max(jMax, d(widgetRun.f6622i, j11)), j11 - ((long) widgetRun.f6622i.f6607f));
    }

    public void a(WidgetRun widgetRun) {
        this.f6663e.add(widgetRun);
        this.f6662d = widgetRun;
    }

    public long b(androidx.constraintlayout.core.widgets.d dVar, int i10) {
        long j10;
        int i11;
        WidgetRun widgetRun = this.f6661c;
        if (widgetRun instanceof c) {
            if (((c) widgetRun).f6619f != i10) {
                return 0L;
            }
        } else if (i10 == 0) {
            if (!(widgetRun instanceof j)) {
                return 0L;
            }
        } else if (!(widgetRun instanceof l)) {
            return 0L;
        }
        DependencyNode dependencyNode = (i10 == 0 ? dVar.f6555e : dVar.f6557f).f6621h;
        DependencyNode dependencyNode2 = (i10 == 0 ? dVar.f6555e : dVar.f6557f).f6622i;
        boolean zContains = widgetRun.f6621h.f6613l.contains(dependencyNode);
        boolean zContains2 = this.f6661c.f6622i.f6613l.contains(dependencyNode2);
        long j11 = this.f6661c.j();
        if (zContains && zContains2) {
            long jD = d(this.f6661c.f6621h, 0L);
            long jC = c(this.f6661c.f6622i, 0L);
            long j12 = jD - j11;
            WidgetRun widgetRun2 = this.f6661c;
            int i12 = widgetRun2.f6622i.f6607f;
            if (j12 >= (-i12)) {
                j12 += (long) i12;
            }
            int i13 = widgetRun2.f6621h.f6607f;
            long j13 = ((-jC) - j11) - ((long) i13);
            if (j13 >= i13) {
                j13 -= (long) i13;
            }
            float fS = widgetRun2.f6615b.s(i10);
            float f10 = fS > 0.0f ? (long) ((j13 / fS) + (j12 / (1.0f - fS))) : 0L;
            long j14 = ((long) ((f10 * fS) + 0.5f)) + j11 + ((long) ((f10 * (1.0f - fS)) + 0.5f));
            WidgetRun widgetRun3 = this.f6661c;
            j10 = ((long) widgetRun3.f6621h.f6607f) + j14;
            i11 = widgetRun3.f6622i.f6607f;
        } else {
            if (zContains) {
                DependencyNode dependencyNode3 = this.f6661c.f6621h;
                return Math.max(d(dependencyNode3, dependencyNode3.f6607f), ((long) this.f6661c.f6621h.f6607f) + j11);
            }
            if (zContains2) {
                DependencyNode dependencyNode4 = this.f6661c.f6622i;
                return Math.max(-c(dependencyNode4, dependencyNode4.f6607f), ((long) (-this.f6661c.f6622i.f6607f)) + j11);
            }
            WidgetRun widgetRun4 = this.f6661c;
            j10 = ((long) widgetRun4.f6621h.f6607f) + widgetRun4.j();
            i11 = this.f6661c.f6622i.f6607f;
        }
        return j10 - ((long) i11);
    }
}
