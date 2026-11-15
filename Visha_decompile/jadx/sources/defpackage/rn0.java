package defpackage;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.a;
import kotlin.reflect.jvm.internal.impl.builtins.e;

public final class rn0 {
    public static final rn0 a = new rn0();
    public static final Map b;
    public static final Map c;
    public static final Set d;
    public static final Set e;

    static {
        p54 p54Var = e.a.s;
        Pair pairA = abb.a(sn0.d(p54Var, "name"), by6.g("name"));
        Pair pairA2 = abb.a(sn0.d(p54Var, "ordinal"), by6.g("ordinal"));
        Pair pairA3 = abb.a(sn0.c(e.a.V, PlayAudioData.TAG_SIZE), by6.g(PlayAudioData.TAG_SIZE));
        o54 o54Var = e.a.Z;
        Map mapP = a.p(pairA, pairA2, pairA3, abb.a(sn0.c(o54Var, PlayAudioData.TAG_SIZE), by6.g(PlayAudioData.TAG_SIZE)), abb.a(sn0.d(e.a.g, SessionDescription.ATTR_LENGTH), by6.g(SessionDescription.ATTR_LENGTH)), abb.a(sn0.c(o54Var, "keys"), by6.g("keySet")), abb.a(sn0.c(o54Var, "values"), by6.g("values")), abb.a(sn0.c(o54Var, TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES), by6.g("entrySet")));
        b = mapP;
        Set<Map.Entry> setEntrySet = mapP.entrySet();
        ArrayList<Pair> arrayList = new ArrayList(z71.v(setEntrySet, 10));
        for (Map.Entry entry : setEntrySet) {
            arrayList.add(new Pair(((o54) entry.getKey()).g(), entry.getValue()));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Pair pair : arrayList) {
            by6 by6Var = (by6) pair.getSecond();
            Object arrayList2 = linkedHashMap.get(by6Var);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(by6Var, arrayList2);
            }
            ((List) arrayList2).add((by6) pair.getFirst());
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(ky5.g(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry2.getKey(), i81.e0((Iterable) entry2.getValue()));
        }
        c = linkedHashMap2;
        Set setKeySet = b.keySet();
        d = setKeySet;
        Set set = setKeySet;
        ArrayList arrayList3 = new ArrayList(z71.v(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            arrayList3.add(((o54) it.next()).g());
        }
        e = i81.g1(arrayList3);
    }

    public final Map a() {
        return b;
    }

    public final List b(by6 by6Var) {
        y45.j(by6Var, "name1");
        List list = (List) c.get(by6Var);
        return list == null ? y71.k() : list;
    }

    public final Set c() {
        return d;
    }

    public final Set d() {
        return e;
    }
}
