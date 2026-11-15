package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class j implements gw4 {
    public static ArrayList d = new ArrayList(Arrays.asList("ar"));
    public boolean a;
    public boolean b;
    public String c;

    public static List a(boolean z, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            j jVar = new j();
            jVar.c = str;
            jVar.a = d.contains(str);
            arrayList.add(jVar);
        }
        return arrayList;
    }

    @Override
    public String displayText() {
        return this.c;
    }

    @Override
    public boolean isCheck() {
        return this.b;
    }

    @Override
    public void setCheck(boolean z) {
        this.b = z;
    }
}
