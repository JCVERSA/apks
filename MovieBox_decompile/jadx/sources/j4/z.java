package j4;

import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

public interface z {

    public static final class a {
        public static void a(z zVar, String id2, Set tags) {
            Intrinsics.h(id2, "id");
            Intrinsics.h(tags, "tags");
            Iterator it = tags.iterator();
            while (it.hasNext()) {
                zVar.a(new y((String) it.next(), id2));
            }
        }
    }

    void a(y yVar);

    List b(String str);

    void c(String str);

    void d(String str, Set set);
}
