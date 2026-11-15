package o4;

import android.graphics.Path;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

public class l implements m, j {

    private final String f67539d;

    private final MergePaths f67541f;

    private final Path f67536a = new Path();

    private final Path f67537b = new Path();

    private final Path f67538c = new Path();

    private final List f67540e = new ArrayList();

    static class a {

        static final int[] f67542a;

        static {
            int[] iArr = new int[MergePaths.MergePathsMode.values().length];
            f67542a = iArr;
            try {
                iArr[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f67542a[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f67542a[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f67542a[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f67542a[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public l(MergePaths mergePaths) {
        this.f67539d = mergePaths.c();
        this.f67541f = mergePaths;
    }

    private void a() {
        for (int i10 = 0; i10 < this.f67540e.size(); i10++) {
            this.f67538c.addPath(((m) this.f67540e.get(i10)).getPath());
        }
    }

    private void c(Path.Op op2) {
        this.f67537b.reset();
        this.f67536a.reset();
        for (int size = this.f67540e.size() - 1; size >= 1; size--) {
            m mVar = (m) this.f67540e.get(size);
            if (mVar instanceof d) {
                d dVar = (d) mVar;
                List listK = dVar.k();
                for (int size2 = listK.size() - 1; size2 >= 0; size2--) {
                    Path path = ((m) listK.get(size2)).getPath();
                    path.transform(dVar.l());
                    this.f67537b.addPath(path);
                }
            } else {
                this.f67537b.addPath(mVar.getPath());
            }
        }
        m mVar2 = (m) this.f67540e.get(0);
        if (mVar2 instanceof d) {
            d dVar2 = (d) mVar2;
            List listK2 = dVar2.k();
            for (int i10 = 0; i10 < listK2.size(); i10++) {
                Path path2 = ((m) listK2.get(i10)).getPath();
                path2.transform(dVar2.l());
                this.f67536a.addPath(path2);
            }
        } else {
            this.f67536a.set(mVar2.getPath());
        }
        this.f67538c.op(this.f67536a, this.f67537b, op2);
    }

    @Override
    public void b(List list, List list2) {
        for (int i10 = 0; i10 < this.f67540e.size(); i10++) {
            ((m) this.f67540e.get(i10)).b(list, list2);
        }
    }

    @Override
    public void g(ListIterator listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            c cVar = (c) listIterator.previous();
            if (cVar instanceof m) {
                this.f67540e.add((m) cVar);
                listIterator.remove();
            }
        }
    }

    @Override
    public Path getPath() {
        this.f67538c.reset();
        if (this.f67541f.d()) {
            return this.f67538c;
        }
        int i10 = a.f67542a[this.f67541f.b().ordinal()];
        if (i10 == 1) {
            a();
        } else if (i10 == 2) {
            c(Path.Op.UNION);
        } else if (i10 == 3) {
            c(Path.Op.REVERSE_DIFFERENCE);
        } else if (i10 == 4) {
            c(Path.Op.INTERSECT);
        } else if (i10 == 5) {
            c(Path.Op.XOR);
        }
        return this.f67538c;
    }
}
