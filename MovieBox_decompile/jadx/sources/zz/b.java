package zz;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.script.ScriptEngineFactory;

public class b implements ScriptEngineFactory {

    private static final List f76935a;

    private static final List f76936b;

    private static final List f76937c;

    private static final a f76938d;

    static {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add("mvel");
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        f76935a = listUnmodifiableList;
        f76936b = listUnmodifiableList;
        ArrayList arrayList2 = new ArrayList(1);
        arrayList2.add("application/x-mvel");
        f76937c = Collections.unmodifiableList(arrayList2);
        f76938d = new a();
    }
}
