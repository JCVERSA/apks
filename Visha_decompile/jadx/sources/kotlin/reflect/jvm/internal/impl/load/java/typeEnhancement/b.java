package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import androidx.exifinterface.media.ExifInterface;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.abb;
import defpackage.be8;
import defpackage.e74;
import defpackage.hi;
import defpackage.ky5;
import defpackage.mz4;
import defpackage.vbb;
import defpackage.wn8;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

public final class b {
    public final Map a = new LinkedHashMap();

    public final class a {
        public final String a;
        public final b b;

        public final class C0388a {
            public final String a;
            public final List b;
            public Pair c;
            public final a d;

            public C0388a(a aVar, String str) {
                y45.j(str, "functionName");
                this.d = aVar;
                this.a = str;
                this.b = new ArrayList();
                this.c = abb.a(ExifInterface.GPS_MEASUREMENT_INTERRUPTED, null);
            }

            public final Pair a() {
                SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
                String strB = this.d.b();
                String str = this.a;
                List list = this.b;
                ArrayList arrayList = new ArrayList(z71.v(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Pair) it.next()).getFirst());
                }
                String strK = signatureBuildingComponents.k(strB, signatureBuildingComponents.j(str, arrayList, (String) this.c.getFirst()));
                vbb vbbVar = (vbb) this.c.getSecond();
                List list2 = this.b;
                ArrayList arrayList2 = new ArrayList(z71.v(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((vbb) ((Pair) it2.next()).getSecond());
                }
                return abb.a(strK, new be8(vbbVar, arrayList2));
            }

            public final void b(String str, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a... aVarArr) {
                vbb vbbVar;
                y45.j(str, "type");
                y45.j(aVarArr, "qualifiers");
                List list = this.b;
                if (aVarArr.length == 0) {
                    vbbVar = null;
                } else {
                    Iterable<mz4> iterableQ1 = hi.q1(aVarArr);
                    LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(iterableQ1, 10)), 16));
                    for (mz4 mz4Var : iterableQ1) {
                        linkedHashMap.put(Integer.valueOf(mz4Var.c()), (kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a) mz4Var.d());
                    }
                    vbbVar = new vbb(linkedHashMap);
                }
                list.add(abb.a(str, vbbVar));
            }

            public final void c(String str, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a... aVarArr) {
                y45.j(str, "type");
                y45.j(aVarArr, "qualifiers");
                Iterable<mz4> iterableQ1 = hi.q1(aVarArr);
                LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(iterableQ1, 10)), 16));
                for (mz4 mz4Var : iterableQ1) {
                    linkedHashMap.put(Integer.valueOf(mz4Var.c()), (kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a) mz4Var.d());
                }
                this.c = abb.a(str, new vbb(linkedHashMap));
            }

            public final void d(JvmPrimitiveType jvmPrimitiveType) {
                y45.j(jvmPrimitiveType, "type");
                String desc = jvmPrimitiveType.getDesc();
                y45.i(desc, "type.desc");
                this.c = abb.a(desc, null);
            }
        }

        public a(b bVar, String str) {
            y45.j(str, TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME);
            this.b = bVar;
            this.a = str;
        }

        public final void a(String str, e74 e74Var) {
            y45.j(str, "name");
            y45.j(e74Var, "block");
            Map map = this.b.a;
            C0388a c0388a = new C0388a(this, str);
            e74Var.invoke(c0388a);
            Pair pairA = c0388a.a();
            map.put(pairA.getFirst(), pairA.getSecond());
        }

        public final String b() {
            return this.a;
        }
    }

    public final Map b() {
        return this.a;
    }
}
