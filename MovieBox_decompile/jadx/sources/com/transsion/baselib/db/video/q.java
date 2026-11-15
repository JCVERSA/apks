package com.transsion.baselib.db.video;

import androidx.room.RoomDatabase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class q implements UGCCollectionVideoGroupDao {

    private final RoomDatabase f42065a;

    private final ri.b f42067c = new ri.b();

    private final androidx.room.g f42066b = new a();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `ugc_collection_video_group` (`collectionId`,`ugcVideoIds`) VALUES (?,?)";
        }

        @Override
        public void a(y3.e eVar, UGCCollectionVideoGroup uGCCollectionVideoGroup) {
            if (uGCCollectionVideoGroup.getCollectionId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, uGCCollectionVideoGroup.getCollectionId());
            }
            String strA = q.this.f42067c.a(uGCCollectionVideoGroup.getUgcVideoIds());
            if (strA == null) {
                eVar.g(2);
            } else {
                eVar.i(2, strA);
            }
        }
    }

    public q(RoomDatabase roomDatabase) {
        this.f42065a = roomDatabase;
    }

    public static List j() {
        return Collections.emptyList();
    }

    public List k(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ugc_collection_video_group");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoIds");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = null;
                String strQ1 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                if (!eVarF0.isNull(iC2)) {
                    strQ0 = eVarF0.q0(iC2);
                }
                arrayList.add(new UGCCollectionVideoGroup(strQ1, this.f42067c.b(strQ0)));
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public UGCCollectionVideoGroup l(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ugc_collection_video_group WHERE collectionId = ? LIMIT 1");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoIds");
            UGCCollectionVideoGroup uGCCollectionVideoGroup = null;
            String strQ0 = null;
            if (eVarF0.C0()) {
                String strQ1 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                if (!eVarF0.isNull(iC2)) {
                    strQ0 = eVarF0.q0(iC2);
                }
                uGCCollectionVideoGroup = new UGCCollectionVideoGroup(strQ1, this.f42067c.b(strQ0));
            }
            eVarF0.close();
            return uGCCollectionVideoGroup;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit m(UGCCollectionVideoGroup uGCCollectionVideoGroup, y3.b bVar) throws Exception {
        this.f42066b.d(bVar, uGCCollectionVideoGroup);
        return Unit.f64096a;
    }

    @Override
    public Object a(String str, List list, Continuation continuation) {
        return UGCCollectionVideoGroupDao.DefaultImpls.a(this, str, list, continuation);
    }

    @Override
    public Object b(final UGCCollectionVideoGroup uGCCollectionVideoGroup, Continuation continuation) {
        uGCCollectionVideoGroup.getClass();
        return androidx.room.util.b.f(this.f42065a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42061a.m(uGCCollectionVideoGroup, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(String str, Continuation continuation) {
        return UGCCollectionVideoGroupDao.DefaultImpls.b(this, str, continuation);
    }

    @Override
    public Object d(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42065a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42057a.l(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(Continuation continuation) {
        return androidx.room.util.b.f(this.f42065a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42054a.k((y3.b) obj);
            }
        }, continuation);
    }
}
