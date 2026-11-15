package androidx.room.util;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class SchemaInfoUtilKt {

    private static final String[] f14454a = {"tokenize=", "compress=", "content=", "languageid=", "matchinfo=", "notindexed=", "order=", "prefix=", "uncompress="};

    public static final int a(String str) {
        if (str == null) {
            return 5;
        }
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        if (StringsKt.c0(upperCase, "INT", false, 2, null)) {
            return 3;
        }
        if (StringsKt.c0(upperCase, "CHAR", false, 2, null) || StringsKt.c0(upperCase, "CLOB", false, 2, null) || StringsKt.c0(upperCase, "TEXT", false, 2, null)) {
            return 2;
        }
        if (StringsKt.c0(upperCase, "BLOB", false, 2, null)) {
            return 5;
        }
        return (StringsKt.c0(upperCase, "REAL", false, 2, null) || StringsKt.c0(upperCase, "FLOA", false, 2, null) || StringsKt.c0(upperCase, "DOUB", false, 2, null)) ? 4 : 1;
    }

    private static final Map b(y3.b bVar, String str) throws Exception {
        y3.e eVarF0 = bVar.F0("PRAGMA table_info(`" + str + "`)");
        try {
            String str2 = null;
            if (!eVarF0.C0()) {
                Map mapH = MapsKt.h();
                AutoCloseableKt.a(eVarF0, null);
                return mapH;
            }
            int iA = i.a(eVarF0, "name");
            int iA2 = i.a(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iA3 = i.a(eVarF0, "notnull");
            int iA4 = i.a(eVarF0, "pk");
            int iA5 = i.a(eVarF0, "dflt_value");
            Map mapC = MapsKt.c();
            while (true) {
                String strQ0 = eVarF0.q0(iA);
                mapC.put(strQ0, new m.a(strQ0, eVarF0.q0(iA2), eVarF0.getLong(iA3) != 0, (int) eVarF0.getLong(iA4), eVarF0.isNull(iA5) ? str2 : eVarF0.q0(iA5), 2));
                if (!eVarF0.C0()) {
                    Map mapB = MapsKt.b(mapC);
                    AutoCloseableKt.a(eVarF0, null);
                    return mapB;
                }
                str2 = null;
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }

    private static final List c(y3.e eVar) {
        int iA = i.a(eVar, "id");
        int iA2 = i.a(eVar, "seq");
        int iA3 = i.a(eVar, "from");
        int iA4 = i.a(eVar, "to");
        List listC = CollectionsKt.c();
        while (eVar.C0()) {
            listC.add(new e((int) eVar.getLong(iA), (int) eVar.getLong(iA2), eVar.q0(iA3), eVar.q0(iA4)));
        }
        return CollectionsKt.H0(CollectionsKt.a(listC));
    }

    private static final Set d(y3.b bVar, String str) throws Exception {
        y3.e eVarF0 = bVar.F0("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int iA = i.a(eVarF0, "id");
            int iA2 = i.a(eVarF0, "seq");
            int iA3 = i.a(eVarF0, "table");
            int iA4 = i.a(eVarF0, "on_delete");
            int iA5 = i.a(eVarF0, "on_update");
            List listC = c(eVarF0);
            eVarF0.reset();
            Set setB = SetsKt.b();
            while (eVarF0.C0()) {
                if (eVarF0.getLong(iA2) == 0) {
                    int i10 = (int) eVarF0.getLong(iA);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList<e> arrayList3 = new ArrayList();
                    for (Object obj : listC) {
                        if (((e) obj).d() == i10) {
                            arrayList3.add(obj);
                        }
                    }
                    for (e eVar : arrayList3) {
                        arrayList.add(eVar.b());
                        arrayList2.add(eVar.e());
                    }
                    setB.add(new m.c(eVarF0.q0(iA3), eVarF0.q0(iA4), eVarF0.q0(iA5), arrayList, arrayList2));
                }
            }
            Set setA = SetsKt.a(setB);
            AutoCloseableKt.a(eVarF0, null);
            return setA;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }

    private static final m.d e(y3.b bVar, String str, boolean z10) throws Exception {
        y3.e eVarF0 = bVar.F0("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int iA = i.a(eVarF0, "seqno");
            int iA2 = i.a(eVarF0, BidResponsedEx.KEY_CID);
            int iA3 = i.a(eVarF0, "name");
            int iA4 = i.a(eVarF0, CampaignEx.JSON_KEY_DESC);
            if (iA != -1 && iA2 != -1 && iA3 != -1 && iA4 != -1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                while (eVarF0.C0()) {
                    if (((int) eVarF0.getLong(iA2)) >= 0) {
                        int i10 = (int) eVarF0.getLong(iA);
                        String strQ0 = eVarF0.q0(iA3);
                        String str2 = eVarF0.getLong(iA4) > 0 ? "DESC" : "ASC";
                        linkedHashMap.put(Integer.valueOf(i10), strQ0);
                        linkedHashMap2.put(Integer.valueOf(i10), str2);
                    }
                }
                List listI0 = CollectionsKt.I0(linkedHashMap.entrySet(), new Comparator() {
                    @Override
                    public final int compare(T t10, T t11) {
                        return ComparisonsKt.d((Integer) ((Map.Entry) t10).getKey(), (Integer) ((Map.Entry) t11).getKey());
                    }
                });
                ArrayList arrayList = new ArrayList(CollectionsKt.v(listI0, 10));
                Iterator it = listI0.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Map.Entry) it.next()).getValue());
                }
                List listR0 = CollectionsKt.R0(arrayList);
                List listI1 = CollectionsKt.I0(linkedHashMap2.entrySet(), new Comparator() {
                    @Override
                    public final int compare(T t10, T t11) {
                        return ComparisonsKt.d((Integer) ((Map.Entry) t10).getKey(), (Integer) ((Map.Entry) t11).getKey());
                    }
                });
                ArrayList arrayList2 = new ArrayList(CollectionsKt.v(listI1, 10));
                Iterator it2 = listI1.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) ((Map.Entry) it2.next()).getValue());
                }
                m.d dVar = new m.d(str, z10, listR0, CollectionsKt.R0(arrayList2));
                AutoCloseableKt.a(eVarF0, null);
                return dVar;
            }
            AutoCloseableKt.a(eVarF0, null);
            return null;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }

    private static final Set f(y3.b bVar, String str) throws Exception {
        y3.e eVarF0 = bVar.F0("PRAGMA index_list(`" + str + "`)");
        try {
            int iA = i.a(eVarF0, "name");
            int iA2 = i.a(eVarF0, "origin");
            int iA3 = i.a(eVarF0, "unique");
            if (iA != -1 && iA2 != -1 && iA3 != -1) {
                Set setB = SetsKt.b();
                while (eVarF0.C0()) {
                    if (Intrinsics.c("c", eVarF0.q0(iA2))) {
                        m.d dVarE = e(bVar, eVarF0.q0(iA), eVarF0.getLong(iA3) == 1);
                        if (dVarE == null) {
                            AutoCloseableKt.a(eVarF0, null);
                            return null;
                        }
                        setB.add(dVarE);
                    }
                }
                Set setA = SetsKt.a(setB);
                AutoCloseableKt.a(eVarF0, null);
                return setA;
            }
            AutoCloseableKt.a(eVarF0, null);
            return null;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }

    public static final m g(y3.b connection, String tableName) {
        Intrinsics.h(connection, "connection");
        Intrinsics.h(tableName, "tableName");
        return new m(tableName, b(connection, tableName), d(connection, tableName), f(connection, tableName));
    }
}
