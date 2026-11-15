package mz;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.tools.ant.types.u;

public class g extends a {
    private static u n(Iterator it) {
        return (u) it.next();
    }

    @Override
    protected Collection g() {
        return l(false);
    }

    protected Collection l(boolean z10) {
        List listI = i();
        if (listI.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(listI.size() * 2);
        HashSet hashSet = new HashSet(listI.size() * 2);
        Iterator it = listI.iterator();
        while (it.hasNext()) {
            Iterator it2 = n(it).iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                if (z10) {
                    next = next.toString();
                }
                if (hashSet.add(next)) {
                    arrayList.add(next);
                }
            }
        }
        return arrayList;
    }

    public String[] m() {
        if (isReference()) {
            return ((g) getCheckedRef()).m();
        }
        Collection collectionL = l(true);
        return (String[]) collectionL.toArray(new String[collectionL.size()]);
    }
}
