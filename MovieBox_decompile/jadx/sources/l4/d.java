package l4;

import androidx.work.j;
import j4.i;
import j4.o;
import j4.u;
import j4.x;
import j4.z;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public abstract class d {

    private static final String f65636a;

    static {
        String strI = j.i("DiagnosticsWrkr");
        Intrinsics.g(strI, "tagWithPrefix(\"DiagnosticsWrkr\")");
        f65636a = strI;
    }

    private static final String c(u uVar, String str, Integer num, String str2) {
        return '\n' + uVar.f62987a + "\t " + uVar.f62989c + "\t " + num + "\t " + uVar.f62988b.name() + "\t " + str + "\t " + str2 + '\t';
    }

    public static final String d(o oVar, z zVar, j4.j jVar, List list) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            u uVar = (u) it.next();
            i iVarA = jVar.a(x.a(uVar));
            sb2.append(c(uVar, CollectionsKt.s0(oVar.a(uVar.f62987a), ",", null, null, 0, null, null, 62, null), iVarA != null ? Integer.valueOf(iVarA.f62960c) : null, CollectionsKt.s0(zVar.b(uVar.f62987a), ",", null, null, 0, null, null, 62, null)));
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
