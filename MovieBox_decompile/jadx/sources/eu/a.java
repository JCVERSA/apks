package eu;

import com.transsion.transfer.impl.entity.FileData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f59815a = new a();

    private static final List f59816b = new ArrayList();

    private a() {
    }

    private final List c(int i10) {
        List list = f59816b;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((FileData) obj).getState() == i10) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt.U0(arrayList);
    }

    public final void a(List data) {
        Object next;
        Intrinsics.h(data, "data");
        Iterator it = data.iterator();
        while (it.hasNext()) {
            FileData fileData = (FileData) it.next();
            Iterator it2 = f59816b.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!Intrinsics.c(((FileData) next).getFileRemotePath(), fileData.getFileRemotePath()));
            if (next == null) {
                f59816b.add(fileData);
            }
        }
    }

    public final void b() {
        f59816b.clear();
    }

    public final List d() {
        return f59816b;
    }

    public final List e() {
        return CollectionsKt.U0(CollectionsKt.B0(c(3), c(5)));
    }

    public final List f() {
        return CollectionsKt.U0(c(2));
    }

    public final List g() {
        return CollectionsKt.U0(c(0));
    }

    public final boolean h() {
        return f59816b.isEmpty();
    }
}
