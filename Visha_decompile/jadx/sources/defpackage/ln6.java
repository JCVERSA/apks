package defpackage;

import android.graphics.Path;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

public class ln6 implements by7, sj4 {
    public final String d;
    public final MergePaths f;
    public final Path a = new Path();
    public final Path b = new Path();
    public final Path c = new Path();
    public final List e = new ArrayList();

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[MergePaths.MergePathsMode.values().length];
            a = iArr;
            try {
                iArr[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public ln6(MergePaths mergePaths) {
        this.d = mergePaths.c();
        this.f = mergePaths;
    }

    @Override
    public void b(ListIterator listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            bg1 bg1Var = (bg1) listIterator.previous();
            if (bg1Var instanceof by7) {
                this.e.add((by7) bg1Var);
                listIterator.remove();
            }
        }
    }

    public final void c() {
        for (int i = 0; i < this.e.size(); i++) {
            this.c.addPath(((by7) this.e.get(i)).getPath());
        }
    }

    public final void e(Path.Op op) {
        this.b.reset();
        this.a.reset();
        for (int size = this.e.size() - 1; size >= 1; size--) {
            by7 by7Var = (by7) this.e.get(size);
            if (by7Var instanceof cg1) {
                cg1 cg1Var = (cg1) by7Var;
                List listK = cg1Var.k();
                for (int size2 = listK.size() - 1; size2 >= 0; size2--) {
                    Path path = ((by7) listK.get(size2)).getPath();
                    path.transform(cg1Var.l());
                    this.b.addPath(path);
                }
            } else {
                this.b.addPath(by7Var.getPath());
            }
        }
        by7 by7Var2 = (by7) this.e.get(0);
        if (by7Var2 instanceof cg1) {
            cg1 cg1Var2 = (cg1) by7Var2;
            List listK2 = cg1Var2.k();
            for (int i = 0; i < listK2.size(); i++) {
                Path path2 = ((by7) listK2.get(i)).getPath();
                path2.transform(cg1Var2.l());
                this.a.addPath(path2);
            }
        } else {
            this.a.set(by7Var2.getPath());
        }
        this.c.op(this.a, this.b, op);
    }

    @Override
    public void f(List list, List list2) {
        for (int i = 0; i < this.e.size(); i++) {
            ((by7) this.e.get(i)).f(list, list2);
        }
    }

    @Override
    public Path getPath() {
        this.c.reset();
        if (this.f.d()) {
            return this.c;
        }
        int i = a.a[this.f.b().ordinal()];
        if (i == 1) {
            c();
        } else if (i == 2) {
            e(Path.Op.UNION);
        } else if (i == 3) {
            e(Path.Op.REVERSE_DIFFERENCE);
        } else if (i == 4) {
            e(Path.Op.INTERSECT);
        } else if (i == 5) {
            e(Path.Op.XOR);
        }
        return this.c;
    }
}
